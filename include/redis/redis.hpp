#ifndef _REDIS_H
#define _REDIS_H

#include <hiredis/hiredis.h>
#include <functional>
#include <thread>

class Redis
{
public:
    Redis() : _publish_context(nullptr), _subcribe_context(nullptr) {}
    ~Redis()
    {
        if (_publish_context != nullptr)
        {
            redisFree(_publish_context);
        }

        if (_subcribe_context != nullptr)
        {
            redisFree(_subcribe_context);
        }
    }

    // 连接redis服务器
    bool connect(std::string ip = "127.0.0.1", int port = 6379);

    // 向redis指定的通道channel发布消息
    bool publish(int channel, std::string message);

    // 向redis指定的通道subscribe订阅消息
    bool subscribe(int channel);

    // 向redis指定的通道unsubscribe取消订阅消息
    bool unsubscribe(int channel);

    // 在独立线程中接收订阅通道中的消息
    void observer_channel_message();

    // 初始化向业务层上报通道消息的回调对象
    void set_notify_handler(std::function<void(int, std::string)> fn)
    {
        this->_notify_message_handler = fn;
    }

private:
    // hiredis同步上下文对象，负责publish消息
    redisContext *_publish_context;

    // hiredis同步上下文对象，负责subscribe消息
    redisContext *_subcribe_context;

    // 回调操作，收到订阅的消息，给service层上报
    std::function<void(int, std::string)> _notify_message_handler;
};

#endif