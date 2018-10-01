package cc.siriuscloud.dtxz.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cc.siriuscloud.dtxz.bean.Clazz;
import cc.siriuscloud.dtxz.bean.Exam;
import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.bean.UserClazz;
import cc.siriuscloud.dtxz.bean.vo.UserVo;
import cc.siriuscloud.dtxz.dao.AnswerMapper;
import cc.siriuscloud.dtxz.dao.ClazzMapper;
import cc.siriuscloud.dtxz.dao.ExamMapper;
import cc.siriuscloud.dtxz.dao.UserClazzMapper;
import cc.siriuscloud.dtxz.dao.UserMapper;
import cc.siriuscloud.dtxz.service.UserService;
import cc.siriuscloud.dtxz.utils.MyStringUtils;


@Service
public class UserServiceImpl implements UserService{

	
	@Resource
	UserMapper userDao;
	
	@Resource
	ClazzMapper clazzDao;
	
	@Resource
	UserClazzMapper userClazzDao;
	
	@Resource
	AnswerMapper answerDao;
	
	@Resource
	ExamMapper examDao;
	
	@Override
	public User login(User user) {
		
		//1.先查询

		User loginUser= userDao.selectByEmailPwd(user);
		if(null==loginUser){
			return null;
		}
		
		//2.然后更新登录时间
		loginUser.setRecentLoginTime(new Date());
		User record=new User();
		
		record.setUserId(loginUser.getUserId());
		record.setRecentLoginTime(loginUser.getRecentLoginTime());
		// 更行登录时间
		userDao.updateByPrimaryKeySelective(record);
		
		//3. 返回最新登录用户
		return loginUser;
	}


	@Override
	public int register(User user) {
	
		return userDao.insertByUUID(user);
	}


	@Override
	public int modifyBaseInfo(User user) {
		
		User modifyUser=new User();
		modifyUser.setUserId(user.getUserId());
		modifyUser.setAge(user.getAge());
		modifyUser.setNickname(user.getNickname());
		modifyUser.setSex(user.getSex());
		
		return userDao.updateByPrimaryKeySelective(modifyUser);
	}


	@Override
	public int modifyPwd(String userId,String oldpwd, String newpwd) {
		
		//旧密码验证
		
		User userdb = userDao.selectByPrimaryKey(userId);
		String string2Md5 = MyStringUtils.String2Md5(oldpwd);
		System.out.println(string2Md5);
		
		if(userdb==null||!userdb.getPwd().equals(MyStringUtils.String2Md5(oldpwd))){
			
			return -1;
		}
		
		
		User user=new User();
		user.setUserId(userId);
		user.setPwd(newpwd);
		
		return  userDao.updatePwdByPk(user);
		
		
	}


	@Override
	public int updateImg(User user) {
		
		User imgUser=new User();
		imgUser.setUserId(user.getUserId());
		imgUser.setImg(user.getImg());
		
		
		return userDao.updateByPrimaryKeySelective(imgUser);
	}
	
	@Override
	public List<User> selectAllUser(){
		
		List<User> list = new ArrayList<User>();
	
		list = userDao.selectAll();
		
		if (list.size() == 0)
			return null;
		else
			return list;
	}
	
	@Override
	public List<User> selectLikeUserName(String userName){
		
		List<User> users = userDao.selectLikeUserName(userName);
		
		if(users.size() == 0)
			return null;
		else
			return users;
	}
	
	@Override
	public User selectByUserId(String userId){
		
		User user = userDao.selectByPrimaryKey(userId);
		
//		System.out.println(user.getUserId() + ", " + user.getEmail());
		
		return user;
	}
	
	@Override
	public int delete(User user) {		
		
		return userDao.deleteByPrimaryKey(user.getUserId());
	}

	@Override
	public int update(User user){
		
		return userDao.updateByPrimaryKey(user);
		
	}

	@Override
	public User findByEmail(String email) {
		
		return userDao.selectByEmail(email);
	}


	@Override
	public int addUserToClass(String userId, String clazzId) {

		//先查找是不是有这个用户
		
		User user = userDao.selectByPrimaryKey(userId);
		if(user==null){
			return -2;
		}
		
		//验证班级
		Clazz clazz = clazzDao.selectByPrimaryKey(clazzId);
		if(clazz==null){
			return -3;
		}
		
		//验证不在本班级
		UserClazz uc=new UserClazz();
		uc.setClazzId(clazzId);
		uc.setUserId(userId);
		
		//插入数据库
		User userDb = userDao.selectByUserIdClazzId(uc);
		if(userDb!=null){
			return -4;
		}

		//插入
		uc.setUcId(MyStringUtils.getUUID());
		return userClazzDao.insert(uc);
	}


	@Override
	public UserVo findUserVoByUserId(String userId) {

		
		// 构造容器
		UserVo userVo=new UserVo();
		
		//userVo设置
		User user = userDao.selectByPrimaryKey(userId);
		userVo.setUserId(user.getUserId());
		userVo.setAge(user.getAge());
		userVo.setSex(user.getSex());
		userVo.setImg(user.getImg());
		userVo.setEmail(user.getEmail());
		userVo.setName(user.getName());
		userVo.setNickname(user.getNickname());
		
		
		// 获取答题数
		userVo.setAnswerSum(answerDao.countAnswerByUserId(userId));
		
		//获取考试数
		userVo.setExamSum(examDao.countExamByUserId(userId));
		
		//获取获赞数
		userVo.setPraiseSum(answerDao.countPraiseByUserId(userId));
		
		//班级数
		userVo.setClazzSum(clazzDao.selectCountByUserId(userId));
		
		//正确数
		userVo.setCorrectSum(userVo.getPraiseSum()%121);
		
		//总排名
		userVo.setRankSum(userVo.getPraiseSum()%33);
		
		//TODO 被采纳
		userVo.setAccessSum(userVo.getPraiseSum()%29);
		
		
		List<Exam> exams = examDao.selectMyExam(userVo.getUserId());
		
		userVo.setExams(exams);
		//
		return userVo;
	}

}
