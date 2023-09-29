#ifndef _CHATSERVER_H
#define _CHATSERVER_H

#include <muduo/net/TcpServer.h>
#include <muduo/net/EventLoop.h>
using namespace muduo;
using namespace muduo::net;

// 服务器类
class ChatServer
{
public:
    ChatServer(EventLoop *loop,
               const InetAddress &listenAddr,
               const string &nameArg)
        : _server(loop, listenAddr, nameArg), _loop(loop)
    {
        _server.setConnectionCallback(std::bind(&ChatServer::onConnection, this, _1));
        _server.setMessageCallback(std::bind(&ChatServer::onMessage, this, _1, _2, _3));
        _server.setThreadNum(4);
    };

    // 启动服务
    void start()
    {
        _server.start();
    }

private:
    // 回调函数
    void onConnection(const TcpConnectionPtr &);
    void onMessage(const TcpConnectionPtr &, Buffer *, Timestamp);

    TcpServer _server;
    EventLoop *_loop;
};

#endif