package cc.siriuscloud.dtxz.dao;

import java.util.List;

import cc.siriuscloud.dtxz.bean.Receive;

public interface ReceiveMapper {
    int deleteByPrimaryKey(String recId);

    int insert(Receive record);

    int insertSelective(Receive record);

    Receive selectByPrimaryKey(String recId);
  
    List<Receive> selectByUId(String userId);
    
    Receive selectByUIdAndMesId(Receive receive);

    int updateByPrimaryKeySelective(Receive record);

    int updateByPrimaryKey(Receive record);
}