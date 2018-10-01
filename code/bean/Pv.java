package cc.siriuscloud.dtxz.bean;

///*==============================================================*/
///* Table: dtxz_pv                                               */
///*==============================================================*/
//create table dtxz_pv
//(
//   pv_id                varchar(32) not null,
//   hour                 datetime not null,
//   pv                   varchar(32) not null,
//   primary key (pv_id)
//);

import java.util.*;

public class Pv {
	
	private String pv_id;
	private Date hour;
	private String pv;
	
	public Pv(){
		
	}

	public Pv(String pv_id, Date hour, String pv) {
		super();
		this.pv_id = pv_id;
		this.hour = hour;
		this.pv = pv;
	}

	public String getPv_id() {
		return pv_id;
	}

	public void setPv_id(String pv_id) {
		this.pv_id = pv_id;
	}

	public Date getHour() {
		return hour;
	}

	public void setHour(Date hour) {
		this.hour = hour;
	}

	public String getPv() {
		return pv;
	}

	public void setPv(String pv) {
		this.pv = pv;
	}

}
