package cc.siriuscloud.dtxz.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cc.siriuscloud.dtxz.bean.Message;
import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.service.NoticeService;

	/*
	 * @author Ace
	 * 通知页面的入口
	 * 
	 */
	@Controller
	@RequestMapping("notice")
	public class NoticeController {
	
		@Resource
		NoticeService noticeDao;
		
		/**
		 * 创建通知的视图
		 * @return
		 */
		@RequestMapping("show") 
		public String show(HttpSession session, HttpServletRequest request){
			
			User user = (User)session.getAttribute("loginUser");
			List<Message> list_message = noticeDao.selectAll(user.getUserId());
//			System.out.println(list_message.size());
			request.setAttribute("messages", list_message);
			
			return "notice_show";
		}
		
		
		/**
		 * 搜索通知处理
		 * @return
		 */
		@RequestMapping("searchNotice")
		public String search(String search, HttpSession session, HttpServletRequest request){
			
			User user = (User)session.getAttribute("loginUser");
			
			List<Message> messages = noticeDao.selectLikeContent(user.getUserId(), search);
			
			if(messages != null){
				request.setAttribute("messages", messages);		
			}
			
			return "notice_show";
		}
	
		/**
		 * 删除通知处理
		 * @return
		 */
		@RequestMapping("deleteNotice")
		public String delete(String mesId, HttpSession session, HttpServletRequest request){
			
			User user = (User)session.getAttribute("loginUser");
			int row = noticeDao.deleteByUser(user.getUserId(), mesId);
			List<Message> list_message = noticeDao.selectAll(user.getUserId());
			request.setAttribute("messages", list_message);
			
			return "notice_show";
		}
}
