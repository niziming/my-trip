package cn.ziming.my.trip.web.admin.service.impl;

import cn.ziming.my.trip.commons.dto.BaseResult.BaseResult;
import cn.ziming.my.trip.domain.User;
import cn.ziming.my.trip.web.admin.dao.UserDao;
import cn.ziming.my.trip.web.admin.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public List<User> selectAll() {
        return userDao.selectAll();
    }

    @Override
    public BaseResult save(User user) {
        BaseResult baseResult = chececkUser(user);
        //通过验证
        if (baseResult.getStatus() == BaseResult.STATUS_SUCCESS){

            //新增用户
            if (user.getUid() == null){
                userDao.insert(user);
                baseResult.setMessage("新增用户成功");
            }

            //编辑用户
            else {
                userDao.updataUserInfo(user);
                baseResult.setMessage("编辑用户成功");
            }
        }
        return baseResult;
    }

    @Override
    public void delete(Long uid) {
        userDao.delete(uid);
    }


    @Override
    public User getUserByUid(Long uid) {
        return userDao.getUserByUid(uid);
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
    public List<User> search(String keywords) {
        User user = new User();
        user.setUid(keywords);
        user.setUname(keywords);
        user.setEmail(keywords);
        return userDao.search(user);
    }

    /**
     * 用户有效信息验证
     *
     * @param user
     * @return
     */
    private BaseResult chececkUser(User user) {
        BaseResult baseResult = BaseResult.success();
        //姓名不可为空
        if (StringUtils.isBlank(user.getUname())) {
            baseResult = BaseResult.fail("用户名不能为空,请重新输入!");
        }

        else if (StringUtils.isBlank(user.getEmail())){
            baseResult = BaseResult.fail("邮箱格式不正确,请重新输入!");
        }

        else if (StringUtils.isBlank(user.getPwd())){
            baseResult = BaseResult.fail("密码不能为空,请重新输入!");
        }
        return baseResult;
    }

}
