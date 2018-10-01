package cc.siriuscloud.dtxz.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cc.siriuscloud.dtxz.controller.BaseController;
import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.bean.vo.ProblemVo;
import cc.siriuscloud.dtxz.service.EssayService;
import cc.siriuscloud.dtxz.service.UserService;
import cc.siriuscloud.dtxz.utils.FileUploadUitls;

/**
 * @author sirius
 * 前台的主入口，主要包括首页，登录和注册,发现
 * 本来打算将注册和登录抽离到个人中心的
 */
@Controller
public class IndexController extends BaseController{

	private static 	Logger logger=Logger.getLogger(IndexController.class);
	
	@Resource
	private UserService userService;
	
	@Resource
	private EssayService essayService;
	
	/**
	 * @modify haifan
	 *@return 
	 */
	@RequestMapping("index")
	public String index(ModelMap model){
		
		/**
		 * @author haifan
		 * 获取热门问题
		 *@return model.problemVo
		 */
		List<ProblemVo> problemVos=essayService.selectHotProblem(5);
		model.put("problemVos", problemVos);
		
		return "index";
	}
	
	/**
	 * 登录、注册的视图
	 * @return
	 */
	@RequestMapping("/loginUI.do")
	public String loginUI(){
		
		
		return "loginUI";
	}
	
	/**
	 * 登陆检查
	 * @return
	 */
	@RequestMapping("login")
	public String login(User user,HttpSession session,HttpServletRequest request){
		
		User loginUser=userService.login(user);
	
		// 未找到用户
		if(loginUser==null){
			request.setAttribute("msg", "登录失败，密码或帐号错误！哪个错呢，不告诉你!");
			request.setAttribute("url", "/loginUI.do");
			return "forward:forward.do";
		}
		session.setAttribute("loginUser", loginUser);
		
		return "redirect:index.do";
	}
	/**
	 * 登陆检查
	 * @return
	 */
	@RequestMapping("relogin")
	public String relogin(HttpSession session,RedirectAttributes attr){
		
		//reflash 属性主要是给iframe的父窗口识别的
		attr.addAttribute("reflash", "true");
		
		session.setAttribute("loginUser", null);
		return "redirect:loginUI.do";
	}
	
	/**
	 * 用户注册
	 * @param user
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("register")
	public String register(User user,HttpServletRequest request) throws IOException{
		
		int row = userService.register(user);
		
		if(row<0){
			request.setAttribute("msg", "注册失败");		
			request.setAttribute("back", "true");
			
			return "redirect:error.do";
		}
		
		request.setAttribute("msg", "注册成功");
		request.setAttribute("url", "/index.do");
				
		return "forward:forward.do";
	}
	
	
	/**
	 * 发现
	 * @return
	 */
	@RequestMapping("found")
	public String found(RedirectAttributes attributes){
		
		attributes.addAttribute("msg", "此功能还在加工哦，宁耐片刻。啦啦啦！");
		attributes.addAttribute("url", "/index.do");
		
		return "redirect:/error.do";
	}
	
	@RequestMapping("about")
	public String about(HttpServletRequest request){
		
		request.setAttribute("msg","暂未开发，请期待哈，亲！");
		request.setAttribute("url","/index.do");
		
		return "forward:forward.do";
	}
	
	/**
	 * 这个是上传用户头像的
	 * 完整的多文件支持可以直接用FileUploadUitls
	 * @return json{url:'',code:''}
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@ResponseBody
	@RequestMapping("uploadimg")
	public String uploadImg(HttpServletRequest request) throws IllegalStateException, IOException{

		ArrayList<String> upload = FileUploadUitls.upload(request);
		
		//上传成功：
		if(upload.size()>0){
			String src=upload.get(0);
			//获得用户id
			User user = (User) request.getSession().getAttribute("loginUser");
			if(user!=null){
				user.setImg(src);
				int row=userService.updateImg(user);
				
				//更新成功
				if(row>0){
					logger.info("upload file to qiniu:"+src);
					return src;
				}
			}
		}
		logger.debug("no upload file to qiniu:");
		
		return "null";
	}
	/**
	 * 这个是上传文件的
	 * 完整的多文件支持可以直接用FileUploadUitls
	 * @return json{url:'',code:''}
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@ResponseBody
	@RequestMapping("upload")
	public String upload(HttpServletRequest request) throws IllegalStateException, IOException{

		ArrayList<String> upload = FileUploadUitls.upload(request);
		
		//上传成功：
		if(upload.size()>0){
			String src=upload.get(0);
			//获得用户id
			
			logger.info("upload file to qiniu:"+src);
			return src;

		}
		logger.debug("no upload file to qiniu:");
		
		return "null";
	}
	
}

