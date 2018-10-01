package cc.siriuscloud.dtxz.sirius;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cc.siriuscloud.dtxz.bean.Exam;
import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.bean.vo.ErrorTitleVo;
import cc.siriuscloud.dtxz.bean.vo.PageBean;
import cc.siriuscloud.dtxz.bean.vo.SubmitVo;
import cc.siriuscloud.dtxz.dao.ExamMapper;
import cc.siriuscloud.dtxz.dao.ExerciseMapper;
import cc.siriuscloud.dtxz.dao.SubmitMapper;
import cc.siriuscloud.dtxz.dao.UserMapper;
import cc.siriuscloud.dtxz.service.ExamService;
import cc.siriuscloud.dtxz.service.SubmitService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-ssm.xml")
public class SiriusTest {

	
	@Resource
	private ExamMapper examDao;
	
	
	@Resource
	private ExamService examService;

	
	
	@Resource
	private UserMapper userDao;
	
	@Test
	public void testFindAll(){
		
		User user=userDao.selectByPrimaryKey("8f66d6cef4df11e79f98ace010576bbc");
		
		Long count = examDao.selectCountByUser(user);
		
		System.out.println(count);
		
		List<Exam> exams = examDao.selectByUser(user);
		
		System.out.println(exams);
		
		
	}
	
	
	@Test
	public void findExamWithUserIdToPageTest(){
		
		PageBean page=new PageBean();
		
		page.setPageNum(1);
		page.setPageSize(3);

		
		User user=userDao.selectByPrimaryKey("8f66d6cef4df11e79f98ace010576bbc");
		
		System.out.println("testing");
		page=examService.findExamWithUserIdToPage(page,user);	
		
		List<Exam> data = page.getData();
		
		for(Exam e:data){
			System.out.println(e);
			
		}
	}
	
	@Resource
	private ExerciseMapper exerciseDao;
	@Test
	public void errorExercise(){
		
		List<ErrorTitleVo> errorVos = exerciseDao.selectErrorByUserId("b405ff7f-f2e8-11e7-b33d-ace010576bbc");
		
		for(ErrorTitleVo e:errorVos){
			
			System.out.println(e);
		}
		
		
	}
	
	@Resource
	private SubmitMapper submitDao;
	@Test
	public void getErrorSubmits(){
		
		List<SubmitVo> submitVos = submitDao.selectErrorSubmits("b405ff7f-f2e8-11e7-b33d-ace010576bbc");
		for(SubmitVo s:submitVos){
			
			System.out.println(s);
		}
	}
	
	@Resource
	private SubmitService submitService;
	
	@Test
	public void getErrorSubmitSeivice(){
		
		PageBean<SubmitVo> page = new PageBean<SubmitVo>();
		
		page.setPageSize(2);
		page.setPageNum(2);
		
		page.buildParams();
		
		submitService.findErrorSubmitsByUserId(page, "b405ff7f-f2e8-11e7-b33d-ace010576bbc");
	
		for(SubmitVo s:page.getData()){
			
			System.out.println(s);
		}
	
	}
	
}
