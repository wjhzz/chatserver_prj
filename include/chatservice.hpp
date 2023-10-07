#ifndef _CHATSERVICE_H
#define _CHATSERVICE_H
#include "common.hpp"

#include <muduo/net/TcpConnection.h>
#include <unordered_map>
#include <mutex>
#include "redis.hpp"
using namespace muduo;
using namespace muduo::net;

#include "json.hpp"
using json = nlohmann::json;

using MsgHandler = std::function<void(const TcpConnectionPtr &, json &, Timestamp)>;

// 服务器业务类  单例
class ChatService
{
public:
    static ChatService *instance()
    {
        static ChatService service;
        return &service;
    };

    MsgHandler getHandler(int msgID);
    // 服务器断开时将连着的用户状态置为 offline
    void reset();
    // 登录
    void login(const TcpConnectionPtr &, json &, Timestamp);
    // 注册
    void reg(const TcpConnectionPtr &, json &, Timestamp);
    // 一对一聊天
    void oneChat(const TcpConnectionPtr &, json &, Timestamp);
    // 添加好友
    void addFriend(const TcpConnectionPtr &, json &, Timestamp);
    // 创建群组
    void createGroup(const TcpConnectionPtr &, json &, Timestamp);
    // 加入群组
    void addGroup(const TcpConnectionPtr &, json &, Timestamp);
    // 群组聊天
    void groupChat(const TcpConnectionPtr &, json &, Timestamp);
    // 处理注销业务
    void logout(const TcpConnectionPtr &conn, json &js, Timestamp time);
    // 处理客户端异常退出
    void closeException(const TcpConnectionPtr &conn);
    // 处理从redis消息队列中获取订阅的消息
    void handleRedisSubscribeMessage(int, string);

private:
    ChatService()
    {
        // 业务回调
        _handlerMap[LOGIN_MSG] = std::bind(&ChatService::login, this, _1, _2, _3);
        _handlerMap[REG_MSG] = std::bind(&ChatService::reg, this, _1, _2, _3);
        _handlerMap[ONE_CHAT_MSG] = std::bind(&ChatService::oneChat, this, _1, _2, _3);
        _handlerMap[ADD_FRIEND_MSG] = std::bind(&ChatService::addFriend, this, _1, _2, _3);
        _handlerMap[CREATE_GROUP_MSG] = std::bind(&ChatService::createGroup, this, _1, _2, _3);
        _handlerMap[ADD_GROUP_MSG] = std::bind(&ChatService::addGroup, this, _1, _2, _3);
        _handlerMap[GROUP_CHAT_MSG] = std::bind(&ChatService::groupChat, this, _1, _2, _3);
        _handlerMap[LOGOUT_MSG] = std::bind(&ChatService::logout, this, _1, _2, _3);

        // 连接redis服务器
        if (_redis.connect())
        {
            // 设置上报消息的回调
            _redis.set_notify_handler(std::bind(&ChatService::handleRedisSubscribeMessage, this, _1, _2));
        }
    };
    // 消息ID->处理函数
    std::unordered_map<int, MsgHandler> _handlerMap;
    // 在线用户的连接映射  userid->conn
    std::unordered_map<int, TcpConnectionPtr> _userConnMap;
    // 保证_userConnMap的线程安全
    std::mutex _connMutex;

    // redis操作对象
    Redis _redis;
};

#endif