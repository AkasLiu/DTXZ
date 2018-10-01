package cc.siriuscloud.dtxz.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cc.siriuscloud.dtxz.bean.Clazz;
import cc.siriuscloud.dtxz.bean.Exam;
import cc.siriuscloud.dtxz.bean.Exampaper;
import cc.siriuscloud.dtxz.bean.Exercise;
import cc.siriuscloud.dtxz.bean.Submit;
import cc.siriuscloud.dtxz.bean.User;
import cc.siriuscloud.dtxz.bean.vo.HisExamVo;
import cc.siriuscloud.dtxz.bean.vo.PageBean;
import cc.siriuscloud.dtxz.bean.vo.SubmitVo;
import cc.siriuscloud.dtxz.bean.vo.TitleVo;
import cc.siriuscloud.dtxz.service.ClazzService;
import cc.siriuscloud.dtxz.service.ExamService;
import cc.siriuscloud.dtxz.service.NoticeService;
import cc.siriuscloud.dtxz.service.SubmitService;
import cc.siriuscloud.dtxz.service.UserService;



/**
 * @author beanSeedling
 * 考试页面的入口 包括 创建考试 考场页面 当前考试 历史考试 我的考试记录
 * 
 */
@Controller
@RequestMapping("exam")
public class ExamController {
	@Resource
	ClazzService clazzService;
	@Resource
	UserService userService;
	@Resource
	ExamService examService;
	@Resource
	NoticeService noticeService;
	@Resource
	private SubmitService submitService;
	
	
	
	/**
	 * 创建考卷前
	 */
	@RequestMapping("createinfo")
	public String createinfo() {
		return "exam_createinfo";
	}
	
	/**
	 * 创建试卷
	 * @return
	 */
	@RequestMapping("createpaper") 
	public ModelAndView createpaper(HttpSession session, Exampaper exampaper) {
		User use = (User) session.getAttribute("loginUser");
		exampaper.setTeacherId( use.getUserId() );
		String epId = examService.createExampaper(exampaper);
//		重定向到创建试题页面
		ModelAndView mv=new ModelAndView();
//		mv.addObject("epId", epId);
		mv.setViewName("redirect:createexeUI.do?epId=" + epId + "&page=" + 1);
		return mv;
	}
	
	/**
	 * 创建考卷对应的考题页面
	 * @return
	 */
	@RequestMapping("createexeUI") 
	public ModelAndView createrexeUI(String epId, int page){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("exam_createexeUI");
//		保存到mv里
		mv.addObject("epId", epId);
		mv.addObject("page", page);
		return mv;
	}
	
	/**
	 * 创建考题的后台处理 （下一题 创建试卷前的操作）
	 */
	@RequestMapping("createexe")
	public ModelAndView createexe(HttpSession session, TitleVo titleVo) {
		User use = (User) session.getAttribute("loginUser");
		String epId = titleVo.getEpId();
		int page = titleVo.getPage() + 1;			// 下一页
		int flag = titleVo.getFlag(); 
		String type = titleVo.getType();
		// 设置选项内容		
		String description = titleVo.getaOtpion() + "|" + titleVo.getbOtpion() + "|" + titleVo.getcOtpion()
			+ "|" + titleVo.getdOtpion();
		
		ModelAndView mv=new ModelAndView();
//		先创建试题
		Exampaper ep = new Exampaper();
		ep.setEpId(epId);
		Exercise exercise = new Exercise();
		exercise.setTitle( titleVo.getTitle() );
		exercise.setWriterId( use.getUserId() );				// 暂时不考虑试题作者（共享）
		exercise.setType( type );
		
//		根据类型保存答案（答案不可以为空）
		if (("radio").equals(type)) {
			// 单选题答案
			String answer = titleVo.getRadioAnswer();
			if (answer == null) {
				exercise.setAnswer( "" );
			} else {
				exercise.setAnswer( answer );
			}
			exercise.setDescription(description);
		} else if (("check").equals(type)) {
			exercise.setDescription(description);
			//	多选题答案
			String checkan[] = titleVo.getCheckAnswer();
			if (checkan.length > 0) {
				exercise.setAnswer( String.join("|", checkan) );
			} 
		} else {
			exercise.setAnswer( titleVo.getTextAnswer() );
			exercise.setDescription("");
		}
//		创建试题
		examService.createExercise(exercise);
//		创建试题-试卷关联
		examService.createPaperExe(ep, exercise);
		System.out.println(flag);
//		判断是否结束创建
		if (flag == 0) {
			mv.setViewName("redirect:createexeUI.do?epId=" + epId + "&page=" + page);
		} else {
//			JOptionPane.showMessageDialog(null, "创建试卷成功");
//			return "<script>alert('创建成功！');</script>";
			mv.setViewName("user_personal");
		}
		
		return mv;
	}
	
	/**
	 * 提交答案 —— 下一页
	 * @return
	 */
	@RequestMapping("submit") 
	public String nexttitle(HttpSession session, TitleVo titleVo){
		String type = titleVo.getType();
		Submit sub = new Submit();
		User use = (User) session.getAttribute("loginUser");
		sub.setExerciseId( titleVo.getExerciseId() );
		sub.setExamineeId( use.getUserId() );
//		判断类型获取答案
		if (type.equals("radio")) {
			sub.setAnswer( titleVo.getRadioAnswer() );	
		} else if (type.equals("check")) {
//			将多选题的答案转字符串
//			要加判空
			String[] checkanswer = titleVo.getCheckAnswer();
			if (checkanswer != null)
				sub.setAnswer( String.join("|", checkanswer) );
		} else {
			sub.setAnswer( "填空题答案" + titleVo.getTextAnswer() );
		}
		examService.answer(sub);
		String urlnext = "redirect:doingUI.do?page=" + ( titleVo.getPage()+1 ) + "&examId=" + (titleVo.getExamId());
		String urlend = "redirect:historyexam.do";
		System.out.println(titleVo.getFlag());
//		判断是下一题还是结束
		if (titleVo.getFlag() == 1) {
			return urlend;
		} else {
			return urlnext;
		}
	}
	
	/**
	 * 结束考试（提交+跳转到历史考试）
	 */
	/*@RequestMapping("stopsubmit")
	public String stopsubmit(HttpSession session, TitleVo titleVo) {
		// 重定向到历史考试		
		return "redirect:historyexam.do";
	}*/
	
	/**
	 * 考场的视图
	 * @return
	 */
	@RequestMapping("doingUI") 
	public ModelAndView doingUI(HttpSession session,TitleVo titleVo){
		User user = (User) session.getAttribute("loginUser"); 
		
		if (titleVo.getPage() == 0) {
			titleVo.setPage(1);
		}
		
		// 获取题目
		Exercise exe = examService.getExe(titleVo);
		// 获取题目总数
		titleVo.setPageNum( examService.getExeNum(titleVo) );
		
		ModelAndView mv=new ModelAndView();
		
		// 判断是否有题目		
		if (exe == null) {
			mv.setViewName("redirect:curexam.do");
			return mv;
		}
		// 根据type选择不同的做题页面
		switch(exe.getType()) {
			case "radio": mv.setViewName("exam_doingUI");  break;
			case "check": mv.setViewName("exam_doingUI2");  break;
			case "text": mv.setViewName("exam_doingUI3"); break;
			default: mv.setViewName("exam_doingUI"); break;
		}
		
		// r如果是选择题		
		if (! exe.getType().equalsIgnoreCase("text") ) {
			String option[] = exe.getDescription().split("\\|"); 
			if (option.length < 4) {

			} else {
				titleVo.setaOtpion(option[0]);
				titleVo.setbOtpion(option[1]);
				titleVo.setcOtpion(option[2]);
				titleVo.setdOtpion(option[3]);
			}
		}
		// 获取考场信息并保存
		Exam exam = examService.selectExam( titleVo.getExamId() );
		mv.addObject("exe", exe);
		mv.addObject("titleVo", titleVo);
		mv.addObject("exam", exam);
		
		return mv;
	}
	
	/**
	 * 当前考试的视图
	 * @return
	 */
	@RequestMapping("curexam") 
	public ModelAndView curexam(HttpSession session,Integer pageNum){

		/*
		 * 当前页：pageNum
		 * 页大小：pageSize
		 * 总记录数：totalRecord
		 */
		//获得当前用户
		User user = (User)session.getAttribute("loginUser");
	
		PageBean <Exam>page=new PageBean<>();
		
		if(pageNum!=null){
			page.setPageNum(pageNum);
		}

		page.setPageSize(3);
		//查找到分页对象
		page=examService.findExamWithUserIdToPage(page,user);		
		
		ModelAndView mv=new ModelAndView();
		mv.addObject("page", page);
		mv.setViewName("exam_curexam");

		return mv;
	}
	
	/**
	 * 历史考试的视图
	 * @return
	 */
	@RequestMapping("historyexam") 
	public ModelAndView historyexam(HttpSession session){
		User user = (User)session.getAttribute("loginUser");
		List<HisExamVo> hislist = examService.getHisExam(user);
//		System.out.println("历史考试：");
//		for (int i = 0; i < hislist.size(); i++ ) {
//			System.out.println(hislist.get(i));
//		}
		ModelAndView mv=new ModelAndView();
		mv.setViewName("exam_historyexam");
		// 存储数据
		mv.addObject("hislist", hislist);
		return mv;
	}
	
	/**
	 * 我的考试记录的视图
	 * @return
	 */
	@RequestMapping("myexam") 
	public ModelAndView myexam(HttpSession session, HttpServletRequest request){
		User user = (User)session.getAttribute("loginUser");
		// 获取班级
		List<Clazz> clazzlist = clazzService.findByTeacherId(user.getUserId());
		//	获取试卷
		List<Exampaper> eplist = examService.getPaper(user);
		ModelAndView mv=new ModelAndView();
		
		mv.setViewName("exam_myexam");
		mv.addObject("clazzlist", clazzlist);
		mv.addObject("eplist", eplist);
		return mv;
	}
	
	@RequestMapping("startexam")
	@ResponseBody
	public String startExam(HttpSession session, HttpServletRequest request,  Exam exam) {
		
		if(exam == null) {
			return "<script>alert('创建失败，选择信息有误！');window.location.href='/exam.myexam.do';</script>";
		}
		
//		duration要*60转化为秒
		int duration = exam.getDuration();
		exam.setDuration(duration * 60);
		exam.setCreatetime(new Date());
//		创建考场
		int row = examService.createExam(exam);
		String examId = exam.getExamId();
//		System.out.println("examid" + examId);
		String clazz= exam.getClazzId();
		String mesCont = "/exam/doingUI.do?examId=" + examId;
//		发送通知给班级
		noticeService.insertByUserClazz(clazz, mesCont);
		
		if (row == 0) {
			return "<script>alert('创建失败，选择信息有误！');window.location.href='/exam/myexam.do';</script>";
		} else {
			
			return "<script>alert('创建成功！');window.location.href='/exam/myexam.do';</script>";
		}
		
	}
	

	
	/**
	 * 错题集的视图
	 * @return
	 */
	@RequestMapping("errorunion") 
	public ModelAndView errorunion(HttpSession session,Integer pageNum){
		
		PageBean<SubmitVo> page = new PageBean<SubmitVo>();
		
		if(pageNum!=null){
			page.setPageNum(pageNum);
		}
		//TODO 分页大小
		page.setPageSize(8);
		
		
		//获取userid
		User user=(User)session.getAttribute("loginUser");
		page = submitService.findErrorSubmitsByUserId(page,user.getUserId());
		
		//返回视图
		ModelAndView mv=new ModelAndView();
		mv.addObject("page", page);
		mv.setViewName("exam_errorunion");
		
		return mv;
	}
	
	/**
	 * @author sirius
	 * 错题的视图
	 * @return
	 */
	@RequestMapping("errortitle") 
	public ModelAndView errortitle(String submitId){
		
		//TODO 怎么解析出答案？
		
		ModelAndView mv=new ModelAndView();
		SubmitVo submitVo = submitService.findSubmitVo(submitId);
		
		mv.addObject("submitVo", submitVo);
		mv.setViewName("exam_errortitle");
		
		return mv;
	}
}
