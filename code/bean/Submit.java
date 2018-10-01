package cc.siriuscloud.dtxz.bean;

///*==============================================================*/
///* Table: dtxz_Submit                                           */
///*==============================================================*/
//create table dtxz_Submit
//(
//   submit_id            varchar(32) not null,
//   exercise_id          varchar(32) not null,
//   answer               text,
//   examinee_id          varchar(32) not null,
//   primary key (submit_id)
//);

public class Submit {

	private String submit_id;
	private String exercise_id;
	private String answer;
	private String examinee_id;
	
	public Submit(){
		
	}

	public Submit(String submit_id, String exercise_id, String answer, String examinee_id) {
		super();
		this.submit_id = submit_id;
		this.exercise_id = exercise_id;
		this.answer = answer;
		this.examinee_id = examinee_id;
	}

	public String getSubmit_id() {
		return submit_id;
	}

	public void setSubmit_id(String submit_id) {
		this.submit_id = submit_id;
	}

	public String getExercise_id() {
		return exercise_id;
	}

	public void setExercise_id(String exercise_id) {
		this.exercise_id = exercise_id;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getExaminee_id() {
		return examinee_id;
	}

	public void setExaminee_id(String examinee_id) {
		this.examinee_id = examinee_id;
	}
	
}
