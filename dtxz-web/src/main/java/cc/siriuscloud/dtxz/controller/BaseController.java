package cc.siriuscloud.dtxz.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


public class BaseController {

	/**
	 * 错误页面,redirect 支持
	 * @return
	 */
	@RequestMapping("error")
	@ResponseBody
	public String error(String msg,String url,String back){
		
		String txt="alert('"+msg+"');";
		
		if(null!=null&&!back.equals("null")){
			
			txt=txt+"window.history.back();";
			
		}else if(url!=null&&!url.equals("null")){
			txt=txt+"window.location.href='"+url+"';";
		}
		return "<script>"+txt+"</script>";
	}
	
	/**
	 * 重定向forward支持
	 * 先在request.setAttr，再跳转到这里
	 * @return
	 */
	@RequestMapping("forward")
	@ResponseBody
	public String forward(HttpServletRequest request){
		
		String msg=(String) request.getAttribute("msg");
		String url=(String) request.getAttribute("url");
		
		String txt="alert('"+msg+"');";
		
		if(url!=null&&url.length()>1){
			txt=txt+"window.location.href='"+url+"';";
		}
		return "<script>"+txt+"</script>";
	}
	
	
	
}
