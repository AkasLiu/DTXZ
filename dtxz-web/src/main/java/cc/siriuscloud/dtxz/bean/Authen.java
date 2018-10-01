package cc.siriuscloud.dtxz.bean;

public class Authen {
    @Override
	public String toString() {
		return "Authen [authenId=" + authenId + ", userId=" + userId + ", info=" + info + ", title=" + title + ", img="
				+ img + "]";
	}

	private String authenId;

    private String userId;

    private String info;

    private String title;

    private String img;

    public String getAuthenId() {
        return authenId;
    }

    public void setAuthenId(String authenId) {
        this.authenId = authenId == null ? null : authenId.trim();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info == null ? null : info.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img == null ? null : img.trim();
    }
}