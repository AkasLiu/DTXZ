package cc.siriuscloud.dtxz.bean.vo;

import java.sql.Date;

public class HisExamVo {
	private String examId;		// 考试ID
	private String title;				// 考试名称
	private Date begintime;	// 开始时间
	private Date createtime;	// 创建时间
	private int duration;			// 时长
	private int corNum;			// 对的个数
	private int allNum;			// 总的个数
	
	
	
	@Override
	public String toString() {
		return "HisExamVo [examId=" + examId + ", title=" + title + ", begintime=" + begintime + ", createtime=" + createtime + ",duration="
		        + duration + ", corNum=" + corNum + ", allNum=" + allNum + "]";
	}
	
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	
	public int getAllNum() {
		return allNum;
	}
	public void setAllNum(int allNum) {
		this.allNum = allNum;
	}
	public Date getBegintime() {
		return begintime;
	}
	public void setBegintime(Date begintime) {
		this.begintime = begintime;
	}
	public int getCorNum() {
		return corNum;
	}
	public void setCorNum(int corNum) {
		this.corNum = corNum;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public String getExamId() {
		return examId;
	}
	public void setExamId(String examId) {
		this.examId = examId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
}
