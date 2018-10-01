package cc.siriuscloud.dtxz;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cc.siriuscloud.dtxz.bean.Authen;
import cc.siriuscloud.dtxz.bean.Exam;
import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.bean.vo.UserVo;
import cc.siriuscloud.dtxz.dao.AuthenMapper;
import cc.siriuscloud.dtxz.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-ssm.xml")
public class UserTest {

	@Resource
	private AuthenMapper authDao;
	
	
	@Test
	public void findAuthByUserId(){
		
		Authen authen = authDao.selectByUserId("49800b74f39b11e79abf8ac00db14b2b");
		
		System.out.println(authen);
		
	}
	
	@Resource
	private UserService userService;
	

	@Test
	public void findByEmail(){
		
		User user = userService.findByEmail("siriusing.cc@qq.com");
		System.out.println(user);
		
	}
	
	
	@Test
	public void findUserVo(){
		
		UserVo userVo = userService.findUserVoByUserId("b405ff7f-f2e8-11e7-b33d-ace010576bbc");
		
		System.out.println(userVo);
		
	}
	
	@Test
	public void userBox(){
		
		UserVo userVo = userService.findUserVoByUserId("b405ff7f-f2e8-11e7-b33d-ace010576bbc");
		
		System.out.println(userVo);
		System.out.println("exams:::");
		for(Exam e:userVo.getExams()){
			
			System.out.println(e);
		}
		
	}
	
	
}
