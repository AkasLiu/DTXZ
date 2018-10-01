package cc.siriuscloud.dtxz.service;

import java.util.List;

import cc.siriuscloud.dtxz.bean.Authen;

public interface AuthenService {

	/**
	 * 验证，插入
	 * @param authen
	 * @return
	 */
	int certificate(Authen authen);

	/**
	 * 根据authenId查询用户id
	 * @param authenId
	 * @return
	 */
	Authen findByAuthenId(String authenId);
	
	/**
	 * 根据userId查询用户id
	 * @param userId
	 * @return
	 */
	Authen findByUserId(String userId);
	
	/*
	 * 
	 * 查询所有认证表行
	 * 
	 */
	List<Authen> selectAllAuthen();
	
	/*
	 * 
	 * 根据authenId删除该行
	 * 
	 */
	int delete(String authenId);

}
