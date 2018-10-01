package cc.siriuscloud.dtxz.bean;

///*==============================================================*/
///* Table: dtxz_paper_exe                                        */
///*==============================================================*/
//create table dtxz_paper_exe
//(
//   pe_id                varchar(32) not null,
//   ep_id                varchar(32) not null,
//   exercise_id          varchar(32) not null,
//   primary key (pe_id)
//);

public class Paper_exe {

	private String pe_id;
	private String ep_id;
	private String exercise_id;
	
	public Paper_exe(){
		
	}

	public Paper_exe(String pe_id, String ep_id, String exercise_id) {
		super();
		this.pe_id = pe_id;
		this.ep_id = ep_id;
		this.exercise_id = exercise_id;
	}

	public String getPe_id() {
		return pe_id;
	}

	public void setPe_id(String pe_id) {
		this.pe_id = pe_id;
	}

	public String getEp_id() {
		return ep_id;
	}

	public void setEp_id(String ep_id) {
		this.ep_id = ep_id;
	}

	public String getExercise_id() {
		return exercise_id;
	}

	public void setExercise_id(String exercise_id) {
		this.exercise_id = exercise_id;
	}
	
}
