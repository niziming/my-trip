package cn.ziming.my.trip.web.admin.service.impl;

import cn.ziming.my.trip.domain.User;
import cn.ziming.my.trip.web.admin.dao.UserDao;
import cn.ziming.my.trip.web.admin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	public List<User> selectAll() {
		return userDao.selectAll();
	}

    @Override
    public void save(User user) {
	    //新增用户
	    if (user.getUid() == null){
	        user.setRegDate();
            userDao.insert(user);
        }
        //编辑用户
        else {
            userDao.updataUserInfo(user);
        }
        userDao.insert(user);
    }

    @Override
    public void delete(int uid) {
        userDao.delete(uid);
    }


    @Override
    public User getUser(int uid) {
        return userDao.getUser(uid);
    }

    @Override
    public void updataUserInfo(User user) {
        userDao.updataUserInfo(user);
    }

    /**
     * 用户名模糊查询
     * @return List<User>
     */
    @Override
    public List<User> selectUsersByName(String uname) {
        return userDao.selectUsersByName(uname);
    }

    @Override
    public User login(String email, String pwd) {
        User user = userDao.getUserByEmailAndPwd(new User(email, pwd));
        return user;
    }

    @Override
    public boolean chececkUser(User user) {
        User userByEmailAndPwd = userDao.getUserByEmailAndPwd(user);
        if (userByEmailAndPwd.getUid() == null){
            System.out.println("此用户不存在");
            return true;
        }else {
            System.out.println("此用户已存在");
            return false;
        }
    }
}
