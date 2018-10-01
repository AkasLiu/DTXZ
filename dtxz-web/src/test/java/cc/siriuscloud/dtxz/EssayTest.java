package cc.siriuscloud.dtxz;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cc.siriuscloud.dtxz.bean.Answer;
import cc.siriuscloud.dtxz.bean.Comment;
import cc.siriuscloud.dtxz.bean.Problem;
import cc.siriuscloud.dtxz.bean.vo.AnswerVo;
import cc.siriuscloud.dtxz.bean.vo.CommentVo;
import cc.siriuscloud.dtxz.bean.vo.PageBean;
import cc.siriuscloud.dtxz.bean.vo.ProblemVo;
import cc.siriuscloud.dtxz.dao.AnswerMapper;
import cc.siriuscloud.dtxz.dao.ProblemMapper;
import cc.siriuscloud.dtxz.service.EssayService;
import cc.siriuscloud.dtxz.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-ssm.xml")
public class EssayTest {

	@Resource
	private EssayService essayService;
	
	@Resource
	private UserService userService;
	
	@Resource
	private ProblemMapper problemDao;
	
	@Resource
	private AnswerMapper answerDao;
	
	/**
	 * 测试插入提出问题
	 */
	@Test
	public void insertProblemTest(){
		Problem problem = new Problem();
		problem.setTitle("00000000");
		problem.setContent("趣味的知识太多了,小学有小学的解释,高中有高中的解释,就是你学到教授了,生活中的物理知识都没法完全搞懂。太多了。看不见是因为知识不够。");
		Date date = new Date();          // 获取一个Date对象
        Timestamp timeStamp = new Timestamp(date.getTime());     //   讲日期时间转换为数据库中的timestamp类型
		problem.setPubTime(timeStamp);
		problem.setUserId("44a57692f3ab11e7a714507b9d2d30b0");
		int row=essayService.insertProblemByUUID(problem);
		System.out.println(row);
	}
	
	/**
	 * 测试插入回答
	 */
	@Test
	public void insertAnswerTest(){
		Answer answer = new Answer();
		answer.setContent("伯努利原理");
		answer.setProbId("1623194bf3ae11e7a714507b9d2d30b0");
		answer.setUserId("44a57692f3ab11e7a714507b9d2d30b0");
		int row=essayService.answerQuestion(answer);
		System.out.println(row);
	}
	
	/**
	 * 测试插入评论
	 */
	@Test
	public void insertCommentTest(){
		Comment comment = new Comment();
		comment.setContent("说得真好");
		comment.setUserId("44a57692f3ab11e7a714507b9d2d30b0");
		comment.setAnswerId("d7f20137f3b811e7a714507b9d2d30b0");
		int row=essayService.commentAnswer(comment);
		System.out.println(row);
	}
	
	/**
	 * 测试插入一条评论
	 */
	@Test
	public void insertCommentTest2(){
		int row=essayService.insertComment("说得真好", "0d66862bf45211e7916a507b9d2d30b0", "116a18e0f47911e7916a507b9d2d30b0");
		System.out.println("可以："+row);
	}
	
	/**
	 * 测试更新获赞数
	 */
	@Test
	public void updatePraiseCountTest(){
		String answerId="056ca535f5ce11e7af7b507b9d2d30b0";
		essayService.updatePraiseCount(answerId);
		System.out.println("shuchu");
	}
	
	/**
	 * 测试查询所有问题
	 */
	@Test
	public void selectProblemTest(){
		PageHelper.startPage(1, 5);//1.添加插件api方法
		//2.查询 操作，返回的List已经是动态代理的类型
		List<Problem> list = problemDao.selectAll();
//		System.out.println(list.getClass().getName());
		for (Problem problem : list) {
			System.out.println(problem);
		}
		
		PageInfo<Problem> info = new PageInfo<>(list);
		System.out.println("总记录数:"+info.getTotal());
		System.out.println("总页数:"+info.getPages());
		System.out.println("当前页:"+info.getPageNum());
		System.out.println("记录信息:"+info.getList());
		System.out.println("所有导航页号:"+info.getNavigatepageNums());
	}
	
	/**
	 * 测试查询一页问题
	 */
	@Test
	public void selectPerPageTest(){
		
		PageBean<ProblemVo> page = new PageBean<>();
		page.setPageNum(3);
		page.setPageSize(3);
		
		page = essayService.selectProblemPerPage(page);
		
		for(ProblemVo list:page.getData()){
			
			System.out.println("输出问题ID:"+list.getProblem().getProbId());
		}
	}
	
	@Test
	public void selectPerPageTest2(){
		
		PageBean<ProblemVo> page = new PageBean<>();
		page.setPageNum(1);
		page.setPageSize(3);
		System.out.println("11111");
		page = essayService.selectMyProblemPerPage(page, "44a57692f3ab11e7a714507b9d2d30b0");
		
		for(ProblemVo list:page.getData()){
			
			System.out.println("输出问题内容:"+list.getProblem().getContent());
		}
	}
	
	/**
	 * 测试查询一页答案
	 */
	@Test
	public void PerPageAnswerTest(){
		PageBean<AnswerVo> page = new PageBean<AnswerVo>();
		
		page.setPageNum(1);
		page.setPageSize(2);

		page=essayService.selectAnswerPerPage(page, "11111");
	
		for(AnswerVo avo:page.getData()){
			System.out.println("--回答:"+avo.getAnswer());
			
			for(CommentVo cvo:avo.getCommentVos()){
				System.out.println("----评论："+cvo.getComment());
			}
		}
	}
	
	/**
	 * 测试查询一页答案
	 */
	@Test
	public void insertProblemTest2(){
//		List<Problem> problem=problemDao.selectN(5);
//		for (Problem list:problem){
//			System.out.println("热门问题:"+list.getProbId());
//		}
		
		List<ProblemVo> problemVos=essayService.selectHotProblem(5);
		for (ProblemVo list:problemVos){
			System.out.println("热门问题:"+list.getProblem().getProbId());
		}	
	}
	
	/**
	 * 更新答案状态测试
	 */
	@Test
	public void updateAnswerStatus(){
		essayService.agreeTheAnswer("003469b1f5d811e7af7b507b9d2d30b0","f75546a9f5cd11e7af7b507b9d2d30b0");
	}
}	
	