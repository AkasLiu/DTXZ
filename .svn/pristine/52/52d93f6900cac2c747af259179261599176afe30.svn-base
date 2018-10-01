package cc.siriuscloud.dtxz.dao;

import java.util.List;
import java.util.Map;

import cc.siriuscloud.dtxz.bean.Pv;

public interface PvMapper {
    int deleteByPrimaryKey(String pvId);

    int insert(Pv record);

    int insertSelective(Pv record);

    Pv selectByPrimaryKey(String pvId);

    int updateByPrimaryKeySelective(Pv record);

    int updateByPrimaryKey(Pv record);
    
    List<Pv> selectByDay(Map<String, Object> map);
}