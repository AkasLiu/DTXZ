package cc.siriuscloud.dtxz.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import cc.siriuscloud.dtxz.bean.User;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		//取出session，
		
		//验证session域
		User user = (User) request.getSession().getAttribute("loginUser");
		if(user!=null&&user.getEmail()!=null){
			
			return true;
		}
		
		String servletPath = request.getServletPath();
//		System.out.println(servletPath);
//		
		//放行后台请求
		if(servletPath.startsWith("/ms")){
			
			return true;
		};
		

		response.sendRedirect("/relogin.do");
		
		return false;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {

		
	}

	
	
	
	
}
