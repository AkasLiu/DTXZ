package cc.siriuscloud.dtxz;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cc.siriuscloud.dtxz.bean.Message;
import cc.siriuscloud.dtxz.bean.Receive;
import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.dao.MessageMapper;
import cc.siriuscloud.dtxz.dao.ReceiveMapper;
import cc.siriuscloud.dtxz.dao.UserMapper;
import cc.siriuscloud.dtxz.service.NoticeService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-ssm.xml")
public class NoticeTest {

	@Resource
	SqlSessionFactoryBean factory;
	
	@Resource
	private NoticeService noticeDao;
	
	@Resource
	ReceiveMapper receiveDao;
	
	@Resource
	MessageMapper messageDao;
	
	@Resource
	UserMapper userDao;
	
	/**
	 * 测试一把数据库连接
	 */
	@Test
	public void test() throws Exception {
		System.out.println
		(factory.getObject().openSession().getConnection());
	}
	
	/**
	 * 测试一把NoticeService的删除
	 */
	@Test
	public void deleteTest(){
				
		String userId = "101";
		String mesId = "101";
		
		//删除接收表行数据
		int row_1 = noticeDao.deleteByUser(userId, mesId);
		
		//删除整个通知表行数据
//		int row_2 = noticeService.deleteByMes(mesId);	

	}
	
	/**
	 * 测试一把NoticeService的插入
	 */
	@Test
	public void insertTest(){
		
		Receive receive = new Receive();
//		Message message = new Message();
		
		receive.setRecId("201801080945");
		receive.setUserId("101");
		receive.setMesId("101");
		
		int row_rec = noticeDao.insertByRec(receive);

//		message.setMesId("101");
//		message.setContent("123456789");
		
//		int row_mes = noticeService.insertByMes(message);
		
		System.out.println(receive);
//		System.out.println(message);
	}
		
	
	@Test
	public void selectTest(){
		Receive rec = new Receive();
		rec.setMesId("101");
		rec.setUserId("101");
		Receive receive = receiveDao.selectByUIdAndMesId(rec);

		System.out.println(receive.getRecId());
	}
	
	
	
	
	@Test
	public void testInsertMes() throws Exception {
		
		List<User> clazzUsers = new ArrayList<User>();		
		Message message = new Message();
		Random random = new Random();
		
		clazzUsers = userDao.selectUserByClassId("601");
		
		String mesId = "";
		String recId = "";
		
		while(mesId == "" || messageDao.selectByPrimaryKey(mesId) != null){
			mesId = "";
			for(int i = 0; i<8; i++){
				mesId = "" + mesId + random.nextInt(10)%10;
			}
		}
		
//		System.out.println(mesId);
		
		message.setMesId(mesId);
		message.setContent("1354512asdahikdhgais");
		
		messageDao.insert(message);
		
		for(int i = 0; i<clazzUsers.size(); i++){
			Receive receive = new Receive();
			
			while(recId == "" || receiveDao.selectByPrimaryKey(recId) != null){
				recId = "";
				for(int j = 0; j<8; j++){
					recId = "" + recId + random.nextInt(10)%10;
				}
			}
			
			receive.setRecId(recId);
			receive.setMesId(mesId);
			receive.setUserId(clazzUsers.get(i).getUserId());
			
			receiveDao.insert(receive);
		}
		
	}
}
