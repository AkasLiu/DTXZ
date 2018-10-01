package cc.siriuscloud.dtxz;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.controller.IndexController;
import cc.siriuscloud.dtxz.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-ssm.xml")
public class IndexTest {
	
	
	@Resource
	private UserService userService;
	
	
	/**
	 * 测试一把UserService
	 */
	@Test
	public void loginTest(){
		
		User loginUser=new User();
		loginUser.setEmail("575863672@qq.com");
		loginUser.setPwd("sirius");
		
		User user=userService.login(loginUser);
		
		assertNotNull(user);
		System.out.println(user);
	}
	
	
	@Resource
	private IndexController indexController;
	
	@Test
	public void registerTest(){
		User loginUser=new User();
		loginUser.setNickname("兮晓");
		loginUser.setEmail("575863672@qq.com");
		loginUser.setPwd("sirius");
		
		int row=userService.register(loginUser);
		
		assertEquals(row, 1);
		System.out.println(row);
	}
	
	/**
	 * 基本信息修改测试
	 */
	@Test
	public void modifyBaseInfoTest(){
		
		User loginUser=new User();
		loginUser.setEmail("575863672@qq.com");
		loginUser.setPwd("sirius");
		
		User user=userService.login(loginUser);
		
		user.setSex("女");
		user.setAge(999);
		user.setNickname("晓兮");
		int row = userService.modifyBaseInfo(user);
		assertEquals(row,1);
	}
	
	
	
	
	
	
	
	
}
