package cc.siriuscloud.dtxz.dao;

import java.util.List;

import cc.siriuscloud.dtxz.bean.Exampaper;
import cc.siriuscloud.dtxz.bean.User;

public interface ExampaperMapper {
    int deleteByPrimaryKey(String epId);

    int insert(Exampaper record);

    int insertSelective(Exampaper record);

    Exampaper selectByPrimaryKey(String epId);

    int updateByPrimaryKeySelective(Exampaper record);

    int updateByPrimaryKey(Exampaper record);
    
    /**
     * 根据用户获取创建的试卷
     */
    List<Exampaper> selectByWriter(User user);
    
    
    
}