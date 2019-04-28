package cn.ziming.my.trip.web.admin.service;

import cn.ziming.my.trip.commons.dto.BaseResult.BaseResult;
import cn.ziming.my.trip.domain.User;

import java.util.List;

public interface UserService {

    //查询所有用户
    List<User> selectAll();

    //新增用户
    BaseResult save(User user);

    //删除用户
    void delete(int uid);

    //查询单个用户,根据uid
    User getUser(int uid);

    //更新用户信息,根据user.uid
    void updataUserInfo(User user);

    //模糊查询
    List<User> selectUsersByName(String uname);

    //根据邮箱和密码获取用户对象,可用于登陆
    User login(String email, String pwd);
}
