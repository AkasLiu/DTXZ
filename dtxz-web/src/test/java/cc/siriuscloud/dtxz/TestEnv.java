package cc.siriuscloud.dtxz;

import static org.junit.Assert.assertNotNull;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cc.siriuscloud.dtxz.controller.ExamController;
import cc.siriuscloud.dtxz.controller.IndexController;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-ssm.xml")
public class TestEnv {

	
	@Resource
	private SqlSessionFactoryBean factory;
	
	@Test
	public void testFactory(){
		
		assertNotNull(factory);
		
		System.out.println(factory);
		
		
	}

	
	@Resource
	private IndexController adminController;
	
	@Resource
	private ExamController examController;
	
	
	@Test
	public void testController(){
		
		assertNotNull(adminController);
		System.out.println(adminController);
		
		assertNotNull(examController);
		System.out.println(examController);
	}
	
	
}	
	
