package cc.siriuscloud.dtxz.bean;

///*==============================================================*/
///* Table: dtxz_user_class                                       */
///*==============================================================*/
//create table dtxz_user_class
//(
//   uc_id                varchar(32) not null,
//   user_id              varchar(32) not null,
//   clazz_id             varchar(32) not null,
//   primary key (uc_id)
//);

public class User_clazz {

	private String uc_id;
	private String user_id;
	private String clazz_id;
	
	public User_clazz(){
		
	}

	public User_clazz(String uc_id, String user_id, String clazz_id) {
		super();
		this.uc_id = uc_id;
		this.user_id = user_id;
		this.clazz_id = clazz_id;
	}

	public String getUc_id() {
		return uc_id;
	}

	public void setUc_id(String uc_id) {
		this.uc_id = uc_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getClazz_id() {
		return clazz_id;
	}

	public void setClazz_id(String clazz_id) {
		this.clazz_id = clazz_id;
	}
	
}
