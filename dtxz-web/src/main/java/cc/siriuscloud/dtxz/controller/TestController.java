package cc.siriuscloud.dtxz.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("test")
public class TestController extends BaseController{

	@RequestMapping("dotest")
	public String dotest(HttpServletRequest request){
		
		request.setAttribute("msg", "错误测试");
		request.setAttribute("url", "/index.do");
		
		return "forward:/forward.do";
	}
	@RequestMapping("doredirect")
	public String dotest(RedirectAttributes attr){
		attr.addAttribute("msg", "302 test");
		attr.addAttribute("url", "/index.do");
		
		
		
		return "redirect:/error.do";
	}
	
}
