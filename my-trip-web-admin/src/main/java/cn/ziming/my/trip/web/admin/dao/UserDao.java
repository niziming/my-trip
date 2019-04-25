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
	void delete(int uid);

    /**
     * 根据uid查询单个用户
     * @param uid
     * @return
     */
	User getUser(int uid);

    /**
     * 更新用户信息
     * @param user
     */
	void updataUserInfo(User user);

    /**
     * 模糊查询
     */
	List<User> selectUsersByName(String uname);
}
