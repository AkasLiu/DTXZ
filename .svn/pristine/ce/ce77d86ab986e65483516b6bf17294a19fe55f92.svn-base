package cc.siriuscloud.dtxz.dao;

import java.util.List;

import cc.siriuscloud.dtxz.bean.Submit;
import cc.siriuscloud.dtxz.bean.vo.SubmitVo;

public interface SubmitMapper {
    int deleteByPrimaryKey(String submitId);

    int insert(Submit record);

    int insertSelective(Submit record);

    Submit selectByPrimaryKey(String submitId);

    int updateByPrimaryKeySelective(Submit record);

    int updateByPrimaryKeyWithBLOBs(Submit record);

    int updateByPrimaryKey(Submit record);
    
    /**
     * 根据学生id和考卷id获取答题记录
     * @param exerciseId
     * @param examineeId
     * @return
     */
    Submit selectByExeIdAndExamineeId(Submit submit);
    
    /**
     * 根据submit更新答题记录
     * @param exerciseId
     * @param examineeId
     * @return
     */
    int update(Submit submit);
    
    
    
    /**
     * 查询用户的错题
     * @param userId
     * @return
     */
    List<SubmitVo> selectErrorSubmits(String userId);
    
    
    
    /**
     * 查询错题数
     * @param userId
     * @return
     */
    Long selectErrorSubmitCount(String userId);
    
    
    /**
     * 根据submitId查询题目vo，包含题目信息
     * @param submitId
     * @return
     */
    SubmitVo selectSubmitVoBySubmitId(String submitId);
    
}