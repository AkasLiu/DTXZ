package cc.siriuscloud.dtxz;

import static org.junit.Assert.assertEquals;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cc.siriuscloud.dtxz.bean.Answer;
import cc.siriuscloud.dtxz.bean.Clazz;
import cc.siriuscloud.dtxz.bean.Exam;
import cc.siriuscloud.dtxz.bean.Exampaper;
import cc.siriuscloud.dtxz.bean.Exercise;
import cc.siriuscloud.dtxz.bean.PaperExe;
import cc.siriuscloud.dtxz.bean.Submit;
import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.bean.vo.ErrorTitleVo;
import cc.siriuscloud.dtxz.bean.vo.HisExamVo;
import cc.siriuscloud.dtxz.bean.vo.TitleVo;
import cc.siriuscloud.dtxz.dao.ExamMapper;
import cc.siriuscloud.dtxz.service.ClazzService;
import cc.siriuscloud.dtxz.service.ExamService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-ssm.xml")
public class ExamTest {
	
	@Resource
	ExamService examService;

	/**
	 * 获取考场
	 */
	@Test
	public void examTest(){
		examService.selectExam("cfed493757384393a478028ef11163de");
	}
	
	/**
	 * 测试创建考场
	 */
//	@Test
	public void createExamTest() {
		Exam exam = new Exam();
		exam.setTitle("月考");
		exam.setStatus("正在进行");
//		exam.setDuration(new Date());
		exam.setDuration(3600);
		exam.setCreatetime(new Date());
		exam.setBegintime(new Date());
		exam.setEpId("3b8415bb20694a979ea00a77fbef855a");
		exam.setClazzId("601");
		
		int row = examService.createExam(exam);
		assertEquals(1, row);
		System.out.println(exam.getExamId());
	}
	
	/**
	 * 测试创建试卷
	 */
	@Test
	public void createExamPaperTest() {
//		创建试卷
		Exampaper exampaper = new Exampaper();
		exampaper.setTitle("第二次大考");
		exampaper.setDescription("六年三班的月考");
		exampaper.setTeacherId("2");
		System.out.println("创建试卷成功EPID:");
		
		String epId = examService.createExampaper(exampaper);
		System.out.println("epID:" +epId);
		
		for (int i = 0; i < 3; i++) {
//			创建试题
			Exercise exercise = new Exercise();
			exercise.setTitle("测试问题");
			exercise.setDescription("A.1|B.2|C.3");
			exercise.setAnswer("D");
			// 三种：radio/checkbox/text		
			exercise.setType("radio");
			exercise.setWriterId("2");
			String exerciseId = examService.createExercise(exercise);
			System.out.println("创建试题成功");
			
//			创建试卷-试题关联项
			int row = examService.createPaperExe(exampaper, exercise);
			assertEquals(row, 1);
			System.out.println("创建试卷-试题成功");
		}
	}
	
	/**
	 * 测试创建考题
	 */
	@Test
	public void createExerciseTest() {
		Exercise exercise = new Exercise();
		exercise.setTitle("1+2=?");
		exercise.setDescription("A.1|B.2|C.3");
		exercise.setAnswer("B");
		// 三种：radio/checkbox/text		
		exercise.setType("radio");
		exercise.setWriterId("2");
		String exerciseId = examService.createExercise(exercise);
		System.out.println("创建考题 id：" + exerciseId);
	}
	
	/**
	 * 测试进入考场
	 */
	@Test
	public void doingTest() {
		System.out.println("测试进入考场：");
//		examService.getExe("0caef8e28e6a44ce8e89c25552de2f69");
		TitleVo titleVo = new TitleVo();
		titleVo.setExamId("cfed493757384393a478028ef11163de");
		titleVo.setPage(1);
		System.out.println(examService.getExe(titleVo).getExerciseId());
		System.out.println(examService.getExeNum(titleVo));
	}
	
	/**
	 * 测试获取考试记录
	 */
	
	/**
	 * 测试答题
	 */
//	@Test
	public void answerTest() {
		System.out.println("测试答题：");
		Submit submit = new Submit();
		submit.setAnswer("B");
		submit.setExamineeId("3");
		submit.setExerciseId("34488dc61a654674a5b0ee427b7ac8c4");
		examService.answer(submit);
	}
	
	/**
	 * 测试用户查询当前考试
	 */
	@Test
	public void curhistTest() {
		System.out.println("测试用户考试记录");
		User user = new User();
		user.setUserId("3");
		List<Exam> examlist = examService.getExamByStudent(user);
		for (int i = 0; i< examlist.size(); i++) {
			System.out.println(examlist.get(i).getBegintime());
			System.out.println(examlist.get(i).getStatus());
		}
	}
	
	
	
	/**
	 * 测试查询
	 */
	
	/**
	 * 测试查询用户错题集
	 */
	@Test
	public void errorUnionTest() {
		User user = new User();
		user.setUserId("3");
		List<ErrorTitleVo> errorTitlelist = examService.getErrorByUser(user);		
	}
	
	/**
	 * 测试根据submitId查询详细错题
	 */
	@Test
	public void errorTitleTest() {
		ErrorTitleVo errorTitle = examService.getErrorTitle("c0f97a14f47711e7aadeacb57d5b700d");
		System.out.println(errorTitle);
	}
	
	/**
	 * 测试能否获取老师的试卷
	 */
	@Test
	public void examPaperTest() {
		User user = new User();
		user.setUserId("a89807aef4da11e7b085acb57d5b700d");
		List<Exampaper> list = examService.getPaper(user);
		System.out.println("epID" + list.get(0).getEpId());
	}
	/**
	 * 查询老师的班级
	 */
	
	@Resource
	ClazzService clazzService;
	@Test
	public void clazzTest() {
		User user = new User();
		user.setUserId("2");
		clazzService.findByTeacherId(user.getUserId());
	}
	

	/**
	 * 测试查询考完的记录
	 */
	@Resource 
	ExamMapper exammapper;
	@Test
	public void hisExamTest() {
		User user = new User();
		user.setUserId("ecba3c88f66911e7a09d00163e0a89fe");
//		List<HisExamVo> alllist = exammapper.getHisExamByUser(user);
//		List<HisExamVo> corlist = exammapper.getHisCorExamByUser(user);
//		
//		for (int i = 0; i < alllist.size(); i++ ) {
//			System.out.println(alllist.get(i));
//		}
//		
//		for (int i = 0; i < corlist.size(); i++ ) {
//			System.out.println(corlist.get(i));
//		}
		List<HisExamVo> hislist = examService.getHisExam(user);
		System.out.println("历史考试：");
		for (int i = 0; i < hislist.size(); i++ ) {
			System.out.println(hislist.get(i));
		}
	}
}
