package cc.siriuscloud.dtxz;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cc.siriuscloud.dtxz.bean.Clazz;
import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.bean.vo.PageBean;
import cc.siriuscloud.dtxz.service.ClazzService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-ssm.xml")
public class ClazzTest {

	
	@Resource
	private ClazzService clazzService;
	
	@Test
	public void testAddClazz(){
		Clazz clazz=new Clazz();
		
		clazz.setDescription("描述");
		clazz.setName("名字");
		clazz.setTeacherId("49800b74f39b11e79abf8ac00db14b2b");
		
		int addClazz = clazzService.addClazz(clazz);
		
		assertEquals(addClazz, 1);
		
		System.out.println(addClazz);
		
	}
	
	@Test
	public void testFindAll(){
		
		
		ArrayList<Clazz> clazzes = clazzService.findByTeacherId("49800b74f39b11e79abf8ac00db14b2b");
		
		System.out.println(clazzes);
		
	}
	
	

	@Test
	public void findClazzUser(){
		
		PageBean<User> page = new PageBean<User>();
		page.setPageNum(2);
		page.setPageSize(3);
		
		clazzService.findMyStudents(page, "dddd");
		
		for(User u:page.getData()){
			System.out.println(u);
		}
		
	}
	
	/**
	 * 查询自己所属班级
	 */
	@Test
	public void findMyClazz(){
		
		PageBean<Clazz> page=new PageBean<>();
		
		page.setPageNum(2);
		page.setPageSize(2);
		
		page=clazzService.findMyClazz(page, "b405ff7f-f2e8-11e7-b33d-ace010576bbc");
		
		
		for(Clazz c:page.getData()){
			
			System.out.println(c);
			
		}
		
		
		
	}
	
	
	
}
