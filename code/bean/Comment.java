package cc.siriuscloud.dtxz.bean;

///*==============================================================*/
///* Table: dtxz_comment                                          */
///*==============================================================*/
//create table dtxz_comment
//(
//   comment_id           varchar(32) not null,
//   content              varchar(255) not null,
//   pub_time             datetime not null,
//   status               varchar(16),
//   user_id              varchar(32) not null,
//   answer_id            varchar(32) not null,
//   primary key (comment_id)
//);

import java.util.*;

public class Comment {

	private String comment_id;
	private String content;
	private Date pub_time;
	private String status;
	private String user_id;
	private String answer_id;
	
	public Comment(){
		
	}

	public Comment(String comment_id, String content, Date pub_time, String status, String user_id, String answer_id) {
		super();
		this.comment_id = comment_id;
		this.content = content;
		this.pub_time = pub_time;
		this.status = status;
		this.user_id = user_id;
		this.answer_id = answer_id;
	}

	public String getComment_id() {
		return comment_id;
	}

	public void setComment_id(String comment_id) {
		this.comment_id = comment_id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getPub_time() {
		return pub_time;
	}

	public void setPub_time(Date pub_time) {
		this.pub_time = pub_time;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getAnswer_id() {
		return answer_id;
	}

	public void setAnswer_id(String answer_id) {
		this.answer_id = answer_id;
	}
	
}
