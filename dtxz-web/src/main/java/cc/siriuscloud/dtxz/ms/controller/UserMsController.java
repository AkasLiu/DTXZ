package cc.siriuscloud.dtxz.ms.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cc.siriuscloud.dtxz.bean.Authen;
import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.bean.vo.UserCertificateVo;
import cc.siriuscloud.dtxz.service.AuthenService;
import cc.siriuscloud.dtxz.service.UserService;

@Controller

@RequestMapping("ms/user")
public class UserMsController {

	@Resource
	private UserService userService; 
	
	@Resource
	private AuthenService authenService;
	
	@RequestMapping("userSearch")
	public String userSearch(HttpServletRequest request){		
		
		List<User> users = new ArrayList<User>();
		users = userService.selectAllUser();
		if(users != null){
			for(int i = 0; i<users.size(); i++){
				if(users.get(i).getStatus() == null || "".equals(users.get(i).getStatus().trim())){
					users.get(i).setStatus("正常");
					userService.update(users.get(i));
				}
			}
		
			request.setAttribute("users", users);		
		}
		
		return "/ms/user_search";	
	}
	
	@RequestMapping("userCertificate")
	public String userCertificate(HttpServletRequest request){
		
		List<UserCertificateVo> userCertificates = new ArrayList<UserCertificateVo>();
		
		List<Authen> authens = new ArrayList<Authen>();
		User user;
		
		authens = authenService.selectAllAuthen();
		
		if(authens != null){
		
			for(int i = 0; i<authens.size(); i++){
				user = userService.selectByUserId(authens.get(i).getUserId());
				UserCertificateVo userCertificate = new UserCertificateVo();
				userCertificate.setAuthenId(authens.get(i).getUserId());
				userCertificate.setUserId(user.getUserId());
				userCertificate.setInfo(authens.get(i).getInfo());
				userCertificate.setImg(authens.get(i).getImg());
				userCertificate.setNickname(user.getNickname());
				userCertificate.setName(user.getName());
				userCertificate.setJob(user.getJob());
				
				userCertificates.add(userCertificate);
			}
			request.setAttribute("userCertificates", userCertificates);
		}
		
		return "/ms/user_certificate";	
	}
	
//	@RequestMapping("searchAllUser")
//	public String searchAllUser(HttpServletRequest request){
//		
//		List<User> users = new ArrayList<User>();
//		users = userService.selectAllUser();
//		
//		if(users != null){
//			request.setAttribute("users", users);		
//		}
//		
//		return "/ms/user_search";
//	}
	
	@RequestMapping("searchUser")
	public String searchUser(String userName, HttpServletRequest request){
		
//		System.out.println(userName);
		
		List<User> users = userService.selectLikeUserName(userName);
//		System.out.println(users.size());
		
		if(users != null){
			request.setAttribute("users", users);		
		}
		
		return "/ms/user_search";
	}
	
	@RequestMapping("deleteUser")
	public String deleteUser(String userId){
		
		User user = userService.selectByUserId(userId);
		
//		System.out.println(user.getName());
		
		int row = userService.delete(user);
		
		return "redirect:userSearch.do";
	}
	
	@RequestMapping("updateUser")
	public String updateUser(String userId){
		
//		System.out.println("userId:" + userId);
		
		User user = userService.selectByUserId(userId);
		
		if(user.getStatus().equals("正常")){
			user.setStatus("已屏蔽");
		}
		else{
			user.setStatus("正常");
		}
		
//		System.out.println(user.getNickname());
		
		int row = userService.update(user);
		
		return "redirect:userSearch.do";
	}
	
	@RequestMapping("selectCertificate")
	public String selectCertificate(String userName, HttpServletRequest request){
		
		List<User> list = userService.selectLikeUserName(userName);
		List<UserCertificateVo> userCertificates = new ArrayList<UserCertificateVo>();
		
//		System.out.println("list:" + list.size());
		if(list != null){
			for(int i = 0; i < list.size(); i++){
				Authen authen = authenService.findByUserId(list.get(i).getUserId());
				if(authen != null){
					UserCertificateVo userCertificate = new UserCertificateVo();
					userCertificate.setAuthenId(authen.getUserId());
					userCertificate.setUserId(list.get(i).getUserId());
					userCertificate.setInfo(authen.getInfo());
					userCertificate.setImg(authen.getImg());
					userCertificate.setNickname(list.get(i).getNickname());
					userCertificate.setName(list.get(i).getName());
					userCertificate.setJob(list.get(i).getJob());
					
					userCertificates.add(userCertificate);
				}
			}

			request.setAttribute("userCertificates", userCertificates);		
		}
		
		return "/ms/user_certificate";
	}
	
	@RequestMapping("passCertificate")
	public String passCertificate(String authenId){
		
		Authen authen = authenService.findByUserId(authenId);
		
		User user = userService.selectByUserId(authen.getUserId());
		user.setJob("教师");
		
		int row1 = authenService.delete(authenId);
		int row2 = userService.update(user);
				
		return "redirect:userCertificate.do";
	}
	
	@RequestMapping("noPassCertificate")
	public String noPassCertificate(String authenId){
		
		
		int row = authenService.delete(authenId);
		
		return "redirect:userCertificate.do";
	}
	
}
