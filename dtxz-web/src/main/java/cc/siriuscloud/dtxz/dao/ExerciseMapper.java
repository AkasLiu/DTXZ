package cc.siriuscloud.dtxz.dao;

import java.util.List;

import cc.siriuscloud.dtxz.bean.Exercise;
import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.bean.vo.ErrorTitleVo;
import cc.siriuscloud.dtxz.bean.vo.TitleVo;

public interface ExerciseMapper {
    int deleteByPrimaryKey(String exerciseId);

    int insert(Exercise record);

    int insertSelective(Exercise record);



    int updateByPrimaryKeySelective(Exercise record);

    int updateByPrimaryKeyWithBLOBs(Exercise record);

    int updateByPrimaryKey(Exercise record);
    
//  根据page和examId获取指定题目
    Exercise selectByTv(TitleVo titleVo);
// 获取总题目数   
    Integer getExamTitlesNum(TitleVo titleVo);
        
    Exercise selectByPrimaryKey(String exerciseId);
    // 获取用户错题集
    List<ErrorTitleVo> selectErrorByUser(User user);

    //根据用户id获取错题
    List<ErrorTitleVo> selectErrorByUserId(String userId);
    
    
    
    // 根据submitId获取错题id
    ErrorTitleVo selectErrorBySubmitId(String submitId);
}