package cc.siriuscloud.dtxz.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import cc.siriuscloud.dtxz.bean.Answer;
import cc.siriuscloud.dtxz.bean.Comment;
import cc.siriuscloud.dtxz.bean.Problem;
import cc.siriuscloud.dtxz.bean.vo.AnswerVo;
import cc.siriuscloud.dtxz.bean.vo.PageBean;
import cc.siriuscloud.dtxz.bean.vo.ProblemVo;

public interface EssayService {
	
	/**
	 * 插入一条问题
	 */
	public int insertProblemByUUID(Problem problem);
	
	/**
	 * 获取该问题具体内容
	 */
	public  ProblemVo getConcreteProblem(String UUID);
	
	/**
	 * 回答问题
	 */
	public int answerQuestion(Answer answer);
	
	/**
	 * 评论
	 */
	public int commentAnswer(Comment comment);
	
	/**
	 * 更新获赞数
	 */
	public void updatePraiseCount(String answerId);
	
	/**
	 * 获取一页的问题
	 */
	public PageBean<ProblemVo> selectProblemPerPage(PageBean page);
	
	/**
	 * 获取热门问题
	 * @param page 获取个数
	 */
	public List<ProblemVo> selectHotProblem(int size);
	
	/**
	 * 获取一页的我的历史问题
	 */
	public  PageBean<ProblemVo> selectMyProblemPerPage(PageBean page,String userId);

	/**
	 * @author haifan
	 * @modify sirius
	 * 问题的一页回答和评论
	 * @param page
	 * @param probId
	 * @return
	 */
	public PageBean<AnswerVo> selectAnswerPerPage(PageBean<AnswerVo> page,String probId);
	
	/**
	 * 插入一条问题
	 */
	public int insertOneProblem(String title,String content,String userId);
	
	/**
	 * 插入一条评论
	 */
	public int insertComment(String content,String answerId,String userId);

	/**
	 * 根据问题id查询出问题答案
	 * @param page
	 * @param probId
	 * @return
	 */
	public PageBean<AnswerVo> findAnswerVo(PageBean<AnswerVo> page, String probId);
	
	/**
	 * 采用
	 */
	public void agreeTheAnswer(String answerId,String probId);
	
	/*
	 * 查询所有的问题
	 * @author Ace
	 * 
	 */
	public List<Problem> selectAllProblem();

	
	/*
	 * 根据title查询问题
	 * @author Ace
	 * 
	 */
	public List<Problem> selectProblemLikeTitle(String title);
	
	
	/*
	 * 根据probId删除问题
	 * @author Ace
	 * 
	 */
	public int deleteProblem(String probId);
	
}
