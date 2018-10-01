package cc.siriuscloud.dtxz.service;

import java.util.ArrayList;
import java.util.List;

import cc.siriuscloud.dtxz.bean.Clazz;
import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.bean.vo.PageBean;

public interface ClazzService {

	/**
	 * 查找全部班级
	 * @return
	 */
	ArrayList<Clazz> findByTeacherId(String userId);

	/**
	 * 添加班级
	 * @param clazz
	 */
	int addClazz(Clazz clazz);
	
	

	/**查询本班级学生
	 * @param page
	 * @param clazzId
	 * @return
	 */
	PageBean<User> findMyStudents(PageBean<User> page,String clazzId);
	

	
	
	/**
	 * 查询本人的所属班级
	 * @param page
	 * @param userId
	 * @return
	 */
	PageBean <Clazz> findMyClazz(PageBean<Clazz>page,String userId);
	
}
