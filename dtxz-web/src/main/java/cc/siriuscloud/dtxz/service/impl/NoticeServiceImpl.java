package cc.siriuscloud.dtxz.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import cc.siriuscloud.dtxz.bean.Message;
import cc.siriuscloud.dtxz.bean.Receive;
import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.dao.MessageMapper;
import cc.siriuscloud.dtxz.dao.ReceiveMapper;
import cc.siriuscloud.dtxz.dao.UserMapper;
import cc.siriuscloud.dtxz.service.NoticeService;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Resource
	MessageMapper messageDao;
	
	@Resource
	ReceiveMapper receiveDao;
	
	@Resource
	UserMapper userDao;
	
	/*
	 * 
	 * 在用户下根据用户Id查询对应的接收表行
	 * @author Ace
	 * 
	 */
	@Override
	public List<Message> selectAll(String userId){
		
		List<Message> messages = new ArrayList<Message>();
		List<Receive> list = receiveDao.selectByUId(userId);
		Message message = null;
		
		for(int i = 0; i<list.size(); i++){
//			System.out.println(list.size());
			message = messageDao.selectByPrimaryKey(list.get(i).getMesId());
//			System.out.println(message.getMesId());
			messages.add(message);
		}
		
		if(list.size() == 0)
			return null;
		else				
			return messages;
	}
	
	/*
	 * 
	 * 在用户下根据通知内容查询对应的接收表行
	 * @author Ace
	 * 
	 */
	@Override
	public List<Message> selectLikeContent(String userId, String content){
		
		Receive receive = new Receive();
		List<Message> messages =  messageDao.selectLikeContent(content);
		List<Message> list = new ArrayList<Message>();
		
		for(int i = 0; i<messages.size(); i++){
			receive.setUserId(userId);
			receive.setMesId(messages.get(i).getMesId());
//			System.out.println(messages.size());
//			System.out.println(messages.get(0).getMesId());
			if(receiveDao.selectByUIdAndMesId(receive) != null){
				
				list.add(messages.get(i));
				
			}
		}
		if(list.size() != 0){
//			System.out.println(list.size());
			return list;
		}
		else
			return null;
	}
	
	
	/*
	 * 
	 * 在用户下根据用户Id和通知Id删除对应的接收表行
	 * @author Ace
	 * 
	 */
	@Override
	public int deleteByUser(String userId, String mesId) {
		
		Receive rec = new Receive();
		rec.setUserId(userId);
		rec.setMesId(mesId);
		System.out.println(userId);
		System.out.println(mesId);
		Receive receive = receiveDao.selectByUIdAndMesId(rec);
//		System.out.println(receive.getRecId());
		
		return receiveDao.deleteByPrimaryKey(receive.getRecId());
	}
	
	
	/*
	 * 
	 * 在后台下根据通知Id删除对应的通知表行
	 * @author Ace
	 * 
	 */
	@Override
	public int deleteByMes(String mesId){
		
		return messageDao.deleteByPrimaryKey(mesId);
		
	}
	
	/*
	 * 
	 * 添加接收表行
	 * @author Ace
	 * 
	 */
	@Override
	public int insertByRec(Receive receive){
		
		return receiveDao.insert(receive);
				
	}
	
	/*
	 * 
	 * 添加通知表行
	 * @author Ace
	 * 
	 */
	@Override
	public int insertByMes(Message message){
		
		//在通知表插入一行数据
		return messageDao.insert(message);
	}
	
	
	/*
	 * 
	 * 根据用户进行群发通知
	 * @author Ace
	 * 
	 */
	public int insertByUser(String userId, String mesCont){
		
		Message message = new Message();
		Receive receive = new Receive();
		Random random = new Random();
		
		String mesId = "";
		String recId = "";
		
		while(mesId == "" || messageDao.selectByPrimaryKey(mesId) != null){
			mesId = "";
			for(int i = 0; i<8; i++){
				mesId = "" + mesId + random.nextInt(10)%10;
			}
		}
		
		while(recId == "" || receiveDao.selectByPrimaryKey(recId) != null){
			recId = "";
			for(int i = 0; i<8; i++){
				recId = "" + recId + random.nextInt(10)%10;
			}
		}
		
		System.out.println(mesId);
		System.out.println(recId);
		
		message.setMesId(mesId);
		message.setContent(mesCont);
		
		receive.setRecId(recId);
		receive.setMesId(mesId);
		receive.setUserId(userId);
		
		int row1 = messageDao.insert(message);
		int row2 = receiveDao.insert(receive);
		
		return row1 + row2;
	}
	
	/*
	 * 
	 * 根据班级进行群发通知
	 * @author Ace
	 * 
	 */
	public int insertByUserClazz(String clazzId, String mesCont){
		
		List<User> clazzUsers = new ArrayList<User>();		
		Message message = new Message();
		Random random = new Random();
		
		clazzUsers = userDao.selectUserByClassId(clazzId);
		
		String mesId = "";
		String recId = "";
		
		while(mesId == "" || messageDao.selectByPrimaryKey(mesId) != null){
			mesId = "";
			for(int i = 0; i<8; i++){
				mesId = "" + mesId + random.nextInt(10)%10;
			}
		}
		
		message.setMesId(mesId);
		message.setContent(mesCont);
		
		int row = messageDao.insert(message);
		
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
		
		return row;		
	}

}
