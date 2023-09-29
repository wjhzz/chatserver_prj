#ifndef _USER_H
#define _USER_H

#include <string>
using namespace std;

// User表的ORM类
class User
{
public:
    User(int id = -1, string name = "", string pwd = "", string state = "offline")
        : _id(id), _name(name), _password(pwd), _state(state)
    {
    }

    void setId(int id) { this->_id = id; }
    void setName(string name) { this->_name = name; }
    void setPwd(string pwd) { this->_password = pwd; }
    void setState(string state) { this->_state = state; }

    int getId() { return this->_id; }
    string getName() { return this->_name; }
    string getPwd() { return this->_password; }
    string getState() { return this->_state; }

protected:
    int _id;
    string _name;
    string _password;
    string _state;
};

// User表的数据操作类
class UserModel
{
public:
    // User表的增加方法
    bool insert(User &user);

    // 根据用户号码查询用户信息
    User query(int id);

    // 更新用户的状态信息
    bool updateState(User user);

    // 重置用户的状态信息
    void resetState(string userids);
};

#endif