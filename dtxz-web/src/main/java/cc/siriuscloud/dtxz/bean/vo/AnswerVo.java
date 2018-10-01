package cc.siriuscloud.dtxz.bean.vo;

import java.util.List;

import cc.siriuscloud.dtxz.bean.Answer;
import cc.siriuscloud.dtxz.bean.Comment;
import cc.siriuscloud.dtxz.bean.User;

/**
 * @author keyblade
 * {
 * 	user,
 * 	
 * 	answer,
 * 
 * 	commentVos[
 * 		commentVo,
 * 			user,
 * 			comment,
 * 	...]
 * }
 */
public class AnswerVo {
	private User user; 	//回答问题者
	private Answer answer;
	private List<CommentVo> commentVos;
	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Answer getAnswer() {
		return answer;
	}
	public void setAnswer(Answer answer) {
		this.answer = answer;
	}
	public List<CommentVo> getCommentVos() {
		return commentVos;
	}
	public void setCommentVos(List<CommentVo> commentVos) {
		this.commentVos = commentVos;
	}

}
