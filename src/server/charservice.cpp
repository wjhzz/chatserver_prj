#include "chatservice.hpp"
#include <muduo/base/Logging.h>

MsgHandler ChatService::getHandler(int msgID)
{
    auto it = _map.find(msgID);
    if (it == _map.end())
    {
        // 返回一个默认的处理器，空操作
        return [msgID](const TcpConnectionPtr &conn, json &js, Timestamp)
        {
            LOG_ERROR << "msgid:" << msgID << " can not find handler!";
        };
    }
    return it->second;
}
// 登录
void ChatService::login(const TcpConnectionPtr &conn, json &js, Timestamp time)
{
    int id = js["id"].get<int>();
    string pwd = js["password"];

    User user = _userModel.query(id);
    if (user.getId() == id && user.getPwd() == pwd)
    {
        if (user.getState() == "online")
        {
            // 该用户已经登录，不允许重复登录
            json response;
            response["msgid"] = LOGIN_MSG_ACK;
            response["errno"] = 2;
            response["errmsg"] = "this account is using, input another!";
            conn->send(response.dump());
        }
        else
        {
            // 登录成功，记录用户连接信息
            {
                lock_guard<mutex> lock(_connMutex);
                _userConnMap.insert({id, conn});
            }

            // id用户登录成功后，向redis订阅channel(id)
            // _redis.subscribe(id);

            // 登录成功，更新用户状态信息 state offline=>online
            user.setState("online");
            _userModel.updateState(user);

            json response;
            response["msgid"] = LOGIN_MSG_ACK;
            response["errno"] = 0;
            response["id"] = user.getId();
            response["name"] = user.getName();
            // 查询该用户是否有离线消息
            // vector<string> vec = _offlineMsgModel.query(id);
            // if (!vec.empty())
            // {
            //     response["offlinemsg"] = vec;
            //     // 读取该用户的离线消息后，把该用户的所有离线消息删除掉
            //     _offlineMsgModel.remove(id);
            // }

            // 查询该用户的好友信息并返回
            // vector<User> userVec = _friendModel.query(id);
            // if (!userVec.empty())
            // {
            //     vector<string> vec2;
            //     for (User &user : userVec)
            //     {
            //         json js;
            //         js["id"] = user.getId();
            //         js["name"] = user.getName();
            //         js["state"] = user.getState();
            //         vec2.push_back(js.dump());
            //     }
            //     response["friends"] = vec2;
            // }

            // // 查询用户的群组信息
            // vector<Group> groupuserVec = _groupModel.queryGroups(id);
            // if (!groupuserVec.empty())
            // {
            //     // group:[{groupid:[xxx, xxx, xxx, xxx]}]
            //     vector<string> groupV;
            //     for (Group &group : groupuserVec)
            //     {
            //         json grpjson;
            //         grpjson["id"] = group.getId();
            //         grpjson["groupname"] = group.getName();
            //         grpjson["groupdesc"] = group.getDesc();
            //         vector<string> userV;
            //         for (GroupUser &user : group.getUsers())
            //         {
            //             json js;
            //             js["id"] = user.getId();
            //             js["name"] = user.getName();
            //             js["state"] = user.getState();
            //             js["role"] = user.getRole();
            //             userV.push_back(js.dump());
            //         }
            //         grpjson["users"] = userV;
            //         groupV.push_back(grpjson.dump());
            //     }

            //     response["groups"] = groupV;
            // }

            conn->send(response.dump());
        }
    }
    else
    {
        // 该用户不存在，用户存在但是密码错误，登录失败
        json response;
        response["msgid"] = LOGIN_MSG_ACK;
        response["errno"] = 1;
        response["errmsg"] = "id or password is invalid!";
        conn->send(response.dump());
    }
}

// 注册
void ChatService::reg(const TcpConnectionPtr &conn, json &js, Timestamp)
{
    string name = js["name"];
    string pwd = js["password"];

    User user(-1, name, pwd);
    bool state = _userModel.insert(user);
    if (state)
    {
        // 注册成功
        json response;
        response["msgid"] = REG_MSG_ACK;
        response["errno"] = 0;
        response["id"] = user.getId();
        conn->send(response.dump());
    }
    else
    {
        // 注册失败
        json response;
        response["msgid"] = REG_MSG_ACK;
        response["errno"] = 1;
        conn->send(response.dump());
    }
}

// 处理客户端异常退出
void ChatService::closeException(const TcpConnectionPtr &conn)
{
    User user;
    {
        lock_guard<mutex> lock(_connMutex);
        // TODO: 优化效率，可以再加一个conn->userid的哈希表，空间换时间
        for (auto it = _userConnMap.begin(); it != _userConnMap.end(); ++it)
        {
            if (it->second == conn)
            {
                // 从map表删除用户的链接信息
                user.setId(it->first);
                _userConnMap.erase(it);
                break;
            }
        }
    }

    // 用户注销，相当于就是下线，在redis中取消订阅通道
    // _redis.unsubscribe(user.getId());

    // 更新用户的状态信息
    if (user.getId() != -1)
    {
        user.setState("offline");
        _userModel.updateState(user);
    }
}