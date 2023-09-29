#ifndef _FRIEND_H
#define _FRIEND_H

#include "user.hpp"
#include <vector>

// 维护好友信息的操作接口方法
class FriendModel
{
public:
    // 添加好友关系
    bool insert(int userid, int friendid);

    // 返回用户好友列表
    vector<User> query(int userid);
};

#endif