#ifndef _CHATSERVICE_H
#define _CHATSERVICE_H
#include "common.hpp"

// 数据库相关
#include "user.hpp"

#include <muduo/net/TcpConnection.h>
#include <unordered_map>
#include <mutex>
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

    void login(const TcpConnectionPtr &, json &, Timestamp);
    // 注册
    void reg(const TcpConnectionPtr &, json &, Timestamp);

    void closeException(const TcpConnectionPtr &conn);

private:
    ChatService()
    {
        _map[LOGIN_MSG] = std::bind(&ChatService::login, this, _1, _2, _3);
        _map[REG_MSG] = std::bind(&ChatService::reg, this, _1, _2, _3);
    };
    // 消息ID->处理函数
    std::unordered_map<int, MsgHandler> _map;
    // 在线用户的连接映射  userid->conn
    std::unordered_map<int, TcpConnectionPtr> _userConnMap;
    mutex _connMutex;

    // 数据操作类对象
    UserModel _userModel;
    // OfflineMsgModel _offlineMsgModel;
    // FriendModel _friendModel;
    // GroupModel _groupModel;
};

#endif