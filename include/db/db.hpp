#ifndef _DB_H
#define _DB_H

#include <mysql/mysql.h>
#include <muduo/base/Logging.h>
#include <string>
using namespace std;

// 数据库操作类
class MySQL
{
public:
    // 初始化数据库连接
    MySQL()
    {
        _conn = mysql_init(nullptr);
    }
    // 释放数据库连接资源
    ~MySQL()
    {
        if (_conn != nullptr)
            mysql_close(_conn);
    }
    // 连接数据库
    bool connect(const string server = "127.0.0.1",
                 const string user = "root",
                 const string password = "123456",
                 const string dbname = "chat",
                 int port = 3306)
    {
        MYSQL *p = mysql_real_connect(_conn, server.c_str(), user.c_str(),
                                      password.c_str(), dbname.c_str(), port, nullptr, 0);
        if (p != nullptr)
        {
            // C和C++代码默认的编码字符是ASCII，如果不设置，从MySQL上拉下来的中文显示？
            mysql_query(_conn, "set names gbk");
            LOG_INFO << "connect mysql success!";
        }
        else
        {
            LOG_INFO << "connect mysql fail!";
        }

        return p;
    }
    // 更新操作
    bool update(string sql)
    {
        if (mysql_query(_conn, sql.c_str()))
        {
            LOG_INFO << __FILE__ << ":" << __LINE__ << ":"
                     << sql << "update failed!";
            return false;
        }

        return true;
    }
    // 查询操作
    MYSQL_RES *query(string sql)
    {
        if (mysql_query(_conn, sql.c_str()))
        {
            LOG_INFO << __FILE__ << ":" << __LINE__ << ":"
                     << sql << "query failed!";
            return nullptr;
        }

        return mysql_use_result(_conn);
    }
    // 获取连接
    MYSQL *getConnection()
    {
        return _conn;
    }

private:
    MYSQL *_conn;
};

#endif