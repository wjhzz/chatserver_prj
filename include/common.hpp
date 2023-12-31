#ifndef _COMMON_H
#define _COMMON_H

enum EnMsgType
{
    LOGIN_MSG = 1,        // 登录消息
    LOGIN_MSG_ACK,        // 登录响应消息
    LOGOUT_MSG,           // 注销消息
    REG_MSG,              // 注册消息
    REG_MSG_ACK,          // 注册响应消息
    ADD_FRIEND_MSG,       // 添加好友消息
    ADD_FRIEND_MSG_ACK,   // 添加好友消息响应
    CREATE_GROUP_MSG,     // 创建群组
    CREATE_GROUP_MSG_ACK, // 创建群组响应
    ADD_GROUP_MSG,        // 加入群组
    ADD_GROUP_MSG_ACK,    // 加入群组响应
    ONE_CHAT_MSG,         // 聊天消息
    GROUP_CHAT_MSG,       // 群聊天
};

#endif