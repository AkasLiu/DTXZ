package cc.siriuscloud.dtxz.bean.vo;

public class UserCertificateVo {

	private String authenId;

    private String userId;
	
	private String info;

    private String img;
    
    private String nickname;
    
    private String name;;
    
    private String job;

	@Override
	public String toString() {
		return "UserCertificateVo [authenId=" + authenId + ", userId=" + userId + ", info=" + info + ", img=" + img
				+ ", nickname=" + nickname + ", name=" + name + ", job=" + job + "]";
	}

	public String getAuthenId() {
		return authenId;
	}

	public void setAuthenId(String authenId) {
		this.authenId = authenId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}
	
    
}
