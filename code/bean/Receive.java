package cc.siriuscloud.dtxz.bean;

///*==============================================================*/
///* Table: dtxz_receive                                          */
///*==============================================================*/
//create table dtxz_receive
//(
//   rec_id               varchar(32) not null,
//   user_id              varchar(32) not null,
//   mes_id               varchar(32) not null,
//   primary key (rec_id)
//);

public class Receive {

	private String rec_id;
	private String user_id;
	private String mes_id;
	
	public Receive(){
		
	}

	public Receive(String rec_id, String user_id, String mes_id) {
		super();
		this.rec_id = rec_id;
		this.user_id = user_id;
		this.mes_id = mes_id;
	}

	public String getRec_id() {
		return rec_id;
	}

	public void setRec_id(String rec_id) {
		this.rec_id = rec_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getMes_id() {
		return mes_id;
	}

	public void setMes_id(String mes_id) {
		this.mes_id = mes_id;
	}
	
}
