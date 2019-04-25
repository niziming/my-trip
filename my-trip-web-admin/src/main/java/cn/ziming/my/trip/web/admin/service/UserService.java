package cn.ziming.my.trip.web.admin.service;

import cn.ziming.my.trip.domain.User;

import java.sql.SQLException;
import java.util.List;

public interface UserService {
    User login(String email, String pwd) throws SQLException;

    //查询所有用户
    List<User> selectAll();

    //插入用户
    void insert(User user);

    //删除用户
    void delete(int uid);

    //查询单个用户,根据uid
    User getUser(int uid);

    //更新用户信息,根据user.uid
    void updataUserInfo(User user);

    //模糊查询
    List<User> selectUsersByName(String uname);
}
