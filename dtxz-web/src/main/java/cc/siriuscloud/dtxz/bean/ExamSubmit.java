package cc.siriuscloud.dtxz.bean;

import java.util.Date;

public class ExamSubmit {
    private String examId;//考试id

    private String title;//考试标题

    private String status;//考试状态

    private Date createtime;//考试创建时间

    private Date begintime;//考试结束时间

    private Integer duration;//考试时长

    private String clazzId;//班级id

    private String epId;//试卷id

    private String epTitle;//试卷标题

    private String epDescription;//试卷描述

    private String teacherId;//试卷命题老师id

    private String peId;//标识，没啥用

    private String exerciseId;//题目id

    private String ecTitle;//题目标题

    private String ecDescription;//题目描述

    private String type;//题目类型

    private String ecWriter;//命题者id

    private String submitId;//题目回答的id

    private String examineeId;// 答题者id

    public String getExamId() {
        return examId;
    }

    public void setExamId(String examId) {
        this.examId = examId == null ? null : examId.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getBegintime() {
        return begintime;
    }

    public void setBegintime(Date begintime) {
        this.begintime = begintime;
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public String getClazzId() {
        return clazzId;
    }

    public void setClazzId(String clazzId) {
        this.clazzId = clazzId == null ? null : clazzId.trim();
    }

    public String getEpId() {
        return epId;
    }

    public void setEpId(String epId) {
        this.epId = epId == null ? null : epId.trim();
    }

    public String getEpTitle() {
        return epTitle;
    }

    public void setEpTitle(String epTitle) {
        this.epTitle = epTitle == null ? null : epTitle.trim();
    }

    public String getEpDescription() {
        return epDescription;
    }

    public void setEpDescription(String epDescription) {
        this.epDescription = epDescription == null ? null : epDescription.trim();
    }

    public String getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(String teacherId) {
        this.teacherId = teacherId == null ? null : teacherId.trim();
    }

    public String getPeId() {
        return peId;
    }

    public void setPeId(String peId) {
        this.peId = peId == null ? null : peId.trim();
    }

    public String getExerciseId() {
        return exerciseId;
    }

    public void setExerciseId(String exerciseId) {
        this.exerciseId = exerciseId == null ? null : exerciseId.trim();
    }

    public String getEcTitle() {
        return ecTitle;
    }

    public void setEcTitle(String ecTitle) {
        this.ecTitle = ecTitle == null ? null : ecTitle.trim();
    }

    public String getEcDescription() {
        return ecDescription;
    }

    public void setEcDescription(String ecDescription) {
        this.ecDescription = ecDescription == null ? null : ecDescription.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getEcWriter() {
        return ecWriter;
    }

    public void setEcWriter(String ecWriter) {
        this.ecWriter = ecWriter == null ? null : ecWriter.trim();
    }

    public String getSubmitId() {
        return submitId;
    }

    public void setSubmitId(String submitId) {
        this.submitId = submitId == null ? null : submitId.trim();
    }

    public String getExamineeId() {
        return examineeId;
    }

    public void setExamineeId(String examineeId) {
        this.examineeId = examineeId == null ? null : examineeId.trim();
    }
}