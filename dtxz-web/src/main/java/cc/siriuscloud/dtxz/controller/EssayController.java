package cc.siriuscloud.dtxz.controller;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;

import cc.siriuscloud.dtxz.bean.Answer;
import cc.siriuscloud.dtxz.bean.Problem;
import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.bean.vo.AnswerVo;
import cc.siriuscloud.dtxz.bean.vo.CommentVo;
import cc.siriuscloud.dtxz.bean.vo.PageBean;
import cc.siriuscloud.dtxz.bean.vo.ProblemVo;
import cc.siriuscloud.dtxz.dao.AnswerMapper;
import cc.siriuscloud.dtxz.service.EssayService;
import cc.siriuscloud.dtxz.service.NoticeService;

/**
 * @author Keyblade
 *问答页面入口 包括 用户发出提问 问题列表 问题的回答 我的问题 
 */
@Controller
@RequestMapping("essay")
public class EssayController {

	@Resource
	private EssayService essayService;
	
	@Resource
	private NoticeService noticeService;
	
	@Resource
	private AnswerMapper answerDao;
	
	/**
	 *用户发出提问
	 *@return
	 */
	@RequestMapping("quiz")
	public String quiz(){
		
		return "essay_quiz";
	}
	
	/**
	 *处理用户发出的问题
	 *@return
	 */
	@RequestMapping("handleQuiz")
	@ResponseBody
	public String handleQuiz(String title,String content,HttpSession session){
		User user = (User)session.getAttribute("loginUser");
		//插入该问题到表中
		int row=essayService.insertOneProblem(title, content, user.getUserId());
		return "<script>alert('提问发布成功');window.location.href='/essay/question.do';</script>";
	}
	
	/**
	 * @author haifan
	 * @modify sirius
	 * 问答详情页
	 *@return
	 */
	@RequestMapping("answer")
	public String answer(ModelMap model,String probId,Integer pageNum){
	
		//构造分页容器
		PageBean<AnswerVo> page = new PageBean<AnswerVo>();
		
		if(null!=pageNum){
			page.setPageNum(pageNum);
		}
		
		//TODO 页大小
		page.setPageSize(5);
		
		
		//获取问题Vo(problem和user)
		ProblemVo problemVo=essayService.getConcreteProblem(probId);
		
		//获取回答的Vo(answer的user和commentVos)
		page=essayService.selectAnswerPerPage(page,probId);
		
		//会送数据
		model.put("problemVo", problemVo);
		model.put("page", page);
		
		return "essay_answer";
	}
	
	/**
	 *我的问题
	 *@return
	 */
	@RequestMapping("myessay")
	public String myessay(ModelMap model,Integer  pageNum,HttpSession session){
		User user = (User)session.getAttribute("loginUser");
		PageBean<ProblemVo> page=new PageBean<>();
		
		if(pageNum!=null){
			page.setPageNum(pageNum);
		}
		
		page.setPageSize(5);
		
		page=essayService.selectMyProblemPerPage(page, user.getUserId());
		
		model.put("page", page);
		
		return "essay_myessay";
	}
	
	/**
	 * 问题列表
	 * @return
	 */
	@RequestMapping("question")
	public String question(ModelMap model,Integer  pageNum){
		
		PageBean<ProblemVo> page=new PageBean<>();
		
		if(pageNum!=null){
			page.setPageNum(pageNum);
		}
		
		page.setPageSize(7);
		
		page=essayService.selectProblemPerPage(page);
		
		model.put("page", page);
		
		return "essay_question";
	}
	
	/**
	 *用户评论
	 *@return
	 */
	@RequestMapping("comment")
	@ResponseBody
	public String comment(String probId,String content,String answerId,HttpSession session){
		User user = (User)session.getAttribute("loginUser");
		//插入一条评论
		int result=essayService.insertComment(content, answerId, user.getUserId());
		return "<script>alert('评论成功');window.location.href='/essay/answer.do?probId="+probId+"';</script>";
	}
	
	/**
	 *回答问题
	 *@return
	 */
	@RequestMapping("response")
	@ResponseBody
	public String handleAnswer(String probId,String answerContent,HttpSession session){
		User user = (User)session.getAttribute("loginUser");
		Answer answer = new Answer();
		answer.setProbId(probId);
		answer.setUserId(user.getUserId());
		answer.setContent(answerContent);
		Date date = new Date();          // 获取一个Date对象
        Timestamp timeStamp = new Timestamp(date.getTime());     //   讲日期时间转换为数据库中的timestamp类型
		answer.setPubTime(timeStamp);
		int row=essayService.answerQuestion(answer);
		return "<script>alert('回答问题成功');window.location.href='/essay/answer.do?probId="+probId+"';</script>";
	}

	/**
	 *点赞
	 */
	@RequestMapping("praise")
	@ResponseBody
	public String praise(String probId,String answerId){
		essayService.updatePraiseCount(answerId);
		return "<script>window.location.href='/essay/answer.do?probId="+probId+"';</script>";
	}
	
	/**
	 *采用
	 */
	@RequestMapping("agree")
	@ResponseBody
	public String agree(String answerId,String probId){
		Answer answer=answerDao.selectByPrimaryKey(answerId);
		essayService.agreeTheAnswer(answerId,probId);
		noticeService.insertByUser(answer.getUserId(), "恭喜您，你的回答已被采用");
		return "<script>window.location.href='/essay/answer.do?probId="+probId+"';</script>";
	}
	
}
