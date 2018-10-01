package cc.siriuscloud.dtxz.bean;

public class Clazz {
    @Override
	public String toString() {
		return "Clazz [clazzId=" + clazzId + ", name=" + name + ", teacherId=" + teacherId + ", description="
				+ description + "]";
	}

	private String clazzId;

    private String name;

    private String teacherId;

    private String description;

    public String getClazzId() {
        return clazzId;
    }

    public void setClazzId(String clazzId) {
        this.clazzId = clazzId == null ? null : clazzId.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(String teacherId) {
        this.teacherId = teacherId == null ? null : teacherId.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }
}