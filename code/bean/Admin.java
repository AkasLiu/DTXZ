package cc.siriuscloud.dtxz.bean;

///*==============================================================*/
///* Table: dtxz_admin                                            */
///*==============================================================*/
//create table dtxz_admin
//(
//   admin_id             varchar(32) not null,
//   account              varchar(32) not null,
//   pwd                  varchar(32) not null,
//   role_id              varchar(32) not null,
//   primary key (admin_id)
//);

public class Admin {
	
	private String admin_id;
	private String account;
	private String pwd;
	private String role_id;
	
	public Admin(){
		
	}
	
	public Admin(String admin_id, String account, String pwd, String role_id){
		this.admin_id = admin_id;
		this.account = account;
		this.pwd = pwd;
		this.role_id = role_id;
	}
	
	public String getAdmin_id() {
		return admin_id;
	}
	
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	
	public String getAccount() {
		return account;
	}
	
	public void setAccount(String account) {
		this.account = account;
	}
	
	public String getPwd() {
		return pwd;
	}
	
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public String getRole_id() {
		return role_id;
	}
	
	public void setRole_id(String role_id) {
		this.role_id = role_id;
	}
	
}
