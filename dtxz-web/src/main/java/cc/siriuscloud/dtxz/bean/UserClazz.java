package cc.siriuscloud.dtxz.bean;

public class UserClazz {
    private String ucId;

    private String userId;

    private String clazzId;

    public String getUcId() {
        return ucId;
    }

    public void setUcId(String ucId) {
        this.ucId = ucId == null ? null : ucId.trim();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getClazzId() {
        return clazzId;
    }

    public void setClazzId(String clazzId) {
        this.clazzId = clazzId == null ? null : clazzId.trim();
    }
}