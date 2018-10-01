package cc.siriuscloud.dtxz.service.impl;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;

import cc.siriuscloud.dtxz.bean.Exam;
import cc.siriuscloud.dtxz.bean.Exampaper;
import cc.siriuscloud.dtxz.bean.Exercise;
import cc.siriuscloud.dtxz.bean.PaperExe;
import cc.siriuscloud.dtxz.bean.Submit;
import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.bean.vo.ErrorTitleVo;
import cc.siriuscloud.dtxz.bean.vo.HisExamVo;
import cc.siriuscloud.dtxz.bean.vo.PageBean;
import cc.siriuscloud.dtxz.bean.vo.TitleVo;
import cc.siriuscloud.dtxz.dao.ExamMapper;
import cc.siriuscloud.dtxz.dao.ExampaperMapper;
import cc.siriuscloud.dtxz.dao.ExerciseMapper;
import cc.siriuscloud.dtxz.dao.PaperExeMapper;
import cc.siriuscloud.dtxz.dao.SubmitMapper;
import cc.siriuscloud.dtxz.service.ExamService;
import cc.siriuscloud.dtxz.utils.MyStringUtils;

@Service
public class ExamServiceImpl implements ExamService {

	// 考场dao	
	@Resource
	ExamMapper examDao;
	// 试卷dao
	@Resource
	ExampaperMapper examPaperDao;
	// 试卷-试题关联表dao
	@Resource
	PaperExeMapper papaerExeDao; 
	//	试题dao
	@Resource
	ExerciseMapper exerciseDao;
	// 答卷dao
	@Resource
	SubmitMapper submitDao;

	
	/**
	 * 获取考场
	 */
	public Exam selectExam(String examId) {
		return examDao.selectByPrimaryKey(examId);
	}

	/**
	 * 生成试题
	 */
	@Override
	public String createExercise(Exercise exercise) {
		String uuid = MyStringUtils.getUUID();
		exercise.setExerciseId(uuid);
		exerciseDao.insert(exercise);
		return exercise.getExerciseId();
	}
	
	
	/**
	 * 生成试题-试卷关联项
	 * 一生成题目就执行这个操作
	 */
	@Override
	public int createPaperExe(Exampaper exampaper, Exercise exercise) {
		PaperExe paperExe = new PaperExe();
//		System.out.println("测试：" + exampaper.getEpId());
//		System.out.println("测试：" + exercise.getWriterId());
		paperExe.setEpId(exampaper.getEpId());
		paperExe.setExerciseId(exercise.getExerciseId());

		return papaerExeDao.insert(paperExe);
	}
	
	/**
	 * 一开始就生成了
	 * 生成试卷
	 */
	@Override
	public String createExampaper(Exampaper exampaper) {
		// 先生成试卷再创建试题-试卷关联项
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		exampaper.setEpId(uuid);
		examPaperDao.insert(exampaper);
		return exampaper.getEpId();
	}
	
	
	

	/**
	 * 创建考场
	 * @param exam
	 */
	@Override
	public int createExam(Exam exam) {
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		exam.setExamId(uuid);
		return examDao.insert(exam);
	}

	/**
	 * 获取题目
	 */
	@Override
	public Exercise getExe(TitleVo titleVo) {

		int page = titleVo.getPage();
		titleVo.setPage(page-1);
		Exercise exe = exerciseDao.selectByTv(titleVo);
//		System.out.println(exerciseMapper.getExamTitlesNum(titleVo));
		titleVo.setPage(page);
		return exe;
	}
	
	/**
	 * 获取题目总数
	 */
	@Override
	public int getExeNum(TitleVo titleVo) {

		int num;
		if (exerciseDao.getExamTitlesNum(titleVo) == null) {
			num = 0;
		} else {
			num = exerciseDao.getExamTitlesNum(titleVo).intValue();
		}
		return num;
	}
	
	
	/**
	 * 生成答题记录
	 * 先判断是否填了（插入还是修改）
	 */
	@Override
	public int answer(Submit submit) {
		// 根据学生id和试题id来判断是否填过了
		Submit s = submitDao.selectByExeIdAndExamineeId(submit);
		int row = 0;
		if (s == null) {
			row = submitDao.insert(submit);
		} else {
//			System.out.println(s.getAnswer());
			s.setAnswer(submit.getAnswer());
//			System.out.println(s.getAnswer());
			row = submitDao.update(s);
		}
		
		return row;
	}

	/**
	 * 查询考生的未结束的考试
	 */
	@Override
	public List<Exam> getExamByStudent(User user) {
		
		List<Exam> examlist = examDao.selectByUser(user);
	
		long nowTime = (new Date()).getTime() / 1000;
		int size = examlist.size();
		
		// 筛选已结束的考试
//		为了防止意外从大大小（因为会删除节点）
		for (int i = size-1; i >= 0; i--) {
			Exam exam = examlist.get(i);
			long beginTime = exam.getBegintime().getTime() / 1000;
			// 获取考试时长
			int examtime = exam.getDuration();
			// 判断是否已经结束
			// 未开始			
			if (nowTime < beginTime) {
				exam.setStatus("未开始");
			}
			// 结束			
			else if (nowTime > beginTime+examtime) {
				exam.setStatus("已结束");
				examlist.remove(i);
			}
			else {
				exam.setStatus("正在进行");
			}

		}
		
		return examlist;
	}



	/**
	 * @author sirius
	 * 分页获取
	 */
	@Override
	public PageBean<Exam> findExamWithUserIdToPage(PageBean<Exam> page, User user) {
		
		
		Long totalRecord=examDao.selectCountByUser(user);

		page.setTotalRecord(totalRecord);
		page.buildParams();
		
		
		PageHelper.startPage(page.getPageNum(), page.getPageSize());//1.添加插件api方法
		List<Exam> exams = examDao.selectByUser(user);
		
		//状态实现
		Long now=new Date().getTime();
		
		for(Exam e:exams){
			
			if (now<e.getBegintime().getTime()) {
				e.setStatus("未开始");
			}
			// 结束			
			else if (now > e.getBegintime().getTime()+e.getDuration()*1000) {
				e.setStatus("已结束");
//				exams.remove(e);
			}
			else {
				e.setStatus("正在进行");
			}
		}

		page.setData(exams);
		return page;
	}



	@Override
	public List<ErrorTitleVo> getErrorByUser(User user) {
		
		return exerciseDao.selectErrorByUser(user);
	}
	
	@Override
	public List<ErrorTitleVo> getErrorByUserId(String userId) {
		
		return exerciseDao.selectErrorByUserId(userId);
	}
	

	/**
	 * 获取错题
	 */
	@Override
	public ErrorTitleVo getErrorTitle(String submitId) {

		return exerciseDao.selectErrorBySubmitId(submitId);
	}


	@Override
	public List<Exampaper> getPaper(User user) {
		
		return examPaperDao.selectByWriter(user);
	}


	@Override
	public List<HisExamVo> getHisExam(User user) {
		// TODO Auto-generated method stub
		
		List<HisExamVo> alllist = examDao.getHisExamByUser(user);
		List<HisExamVo> corlist = examDao.getHisCorExamByUser(user);
		
		int flag = 0;			// 是否考试0分的标志
		for (int i = 0; i < alllist.size(); i++) {
			flag = 0;
			for (int j = 0; j < corlist.size(); j++) {
				if (alllist.get(i).getExamId() != null && alllist.get(i).getExamId().equals( corlist.get(j).getExamId()  )) {
					alllist.get(i).setCorNum( corlist.get(j).getCorNum() );
					flag = 1;
					break;
				}
			}
			
			// 判断是否为0
			if (flag == 0) {
				alllist.get(i).setCorNum(0);
			}
		}
		
//		将正确的个数连接到alllist中
		return alllist;
	}

	

}
