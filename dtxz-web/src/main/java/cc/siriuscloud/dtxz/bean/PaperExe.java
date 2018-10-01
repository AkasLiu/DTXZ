package cc.siriuscloud.dtxz.bean;

public class PaperExe {
    private String peId;

    private String epId;

    private String exerciseId;

    public String getPeId() {
        return peId;
    }

    public void setPeId(String peId) {
        this.peId = peId == null ? null : peId.trim();
    }

    public String getEpId() {
        return epId;
    }

    public void setEpId(String epId) {
        this.epId = epId == null ? null : epId.trim();
    }

    public String getExerciseId() {
        return exerciseId;
    }

    public void setExerciseId(String exerciseId) {
        this.exerciseId = exerciseId == null ? null : exerciseId.trim();
    }
}