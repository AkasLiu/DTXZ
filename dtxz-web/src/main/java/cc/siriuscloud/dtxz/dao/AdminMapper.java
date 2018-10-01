package cc.siriuscloud.dtxz.dao;

import cc.siriuscloud.dtxz.bean.Admin;

public interface AdminMapper {
    int deleteByPrimaryKey(String adminId);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(String adminId);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
    
    /**
     * 通过用户名和密码查询用户
     * @param username
     * @param password
     * @return 查询不到返回空
     */
    Admin selectByUsernamePassword(Admin admin);
    
    
}