package cn.ziming.my.trip.web.admin.service;

import cn.ziming.my.trip.domain.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;


@RunWith(SpringJUnit4ClassRunner.class)
//配置文件
@ContextConfiguration({"classpath:spring-context.xml", "classpath:spring-context-druid.xml", "classpath:spring-context-mybatis.xml"})
public class UserServiceTest {
    @Autowired
    private UserService userService;
    @Test
    public void selectAll() {
        List<User> users = userService.selectAll();
        for (User user : users){
            System.out.println(user);
        }
    }

    @Test
    public void testInsert() {
        User user = new User();
        user.setEmail("testUserRegDate@turd.com");
        user.setPwd("testpwd");
        user.setRegDate();
        userService.save(user);
    }

    @Test
    public void delete() {
        userService.delete(5);
    }

    @Test
    public void testGetUser() {
        User user = userService.getUser(9);
        System.out.println(user);
    }

    @Test
    public void testUpdataUserInfo() {
        User user = userService.getUser(9);
        System.out.println(user);
        user.setUname("UpdatInfo");
        user.setEmail("test@text.com");
        user.setPwd("test");
        System.out.println(user);
        userService.updataUserInfo(user);
        System.out.println(user);
    }

    @Test
    public void testSelectUsersByUsername() {
        String uname = "username";
        List<User> users = userService.selectUsersByName(uname);
        for (User user : users){
            System.out.println(user);
        }
    }

    @Test
    public void getUserByEmailAndPwd() {
        String email = "ziming@admin.com";
        String pwd = "admin";
        User user = userService.login(email, pwd);
        System.out.println(user.getUid());

    }

    @Test
    public void login() {
        User login = userService.login("asd", "sdf");
        System.out.println(login);
    }

}