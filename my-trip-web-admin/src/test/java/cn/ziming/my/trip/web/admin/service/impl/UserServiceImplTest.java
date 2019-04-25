package cn.ziming.my.trip.web.admin.service.impl;

import cn.ziming.my.trip.domain.User;
import cn.ziming.my.trip.web.admin.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-context.xml", "classpath:spring-context-druid.xml", "classpath:spring-context-mybatis.xml"})
public class UserServiceImplTest {
	@Autowired
	private UserService userService;

	@Test
	public void testSelectAll() {
		List<User> users = userService.selectAll();
		for (User user : users) {
			System.out.println(user.getRegDate());
		}
	}

	@Test
	public void testInsert() {
		User user = new User();
		user.setEmail("testUserRegDate@turd.com");
		user.setPwd("testpwd");
		user.setRegDate();
		userService.insert(user);
	}

    @Test
    public void delete() {
        userService.delete(5);
    }

    @Test
    public void testGetUser() {
        User user = userService.getUser(9);
        System.out.println(user.toString());
    }

    @Test
    public void testUpdatInfo() {
        User user = userService.getUser(9);
        System.out.println(user.toString());
        user.setUname("testUpdatInfo");
        user.setEmail("test@text.com");
        user.setPwd("test");
        System.out.println(user.toString());
        userService.updataUserInfo(user);
        System.out.println(user.toString());
    }

    @Test
    public void testSelectUsersByUsername() {
        String uname = "username";
        List<User> users = userService.selectUsersByName(uname);
        for (User user : users){
            System.out.println(user.toString());
        }
    }
}