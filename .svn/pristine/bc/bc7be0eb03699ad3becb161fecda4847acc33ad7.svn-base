package cc.siriuscloud.dtxz.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cc.siriuscloud.dtxz.bean.Authen;
import cc.siriuscloud.dtxz.bean.Clazz;
import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.bean.vo.PageBean;
import cc.siriuscloud.dtxz.bean.vo.UserVo;
import cc.siriuscloud.dtxz.service.AuthenService;
import cc.siriuscloud.dtxz.service.ClazzService;
import cc.siriuscloud.dtxz.service.UserService;
import cc.siriuscloud.dtxz.utils.FileUploadUitls;

@Controller
@RequestMapping("user")
public class UserController {
	

	@Resource
	private UserService userService;
	@Resource
	private AuthenService authenService;
	@Resource
	private ClazzService clazzService;
	
	/**
	 * 基本信息
	 * @return
	 */
	@RequestMapping("baseinfo")
	public String bashinfo(HttpSession session,ModelMap map, Integer pageNum){
		
		//直接拿session中的数据填充到页面
		User loginUser = (User)session.getAttribute("loginUser");
		
		
		//创建分页容器
		PageBean<Clazz> page=new PageBean<>(); 
		
		if(pageNum!=null){
			page.setPageNum(pageNum);
		}
		
		//TODO: 页大小
		page.setPageSize(5);
		
		//获取一把班级数据
		page=clazzService.findMyClazz(page, loginUser.getUserId());
		map.addAttribute("page", page);
		
		return "user_baseinfo";
	}
	
	
	@RequestMapping("infobox")
	public String infoBox(ModelMap map,HttpSession session){
		
		//获取userId
		
		User loginUser=(User)session.getAttribute("loginUser");
		
		UserVo ub=userService.findUserVoByUserId(loginUser.getUserId());
		
		
		map.addAttribute("userVo", ub);
		//把数据扔进session
		
		session.setAttribute("userVo", ub);
		
		
		
		return "ajax/userbox";
		
	}
	
	
	
	@RequestMapping("findUserJsonByEmail")
	@ResponseBody
	public User findUserJsonByEmail(String email){
		
		User user=userService.findByEmail(email);
		
		return user;
	}
	
	@RequestMapping("addStudent")
	@ResponseBody
	public String addStudent(String userId,String clazzId){
		
		int row=userService.addUserToClass(userId,clazzId);
		
		if(row>0){
			return "<script>alert('添加成功');window.location.href='/user/classmanager.do';</script>";
		}
		return "<script>alert('添加失败,错误码:"+row+"');window.history.back();</script>";
		
	}
	
	
	/**
	 * 验证视图
	 * @return
	 */
	@RequestMapping("certificateUI")
	public ModelAndView certificateUI(HttpSession session){
		
		User user=(User) session.getAttribute("loginUser");
		
		//查询数据
		Authen authen=authenService.findByUserId(user.getUserId());
		
		ModelAndView mv=new ModelAndView();
		
		mv.setViewName("user_certificateUI");
		mv.addObject("authen", authen);
		return mv;
	}

	/**
	 * 验证
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("certificate")
	@ResponseBody
	public String certificate(Authen authen,HttpServletRequest request) throws IOException{
		
		//处理图片
			//上传到七牛云
		ArrayList<String> srcList = FileUploadUitls.upload(request);
			//添加到bean
		if(srcList.size()>0){
			authen.setImg(srcList.get(0));
		}
		
		//获取当前用户
		User user=(User) request.getSession().getAttribute("loginUser");
		authen.setUserId(user.getUserId());
		
		//任务分发，添入数据库
		int row=authenService.certificate(authen);
		
		if(row>0){
			
			return "<script>alert('提交成功，等待检验哦!');window.location.href='/user/baseinfo.do';</script>";
		}
		return "<script>alert('提交失败');window.history.back()';</script>";
	}	
	
	/**
	 * 班级管理
	 * @return
	 */
	@RequestMapping("classmanager")
	public ModelAndView classmanager(HttpSession session){
		
		
		//建立视图容器
		ModelAndView mv=new ModelAndView();
		
		//获取userid
		
		User loginUser=(User) session.getAttribute("loginUser");
		
		//查询所有班级，显示视图
		ArrayList<Clazz> clazzes= clazzService.findByTeacherId(loginUser.getUserId());
		System.out.println(clazzes);
		mv.addObject("clazzes", clazzes);
		mv.setViewName("user_classmanager");
		
		return mv;
	}
	
	/**
	 * 添加班级
	 * @param clazz
	 * @return
	 */
	@RequestMapping("addClazz")
	@ResponseBody
	public String addClazz(Clazz clazz){
		
		
		int row = clazzService.addClazz(clazz);
		
		if(row<0){

			return "<script>alert('添加失败，请缺少参数');window.history.back();</script>";
		}else if(row==0){
			
			return "<script>alert('添加失败，请检查参数');window.history.back();</script>";
		}
		
		return "<script>alert('添加成功');window.location.href='/user/classmanager.do';</script>";		
	}
	
	@RequestMapping("clazzdetail")
	public ModelAndView clazzdetail(String clazzId,Integer pageNum){
		//建立视图容器
		ModelAndView mv=new ModelAndView();
		
		
		PageBean<User> page=new PageBean<>();
		if(pageNum!=null){
			page.setPageNum(pageNum);
		}
		//TODO 上线前修改
		page.setPageSize(5);
		
		//获取所有本班学生
		page=clazzService.findMyStudents(page, clazzId);
			
//		mv.addObject("page",page);
//		
		HashMap<String, Object> attrs = new HashMap<String,Object>();
		
		attrs.put("page",page);
		attrs.put("clazzId", clazzId);
		
		mv.addAllObjects(attrs);
		
		mv.setViewName("user_clazzdetail");
		
		return mv;
	}
	
	/**
	 * 删除班级
	 * @return
	 */
	public ModelAndView removeClazz(){
		//建立视图容器
		ModelAndView mv=new ModelAndView();
		
		
		return mv;
	}
	
	
	
	


	/**
	 * 修改信息视图
	 * @return
	 */
	@RequestMapping("modifyInfoUI")
	public String modifyInfoUI(){
		
		return "user_modifyinfoUI";
	}
	
	
	/**
	 * 修改信息处理
	 * @return
	 */
	@RequestMapping("modifyinfo")
	@ResponseBody
	public String modifyInfo(User user,HttpSession session){
		
		//1. 直接传入service
		int i=userService.modifyBaseInfo(user);
		
		//2. 如果失败，直接提示跳转
		if(i<1){
			//修改失败
			return "<script>alert('修改失败，请重新修改！');window.history.back();</script>";
		}
		
		//3. 修改成功,查询用户信息
		User loginUser=(User) session.getAttribute("loginUser");

		//4.刷新session
		loginUser.setAge(user.getAge());
		loginUser.setNickname(user.getNickname());
		loginUser.setSex(user.getSex());
		
		session.setAttribute("loginUser", loginUser);
		
		return "<script>alert('修改成功！');window.location.href='/user/baseinfo.do';</script>";
	}
	
	@RequestMapping("modifypwd")
	@ResponseBody
	public String modifyPwd(String oldpwd,String newpwd,String renewpwd,HttpSession session){
		
		//1.在js端，先做新密码的两次校验
		
		//2.在web端做旧密码的校验
		if(StringUtils.isEmpty(oldpwd)||StringUtils.isEmpty(newpwd)||StringUtils.isEmpty(renewpwd)){
			
			return "<script>alert('检查到非法字段');window.history.back();</script>";
		}
		
		if(!newpwd.equals(newpwd)){
			
			return "<script>alert('密码不一致');window.history.back();</script>";
		}
		
		//3. 封装参数
		User loginUser = (User) session.getAttribute("loginUser");
		
		//4.校验成功，返回提示，更新密码
		int row=userService.modifyPwd(loginUser.getUserId(),oldpwd,newpwd);
		
		//4.校验失败，返回提示，密码错误
		if(row==0){
			return "<script>alert('修改失败，请重新修改！');window.history.back();</script>";
		}else if(row==-1){
			
			return "<script>alert('修改失败，请旧密码不正确哦！不要骗机智的我@-@');window.history.back();</script>";
		}
		
		//5.修改成功,重新登录
		
		return "<script>alert('修改成功！');window.location.href='/relogin.do?reflash=true';</script>";
	}
	
	
	/**
	 * 个人中心
	 * @return
	 */
	@RequestMapping("personal")
	public String personal(){
		
		
		return "user_personal";
	}
	
}
