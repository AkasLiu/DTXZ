package cc.siriuscloud.dtxz.bean.vo;

import java.util.Date;
import java.util.List;

import cc.siriuscloud.dtxz.bean.Problem;
import cc.siriuscloud.dtxz.bean.User;

/**
 * @author keyblade
 */
public class ProblemVo {
	
	private Problem problem;
	
	private User user;	//发起问题者
	
	private Long answerCount;//回答数

	public Problem getProblem() {
		return problem;
	}

	public void setProblem(Problem problem) {
		this.problem = problem;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Long getAnswerCount() {
		return answerCount;
	}

	public void setAnswerCount(Long answerCount) {
		this.answerCount = answerCount;
	}
	
	
}
