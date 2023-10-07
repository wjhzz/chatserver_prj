#include "redis.hpp"
#include <muduo/base/Logging.h>

// 在独立线程中接收订阅通道中的消息
void Redis::observer_channel_message()
{
    redisReply *reply = nullptr;
    while (REDIS_OK == redisGetReply(this->_subcribe_context, (void **)&reply))
    {
        // 订阅收到的消息是一个带三元素的数组
        if (reply != nullptr && reply->element[2] != nullptr && reply->element[2]->str != nullptr)
        {
            // 给业务层上报通道上发生的消息 [userid, message]
            _notify_message_handler(atoi(reply->element[1]->str), reply->element[2]->str);
        }

        freeReplyObject(reply);
    }

    LOG_WARN << ">>>>>>>>>>>>> observer_channel_message quit <<<<<<<<<<<<<";
}

bool Redis::connect(std::string ip, int port)
{
    // 负责publish发布消息的上下文连接
    _publish_context = redisConnect(ip.c_str(), port);
    if (nullptr == _publish_context)
    {
        LOG_ERROR << "connect redis failed!";
        return false;
    }

    // 负责subscribe订阅消息的上下文连接
    _subcribe_context = redisConnect(ip.c_str(), port);
    if (nullptr == _subcribe_context)
    {
        LOG_ERROR << "connect redis failed!";
        return false;
    }

    // 在单独的线程中，监听通道上的事件，有消息给业务层进行上报
    std::thread t([&]()
                  { observer_channel_message(); });
    t.detach();

    LOG_INFO << "connect redis-server success!";

    return true;
}

// 向redis指定的通道channel发布消息
// 项目中 channel = userid
bool Redis::publish(int channel, std::string message)
{
    redisReply *reply = (redisReply *)redisCommand(_publish_context, "PUBLISH %d %s", channel, message.c_str());
    if (nullptr == reply)
    {
        LOG_ERROR << "publish command failed!";
        return false;
    }
    freeReplyObject(reply);
    return true;
}

// 向redis指定的通道subscribe订阅消息
// 项目中 channel = userid
bool Redis::subscribe(int channel)
{
    // SUBSCRIBE命令本身会造成线程阻塞等待通道里面发生消息，这里只做订阅通道，不接收通道消息
    // 通道消息的接收专门在observer_channel_message函数中的独立线程中进行
    // 只负责发送命令，不阻塞接收redis server响应消息，否则和notifyMsg线程抢占响应资源
    if (REDIS_ERR == redisAppendCommand(this->_subcribe_context, "SUBSCRIBE %d", channel))
    {
        LOG_ERROR << "subscribe command failed!";
        return false;
    }
    // redisBufferWrite可以循环发送缓冲区，直到缓冲区数据发送完毕（done被置为1）
    int done = 0;
    while (!done)
    {
        if (REDIS_ERR == redisBufferWrite(this->_subcribe_context, &done))
        {
            LOG_ERROR << "subscribe command failed!";
            return false;
        }
    }
    // redisGetReply

    return true;
}

// 向redis指定的通道unsubscribe取消订阅消息
bool Redis::unsubscribe(int channel)
{
    if (REDIS_ERR == redisAppendCommand(this->_subcribe_context, "UNSUBSCRIBE %d", channel))
    {
        LOG_ERROR << "unsubscribe command failed!";
        return false;
    }
    // redisBufferWrite可以循环发送缓冲区，直到缓冲区数据发送完毕（done被置为1）
    int done = 0;
    while (!done)
    {
        if (REDIS_ERR == redisBufferWrite(this->_subcribe_context, &done))
        {
            LOG_ERROR << "unsubscribe command failed!";
            return false;
        }
    }
    return true;
}