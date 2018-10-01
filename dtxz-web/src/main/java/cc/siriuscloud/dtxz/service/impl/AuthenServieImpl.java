package cc.siriuscloud.dtxz.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cc.siriuscloud.dtxz.bean.Authen;
import cc.siriuscloud.dtxz.dao.AuthenMapper;
import cc.siriuscloud.dtxz.service.AuthenService;
import cc.siriuscloud.dtxz.utils.MyStringUtils;


@Service
public class AuthenServieImpl implements AuthenService {

	
	@Resource
	private AuthenMapper authenDao;
	
	@Override
	public int certificate(Authen authen) {
		
		//先查询是否有记录，已有记录就返回
		Authen authenDb=authenDao.selectByUserId(authen.getUserId());
		
		if(authenDb==null){			
			authen.setAuthenId(MyStringUtils.getUUID());
			if(authen.getImg()==null){
				return 0;
			}
			if(authen.getTitle()==null){
				return 0;
			}
			
			if(authen.getInfo()==null){
				return 0;
			}
			
			return authenDao.insertSelective(authen);
		}else{
			
			return 0;
		}
		
		
	}

	@Override
	public Authen findByAuthenId(String authenId) {
		
		return authenDao.selectByPrimaryKey(authenId);
	}
	
	@Override
	public Authen findByUserId(String userId){
		return authenDao.selectByUserId(userId);
	}

	@Override
	public List<Authen> selectAllAuthen(){
		
		List<Authen> list = authenDao.selectAll();
		
		if(list.size() ==0)
			return null;
		else
			return list;
	}
	
	@Override
	public int delete(String authenId){
		return authenDao.deleteByPrimaryKey(authenId);
	}
	
}
