package cc.siriuscloud.dtxz.dao;

import java.util.List;

import cc.siriuscloud.dtxz.bean.Authen;

public interface AuthenMapper {
    int deleteByPrimaryKey(String authenId);

    int insert(Authen record);

    int insertSelective(Authen record);

    Authen selectByPrimaryKey(String authenId);

    int updateByPrimaryKeySelective(Authen record);

    int updateByPrimaryKey(Authen record);

	Authen selectByUserId(String userId);
	
	List<Authen> selectAll();
	
}