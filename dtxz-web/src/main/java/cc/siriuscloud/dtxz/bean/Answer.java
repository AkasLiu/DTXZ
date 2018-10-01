package cc.siriuscloud.dtxz.bean;

import java.util.Date;

public class Answer {
    private String answerId;

    private String title;

    private String content;

    private Integer praiseCount;

    private Date pubTime;

    private String status;

    private String userId;

    private String probId;

    public String getAnswerId() {
        return answerId;
    }

    public void setAnswerId(String answerId) {
        this.answerId = answerId == null ? null : answerId.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Integer getPraiseCount() {
        return praiseCount;
    }

    public void setPraiseCount(Integer praiseCount) {
        this.praiseCount = praiseCount;
    }

    public Date getPubTime() {
        return pubTime;
    }

    public void setPubTime(Date pubTime) {
        this.pubTime = pubTime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getProbId() {
        return probId;
    }

    public void setProbId(String probId) {
        this.probId = probId == null ? null : probId.trim();
    }

	@Override
	public String toString() {
		return "Answer [answerId=" + answerId + ", title=" + title + ", content=" + content + ", praiseCount="
				+ praiseCount + ", pubTime=" + pubTime + ", status=" + status + ", userId=" + userId + ", probId="
				+ probId + "]";
	}
    
    
}