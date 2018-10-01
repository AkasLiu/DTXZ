package cc.siriuscloud.dtxz.bean;

///*==============================================================*/
///* Table: dtxz_exampaper                                        */
///*==============================================================*/
//create table dtxz_exampaper
//(
//   ep_id                varchar(32) not null,
//   title                varchar(64) not null,
//   description          varchar(255),
//   teacher_id           varchar(32) not null,
//   primary key (ep_id)
//);

public class Exampaper {

	private String ep_id;
	private String title;
	private String description;
	private String teacher_id;
	
	public Exampaper() {
		// TODO Auto-generated constructor stub
	}

	public Exampaper(String ep_id, String title, String description, String teacher_id) {
		super();
		this.ep_id = ep_id;
		this.title = title;
		this.description = description;
		this.teacher_id = teacher_id;
	}

	public String getEp_id() {
		return ep_id;
	}

	public void setEp_id(String ep_id) {
		this.ep_id = ep_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTeacher_id() {
		return teacher_id;
	}

	public void setTeacher_id(String teacher_id) {
		this.teacher_id = teacher_id;
	}
	
}
