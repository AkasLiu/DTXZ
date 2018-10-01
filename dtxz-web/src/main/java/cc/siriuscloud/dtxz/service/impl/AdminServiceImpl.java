package cc.siriuscloud.dtxz.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cc.siriuscloud.dtxz.bean.Admin;
import cc.siriuscloud.dtxz.dao.AdminMapper;
import cc.siriuscloud.dtxz.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Resource
	AdminMapper adminDao;
	
	/**
	 * 用户名密码登录
	 * @param userName
	 * @param password
	 * @return
	 */
	@Override
	public Admin login(Admin admin){
		
		//1.先查询

		Admin loginAdmin= adminDao.selectByUsernamePassword(admin);
		if(null==loginAdmin){
			return null;
		}
		
		//2. 返回最新登录用户
		return loginAdmin;
		
	}
	
}
