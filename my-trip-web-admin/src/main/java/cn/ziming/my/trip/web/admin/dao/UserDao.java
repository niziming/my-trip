package cn.ziming.my.trip.web.admin.dao;

import cn.ziming.my.trip.domain.User;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

@Repository
public interface UserDao {
	/**
	 * 查询所有
	 *
	 * @return List<User>
	 * @throws SQLException
	 */
	List<User> selectAll();

	/**
	 * 新增用户
	 * @param user
	 */
	void insert(User user);

    /**
     * 根据uid删除用户
     * @param uid
     */
	void delete(Long uid);

    /**
     * 根据uid查询单个用户
     * @param uid
     * @return
     */
	User getUserByUid(Long uid);

    /**
     * 更新用户信息
     * @param user
     */
	void updataUserInfo(User user);

    /**
     * 模糊查询
     */
	List<User> selectUsersByName(String uname);

    /**
     * 根据邮箱和密码获取用户对象
     * 可用于登陆
     * @param user
     * @return User
     */
	User getUserByEmailAndPwd(User user);

    /**
     * 使用 foreach 标签以 list 自定义类型的形式查询
     * @param users
     * @return
     */
    List<User> search(User users);
}
