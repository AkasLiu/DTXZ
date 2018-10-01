package cc.siriuscloud.dtxz.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.dao.UserMapper;
import cc.siriuscloud.dtxz.service.FinanceService;

@Service
public class FinanceServiceImpl implements FinanceService {

	@Resource
	UserMapper userDao;
	
	/*
	 * 
	 * 充值
	 * @author Ace
	 * 
	 */
	@Override
	public int updateMoney(String userId, Double money){
		User user = userDao.selectByPrimaryKey(userId);
		user.setMoney(money);
		return userDao.updateByPrimaryKey(user);
 	}
	
	/*
	 * 
	 * 转账
	 * @author Ace
	 * 
	 */
	@Override
	public int updateFromTo(String from, String to, Double money){
		User user_from = userDao.selectByPrimaryKey(from);
		User user_to = userDao.selectByPrimaryKey(to);
		user_from.setMoney(user_from.getMoney() - money);
		user_to.setMoney(user_to.getMoney() + money);
		return userDao.updateByPrimaryKey(user_from) + userDao.updateByPrimaryKey(user_to);
 	}
	
}
