package cc.siriuscloud.dtxz.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import cc.siriuscloud.dtxz.bean.Message;
import cc.siriuscloud.dtxz.bean.Receive;

public interface NoticeService {
	
	/*
	 * 
	 * 在用户下根据用户Id查询对应的接收表行
	 * @author Ace
	 * 
	 */
	public List<Message> selectAll(String userId);
	
	/*
	 * 
	 * 在用户下根据通知内容查询对应的接收表行
	 * @author Ace
	 * 
	 */
	public List<Message> selectLikeContent(String userId, String content);
	
	/*
	 * 
	 * 添加接收表行
	 * @author Ace
	 * 
	 */
	public int insertByRec(Receive receive);
	
	/*
	 * 
	 * 添加通知表行
	 * @author Ace
	 * 
	 */
	public int insertByMes(Message message);
	
	/*
	 * 
	 * 在用户下根据用户Id和通知Id删除对应的接收表行
	 * @author Ace
	 * 
	 */
	public int deleteByUser(String userId, String mesId);
	
	/*
	 * 
	 * 在后台下根据通知Id删除对应的通知表行
	 * @author Ace
	 * 
	 */
	public int deleteByMes(String mesId);
	
	/*
	 * 
	 * 根据用户进行群发通知
	 * @author Ace
	 * 
	 */
	public int insertByUser(String userId, String mesCont);
	
	/*
	 * 
	 * 根据班级进行群发通知
	 * @author Ace
	 * 
	 */
	public int insertByUserClazz(String clazz, String mesCont);
}
