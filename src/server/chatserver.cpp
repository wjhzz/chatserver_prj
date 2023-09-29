#include "chatserver.hpp"
#include "chatservice.hpp"
#include "json.hpp"

using json = nlohmann::json;

void ChatServer::onConnection(const TcpConnectionPtr &conn)
{
    // 断开连接
    if (!conn->connected())
    {
        ChatService::instance()->closeException(conn);
        conn->shutdown();
    }
}

void ChatServer::onMessage(const TcpConnectionPtr &conn,
                           Buffer *buffer,
                           Timestamp time)
{
    // 数据的反序列化
    json js = json::parse(buffer->retrieveAllAsString());

    // 解耦网络模块和业务模块
    // 通过js["msgid"] 获取=>业务handler
    auto msgHandler = ChatService::instance()->getHandler(js["msgid"].get<int>());
    // 执行消息对应的处理器
    msgHandler(conn, js, time);
}