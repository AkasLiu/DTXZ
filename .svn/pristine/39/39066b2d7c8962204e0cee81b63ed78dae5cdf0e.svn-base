package cc.siriuscloud.dtxz.service.impl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;

import cc.siriuscloud.dtxz.bean.Answer;
import cc.siriuscloud.dtxz.bean.Comment;
import cc.siriuscloud.dtxz.bean.Problem;
import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.bean.vo.AnswerVo;
import cc.siriuscloud.dtxz.bean.vo.CommentVo;
import cc.siriuscloud.dtxz.bean.vo.PageBean;
import cc.siriuscloud.dtxz.bean.vo.ProblemVo;
import cc.siriuscloud.dtxz.dao.AnswerMapper;
import cc.siriuscloud.dtxz.dao.CommentMapper;
import cc.siriuscloud.dtxz.dao.ProblemMapper;
import cc.siriuscloud.dtxz.dao.UserMapper;
import cc.siriuscloud.dtxz.service.EssayService;

@Service
public class EssayServiceImpl implements EssayService {

	@Resource
	ProblemMapper problemDao;
	
	@Resource
	AnswerMapper answerDao;
	
	@Resource
	CommentMapper commentDao;
	
	@Resource
	UserMapper userDao;
	
	/**
	 * 提出问题
	 */
	@Override
	public int insertProblemByUUID(Problem problem){
		return problemDao.insertProblemByUUID(problem);
	}
	
	/**
	 * 获取一页的问题
	 */
	@Override
	public PageBean<ProblemVo> selectProblemPerPage(PageBean page){	
		//先查条目数	
		Long totalRecord = problemDao.selectCountAll();
		page.setTotalRecord(totalRecord);		
		page.buildParams();
		
		PageHelper.startPage(page.getPageNum(), page.getPageSize());//1.添加插件api方法
		
		//2.查询 操作，返回的List已经是动态代理的类型
		List<Problem> problems = problemDao.selectAll();
		List<ProblemVo> problemVos = new ArrayList<ProblemVo>();
		User user = new User();		
		Long answerCount;
		for(Problem list : problems) {
			 ProblemVo problemVo = new ProblemVo();
			 user=userDao.selectByPrimaryKey(list.getUserId());
			 answerCount=answerDao.selectAnswerCountByProbId(list.getProbId());
			 problemVo.setUser(user);
			 problemVo.setProblem(list);
			 problemVo.setAnswerCount(answerCount);
			 problemVos.add(problemVo);
		}
		
		page.setData(problemVos);
		
		return page;
	}
	
	/**
	 * 获取一页的我的历史问题
	 */
	@Override
	public  PageBean<ProblemVo> selectMyProblemPerPage(PageBean page,String userId) {
		
		//先查条目数	
		Long totalRecord = problemDao.selectCountByUserId(userId);
		page.setTotalRecord(totalRecord);		
		page.buildParams();
		
		
		PageHelper.startPage(page.getPageNum(), page.getPageSize());//1.添加插件api方法
		//2.查询 操作，返回的List已经是动态代理的类型
		List<Problem> problems = problemDao.selectProblemByUserId(userId);
		
		
		List<ProblemVo> problemVos = new ArrayList<ProblemVo>();
		User user = new User();		
		Long answerCount;
		for(Problem list : problems) {
			 ProblemVo problemVo = new ProblemVo();
			 user=userDao.selectByPrimaryKey(list.getUserId());
			 answerCount=answerDao.selectAnswerCountByProbId(list.getProbId());
			 problemVo.setUser(user);
			 problemVo.setProblem(list);
			 problemVo.setAnswerCount(answerCount);
			 problemVos.add(problemVo);
		}
		
		page.setData(problemVos);
		
		return page;
	}
	
	/**
	 * 获取该问题具体内容
	 */
	@Override
	public  ProblemVo getConcreteProblem(String UUID) {	
		ProblemVo problemVo = new ProblemVo();
		Problem problem=problemDao.selectByPrimaryKey(UUID);
		User user=userDao.selectByPrimaryKey(problem.getUserId());
		Long answerCount=answerDao.selectAnswerCountByProbId(problem.getProbId());
		problemVo.setUser(user);
		problemVo.setProblem(problem);
		problemVo.setAnswerCount(answerCount);
		return problemVo;
	}
	
	
	/**
	 * 回答问题
	 */
	@Override
	public int answerQuestion(Answer answer) {
		Date date = new Date();          // 获取一个Date对象
        Timestamp timeStamp = new Timestamp(date.getTime());     //   讲日期时间转换为数据库中的timestamp类型
		answer.setPubTime(timeStamp);
		return answerDao.insertAnswerByUUID(answer);
	}
	
	
	/**
	 * 评论
	 */
//	@Override
	public int commentAnswer(Comment comment) {
//		Date date = new Date();          // 获取一个Date对象
//        Timestamp timeStamp = new Timestamp(date.getTime());     //   讲日期时间转换为数据库中的timestamp类型
//        comment.setPubTime(timeStamp);
//        return commentDao.insertComment(comment);
		return 0;
	}
	
	/**
	 * 插入一条评论
	 */
	@Override
	public int insertComment(String content,String answerId,String userId){
	    Comment comment = new Comment();
		Date date = new Date();          // 获取一个Date对象
        Timestamp timeStamp = new Timestamp(date.getTime());     //   讲日期时间转换为数据库中的timestamp类型
        comment.setPubTime(timeStamp);
        comment.setContent(content);
        comment.setAnswerId(answerId);
        comment.setUserId(userId);  
		return commentDao.insertComment(comment);
	}
	
	/**
	 * 更新获赞数
	 */
	@Override
	public void updatePraiseCount(String answerId) {
		Answer answer = new Answer();
		answer=answerDao.selectByPrimaryKey(answerId);
		answer.setPraiseCount(answer.getPraiseCount()+1);
		answerDao.updateByPrimaryKeySelective(answer);
	}
	
	/**
	 * 问题的一页回答和评论
	 */
	@Override
	public PageBean<AnswerVo> selectAnswerPerPage(PageBean<AnswerVo> page,String probId){
		
		
		
		//查询总记录数
		Long totalRecord=answerDao.selectAnswerCountByProbId(probId);
		page.setTotalRecord(totalRecord);
		page.buildParams();
		
		
		// 分页插件初始化
		PageHelper.startPage(page.getPageNum(), page.getPageSize());
		
		//2.查询 操作，返回的List已经是动态代理的类型
		List<Answer> answers = answerDao.selectAll(probId);
		
		
		List<AnswerVo> answerVos = new ArrayList<AnswerVo>();
		User userAnswer = new User();	
		User userComment = new User();
		List<Comment> comments = new ArrayList<Comment>();

		for(Answer list : answers) {
			 AnswerVo answerVo = new AnswerVo();
			 userAnswer=userDao.selectByPrimaryKey(list.getUserId());
			 List<CommentVo> commentVos = new ArrayList<CommentVo>();
			 //通过回答的id找到所有评论
			 comments=commentDao.selectAllByAnswerId(list.getAnswerId());
			 //循环一个回答中的所有评论
			 for(Comment commentList : comments) {
				 CommentVo commentVo = new CommentVo();
				 //获取评论用户
				 userComment=userDao.selectByPrimaryKey(commentList.getUserId());
				 commentVo.setComment(commentList);
				 commentVo.setUser(userComment);
				 commentVos.add(commentVo);			 				
			 }	 	
			 answerVo.setCommentVos(commentVos);
			 answerVo.setAnswer(list);
			 answerVo.setUser(userAnswer);
			 answerVos.add(answerVo);
		}
		
		page.setData(answerVos);
		return page;
	}

	@Override
	public PageBean<AnswerVo> findAnswerVo(PageBean<AnswerVo> page, String probId) {
		
		//查询probId
		
		//先查询总数据量
		Long totalRecord = answerDao.selectAnswerCountByProbId(probId);
		page.setTotalRecord(totalRecord);
		page.buildParams();
		
		PageHelper.startPage(page.getPageNum(), page.getPageSize(),false);
		
		
		List<AnswerVo>answerVos=answerDao.selectAnswerVos(probId);
		
		
		
		
		return null;
	}
	
	/**
	 * 用户提出问题处理
	 */
	@Override
	public int insertOneProblem(String title,String content,String userId){
		Problem problem = new Problem();
		problem.setTitle(title);
		problem.setContent(content);
		Date date = new Date();          // 获取一个Date对象
        Timestamp timeStamp = new Timestamp(date.getTime());     //   讲日期时间转换为数据库中的timestamp类型
        problem.setPubTime(timeStamp);
        problem.setUserId(userId);
		return problemDao.insertProblemByUUID(problem);
	}

	/**
	 * 获取热门问题
	 * @param page 获取个数
	 */
	@Override
	public List<ProblemVo> selectHotProblem(int size){
		List<Problem> problems=problemDao.selectN(size); 
		List<ProblemVo> problemVos=new ArrayList<ProblemVo>();
		User user = new User();
		Long answerCount;
		for(Problem list:problems){
			ProblemVo problemVo = new ProblemVo();
			answerCount=answerDao.selectAnswerCountByProbId(list.getProbId());
			user=userDao.selectByPrimaryKey(list.getUserId());
			problemVo.setProblem(list);
			problemVo.setAnswerCount(answerCount);
			problemVo.setUser(user);
			problemVos.add(problemVo);
		}
		return problemVos;
	}
	
	/**
	 * 采用
	 */
	public void agreeTheAnswer(String answerId,String probId){
		//1,先把该问题所有回答设为不采用
		 List<Answer> answers=answerDao.selectAll(probId);
		 for(Answer list:answers){
			 list.setStatus("不采用");
			 answerDao.updateByPrimaryKeySelective(list);
		 }
		//2,再把采用回答设为采用
		Answer answer=answerDao.selectByPrimaryKey(answerId);
		answer.setStatus("采用");
		answerDao.updateByPrimaryKeySelective(answer);
	}
	
	/*
	 * 查询所有的问题
	 * @author Ace
	 * 
	 */
	public List<Problem> selectAllProblem(){
		
		List<Problem> list = new ArrayList<Problem>();
		
		list = problemDao.selectAll();
		
		if(list.size() == 0)
			return null;
		else
			return list;
	}
	
	/*
	 * 根据title查询问题
	 * @author Ace
	 * 
	 */
	public List<Problem> selectProblemLikeTitle(String title){
		
		List<Problem> list = problemDao.selectProblemLikeTitle(title);
		
		if(list.size() == 0)
			return null;
		else
			return list;
	}
	
	/*
	 * 根据probId删除问题
	 * @author Ace
	 * 
	 */
	public int deleteProblem(String probId){
		return problemDao.deleteByPrimaryKey(probId);
	}
	
}
