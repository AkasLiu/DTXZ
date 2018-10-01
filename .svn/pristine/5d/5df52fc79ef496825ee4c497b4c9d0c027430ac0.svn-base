package cc.siriuscloud.dtxz.ms.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cc.siriuscloud.dtxz.bean.Admin;
import cc.siriuscloud.dtxz.service.AdminService;

@Controller
@RequestMapping("ms")
public class AdminController {

	@Resource
	private AdminService adminService;
	
	@RequestMapping("admin")
	public String admin(){
		
		return "/ms/admin";	
	}
	
	@RequestMapping("loginUI")
	public String login(){
		
		return "/ms/login";		
	}
	
	/**
	 * 登陆检查
	 * @return
	 */
	@RequestMapping("login")

	@ResponseBody
	public String login(String userName, String userPass, HttpSession session,HttpServletRequest request){

		Admin admin = new Admin();
		admin.setAccount(userName);
		admin.setPwd(userPass);
		
//		System.out.println(userName +", "+ userPass);
		
		Admin loginAdmin = adminService.login(admin);
		
		// 未找到用户
		if(loginAdmin==null){
			return "<script>alert('登录失败！');window.history.back();</script>";
		}
		session.setAttribute("loginAdmin", loginAdmin);
		
		return "<script>window.location.href='/ms/admin.do';</script>";

	}
}
