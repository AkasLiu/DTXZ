package cc.siriuscloud.dtxz.ms.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.eclipse.jdt.internal.compiler.problem.ProblemSeverities;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cc.siriuscloud.dtxz.bean.Problem;
import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.bean.vo.ProblemVo;
import cc.siriuscloud.dtxz.service.EssayService;
import cc.siriuscloud.dtxz.service.UserService;

@Controller
@RequestMapping("ms/question")
public class QuestionMsController {
	
	@Resource
	private EssayService essayService;
	
	@Resource
	private UserService userService;
	
	@RequestMapping("essaySearch")
	public String essaySearch(HttpServletRequest request){		
		
		List<Problem> list = new ArrayList<Problem>();
		list = essayService.selectAllProblem();
		
		User user;
		
		List<ProblemVo> problems = new ArrayList<ProblemVo>();
		
		for(int i = 0; i<list.size(); i++){
			user = userService.selectByUserId(list.get(i).getUserId());
			ProblemVo problem = new ProblemVo();
			problem.setProblem(list.get(i));
			problem.setUser(user);
			
			problems.add(problem);
		}
		if(list != null){
			request.setAttribute("problems", problems);
		}
		
		return "/ms/essay_search";	
	}
	
	@RequestMapping("search")
	public String search(String title, HttpServletRequest request){
		
		List<Problem> list = essayService.selectProblemLikeTitle(title);
		
		User user;
		
		List<ProblemVo> problems = new ArrayList<ProblemVo>();
		if(list != null){
			for(int i = 0; i<list.size(); i++){
				user = userService.selectByUserId(list.get(i).getUserId());
				ProblemVo problem = new ProblemVo();
				problem.setProblem(list.get(i));
				problem.setUser(user);
				
				problems.add(problem);
			}

			request.setAttribute("problems", problems);
		}
		
		return "/ms/essay_search";	
		
	}
	
	@RequestMapping("delete")
	public String delete(String probId){
		
		int row = essayService.deleteProblem(probId);
		
		return "redirect:essaySearch.do";	
	}
	

}
