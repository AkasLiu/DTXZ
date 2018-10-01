package cc.siriuscloud.dtxz.dao;

import java.util.List;

import cc.siriuscloud.dtxz.bean.Message;

public interface MessageMapper {
    int deleteByPrimaryKey(String mesId);

    int insert(Message record);

    int insertSelective(Message record);

    Message selectByPrimaryKey(String mesId);
    
    List<Message> selectLikeContent(String content);

    int updateByPrimaryKeySelective(Message record);

    int updateByPrimaryKey(Message record);
    
}