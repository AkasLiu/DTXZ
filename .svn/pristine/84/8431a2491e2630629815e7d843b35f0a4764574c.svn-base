package cc.siriuscloud.dtxz.service;

import java.util.List;

import org.springframework.stereotype.Service;

import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.bean.vo.UserVo;

public interface UserService {

	
	/**
	 * 邮箱密码登录
	 * @param email
	 * @param password
	 * @return
	 */
	public User login(User user);
	
	
	/**
	 * 注册
	 * @param user
	 */
	public int register(User user);


	/**
	 * 修改基本信息
	 * 	修改的字段：nickname,sex,age
	 * @param user
	 * @return
	 */
	public int modifyBaseInfo(User user);


	/**
	 * 修改指定用户的密码
	 * @param userId
	 * @param oldpwd
	 * @param newpwd
	 * @return
	 *  	旧密码校验错误： -1
	 *  	更新失败： 0
	 *  	成功 ：1
	 */
	public int modifyPwd(String userId, String oldpwd,String newpwd);


	/**
	 * 更新头像
	 * @param user
	 * @return
	 */
	public int updateImg(User user);


	/**
	 * 通过email查找用户
	 * @param email
	 * @return
	 */
	public User findByEmail(String email);


	/**
	 * 根据userId和clazzId 将学生添加到班级
	 * @param userId
	 * @param clazzId
	 * @return
	 */
	public int addUserToClass(String userId, String clazzId);

	
	/**
	 * 查询所有用户
	 * @return
	 */
	public List<User> selectAllUser();
	
	
	/**
	 * 查询用户
	 * @param userName
	 * @return
	 */
	public List<User> selectLikeUserName(String userName);
	
	/**
	 * 查询用户
	 * @param userId
	 * @return
	 */
	public User selectByUserId(String userId);
	
	/**
	 * 删除用户
	 * @param user
	 * @return
	 */
	public int delete(User user);
	
	
	/**
	 * 修改用户信息
	 * @param user
	 * @return
	 */
	public int update(User user);


	/**
	 * 获取个人面板的资料
	 * @param userId
	 * @return
	 */
	public UserVo findUserVoByUserId(String userId);
	
}
