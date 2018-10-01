package cc.siriuscloud.dtxz.dao;

import java.util.List;

import cc.siriuscloud.dtxz.bean.Exam;
import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.bean.vo.HisExamVo;

public interface ExamMapper {
    int deleteByPrimaryKey(String examId);

    int insert(Exam record);

    int insertSelective(Exam record);

    Exam selectByPrimaryKey(String examId);

    int updateByPrimaryKeySelective(Exam record);

    int updateByPrimaryKey(Exam record);
    
    List<Exam> selectByUser(User user);

    
    Long selectCountByUser(User user);

	Long countExamByUserId(String userId);
	
    // 获取用户的参与考试的列表(含题目总数)
    List<HisExamVo> getHisExamByUser(User user);
    
    // 获取用户的参与考试的列表（含答对题目总数，但是1题没答对的考试没有）
    List<HisExamVo> getHisCorExamByUser(User user);
    
    
//	select distinct
//	exam_id,title,
//	status,createtime,begintime,duration,clazz_id,ep_id
//	 from dtxz_exam_submit  
    /**
     * 查询用户参加的考试
     * @author sirius
     * @param userId
     * @return
     */
    List<Exam> selectMyExam(String userId);
    
    
}