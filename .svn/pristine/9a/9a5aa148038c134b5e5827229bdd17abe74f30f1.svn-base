package cc.siriuscloud.dtxz.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;

import cc.siriuscloud.dtxz.bean.Clazz;
import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.bean.vo.PageBean;
import cc.siriuscloud.dtxz.dao.ClazzMapper;
import cc.siriuscloud.dtxz.dao.UserMapper;
import cc.siriuscloud.dtxz.service.ClazzService;
import cc.siriuscloud.dtxz.utils.MyStringUtils;


@Service
public class ClazzServiceImpl implements ClazzService {

	@Resource
	private ClazzMapper clazzDao;
	@Resource
	private UserMapper userDao;
	

	@Override
	public ArrayList<Clazz> findByTeacherId(String userId) {
		
		return clazzDao.selectByTeacherId(userId);
	}

	@Override
	public int addClazz(Clazz clazz) {
		
		clazz.setClazzId(MyStringUtils.getUUID());
		
		if(clazz.getDescription()==null||clazz.getName()==null||null==clazz.getTeacherId()){
			return -1;
		}
		
		
		return  clazzDao.insertSelective(clazz);
	}

	@Override
	public PageBean<User> findMyStudents(PageBean<User> page,String clazzId) {
		//分页查询
		
		Long totalRecord = userDao.selectCountUserByClassId(clazzId);
		page.setTotalRecord(totalRecord);
		page.buildParams();
		
		PageHelper.startPage(page.getPageNum(), page.getPageSize(), false);
		List<User> users = userDao.selectUserByClassId(clazzId);
		
		page.setData(users);
		
		return page;
	}

	@Override
	public PageBean<Clazz> findMyClazz(PageBean<Clazz> page, String userId) {
		
		//获取总页数
		Long totalRecord = clazzDao.selectCountByUserId(userId);
		page.setTotalRecord(totalRecord);
		//构造分页容器参数
		page.buildParams();
		
		//分页插件
		PageHelper.startPage(page.getPageNum(), page.getPageSize(), false);
		//查询数据
		
		List<Clazz> clazzes = clazzDao.selectByUserId(userId);
		
		//填充数据
		page.setData(clazzes);
		
		//回送数据
		return page;
	}
	
	
	
	
	
	
}
