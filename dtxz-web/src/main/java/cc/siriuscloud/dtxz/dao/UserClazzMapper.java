package cc.siriuscloud.dtxz.dao;

import cc.siriuscloud.dtxz.bean.UserClazz;

public interface UserClazzMapper {
    int deleteByPrimaryKey(String ucId);

    int insert(UserClazz record);

    int insertSelective(UserClazz record);

    UserClazz selectByPrimaryKey(String ucId);

    int updateByPrimaryKeySelective(UserClazz record);

    int updateByPrimaryKey(UserClazz record);
}