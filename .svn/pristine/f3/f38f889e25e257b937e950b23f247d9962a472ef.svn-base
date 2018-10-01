package cc.siriuscloud.dtxz.service;

import java.util.List;

import cc.siriuscloud.dtxz.bean.Exam;
import cc.siriuscloud.dtxz.bean.Exampaper;
import cc.siriuscloud.dtxz.bean.Exercise;
import cc.siriuscloud.dtxz.bean.Submit;
import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.bean.vo.ErrorTitleVo;
import cc.siriuscloud.dtxz.bean.vo.HisExamVo;
import cc.siriuscloud.dtxz.bean.vo.PageBean;
import cc.siriuscloud.dtxz.bean.vo.TitleVo;


/**
 * @author beanSeedling
 * 考试模块的服务层接口
 */
public interface ExamService {

	/**
	 * 根据用户获取他创建的试卷
	 */
	public List<Exampaper> getPaper(User user);
	
	/**
	 * 生成试题记录
	 * @param exercise
	 * @return
	 */
	public String createExercise(Exercise exercise);
	
	/**
	 * 生成试题-试卷关联项
	 * @param 试卷和试题
	 * @return
	 */
	public int createPaperExe(Exampaper exampaper, Exercise exercise);
	
	/**
	 * 生成试卷
	 * @param exampaper
	 * @return
	 */
	public String createExampaper(Exampaper exampaper);
	
	/**
	 * 获取考场 —— 根据examid
	 */
	public Exam selectExam(String examId);
	
	
	/**
	 * 创建考场 —— 返回一个examid
	 * @param exam
	 */
	public int createExam(Exam exam);
	
	/**
	 * 进入考场 —— 根据examid和题目序号
	 * @param examid
	 */
	public Exercise getExe(TitleVo titleVo);
	
	/**
	 * 获取考场的题目总数
	 */
	public int getExeNum(TitleVo titleVo);

	/**
	 * 生成答题记录
	 * @param submit
	 * @return
	 */
	public int answer(Submit submit);
	

	/**
	 * 查询考生的考试记录
	 * @param user
	 * @return
	 */
	public List<Exam> getExamByStudent(User user);

	public PageBean<Exam> findExamWithUserIdToPage(PageBean<Exam> page, User user);
	
	/**
	 * 查询考生的错题记录
	 */
	public List<ErrorTitleVo>getErrorByUser(User user);
	
	/**
	 * 根据submit_id获取题目答案和自己的答案
	 */
	public ErrorTitleVo getErrorTitle(String submitId);
	
	
	
	/**
	 * 根据用户id获取错题集
	 * @param userId
	 * @return
	 */
	public List<ErrorTitleVo> getErrorByUserId(String userId);
	
	/**
	 * 获取历史考试记录
	 * @param user
	 * 
	 */
	public List<HisExamVo> getHisExam(User user);
	
}
