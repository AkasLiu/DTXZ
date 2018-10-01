package cc.siriuscloud.dtxz.dao;

import java.util.List;

import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.bean.UserClazz;

public interface UserMapper {
    int deleteByPrimaryKey(String userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String userId);
    
    List<User> selectAll();
    
    List<User> selectLikeUserName(String userName);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
	/**
	 * 根据邮箱密码查询用户
	 * @param user
	 * @return
	 */
	User selectByEmailPwd(User user);
			

	/**
	 * 插入用户
	 * 使用bean字段：nickname,email，pwd
	 * 处理：id由uuid生成，默认昵称“新用户”,密码md5加密
	 * @param user
	 * @return 
	 */
	int insertByUUID(User user);

	/**
	 * 根据主键，更新密码
	 * @param user
	 * @return
	 */
	int updatePwdByPk(User user);

	/**
	 * 根据班级id查询出本班级所有学生
	 * @param clazzId
	 */
	List<User> selectUserByClassId(String clazzId);

	/**
	 * 通过clazzId查询当前班级的学生数量
	 * @param clazzId
	 */
	Long selectCountUserByClassId(String clazzId);

	/**
	 * 根据邮箱查询用户
	 * @param email
	 * @return
	 */
	User selectByEmail(String email);
	
	
	/**
	 * 通过userId和班级id查找用户
	 * 作用的表是 dtxz_user_clazz，不同于在user表查
	 * 可用于验证用户是不是本班级
	 * @param userId
	 * @param clazzId
	 * @return
	 */
	User selectByUserIdClazzId(UserClazz userClazz);
	
	
}