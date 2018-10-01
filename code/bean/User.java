package cc.siriuscloud.dtxz.bean;

///*==============================================================*/
///* Table: dtxz_user                                             */
///*==============================================================*/
//create table dtxz_user
//(
//   user_id              varchar(32) not null,
//   nickname             varchar(10) not null,
//   email                varchar(50) not null,
//   pwd                  varchar(50) not null,
//   sex                  varchar(4),
//   name                 varchar(10),
//   age                  Integer(10),
//   job                  varchar(50),
//   rank                 varchar(50),
//   img                  varchar(255),
//   signature            varchar(255),
//   money                double not null default 0,
//   praise_count         Integer(50) not null default 0,
//   status               varchar(16),
//   recent_login_time    datetime,
//   primary key (user_id),
//   unique key AK_uq_email (email)
//);

import java.util.*;

public class User {

	private String user_id;
	private String nickname;
	private String email;
	private String pwd;
	private String sex;
	private String name;
	private Integer age;
	private String job;
	private String rank;
	private String img;
	private String signature;
	private double money;
	private Integer praise_count;
	private String status;
	private Date recent_login_time;
	
	public User(){
		
	}

	public User(String user_id, String nickname, String email, String pwd, String sex, String name, Integer age, String job,
			String rank, String img, String signature, double money, Integer praise_count, String status,
			Date recent_login_time) {
		super();
		this.user_id = user_id;
		this.nickname = nickname;
		this.email = email;
		this.pwd = pwd;
		this.sex = sex;
		this.name = name;
		this.age = age;
		this.job = job;
		this.rank = rank;
		this.img = img;
		this.signature = signature;
		this.money = money;
		this.praise_count = praise_count;
		this.status = status;
		this.recent_login_time = recent_login_time;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getRank() {
		return rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getSignature() {
		return signature;
	}

	public void setSignature(String signature) {
		this.signature = signature;
	}

	public double getMoney() {
		return money;
	}

	public void setMoney(double money) {
		this.money = money;
	}

	public Integer getPraise_count() {
		return praise_count;
	}

	public void setPraise_count(Integer praise_count) {
		this.praise_count = praise_count;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getRecent_login_time() {
		return recent_login_time;
	}

	public void setRecent_login_time(Date recent_login_time) {
		this.recent_login_time = recent_login_time;
	}
	
}
