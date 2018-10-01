package cc.siriuscloud.dtxz.bean;

import java.util.Date;

public class Pv {
    private String pvId;

    private Date hour;

    private String pv;

    public String getPvId() {
        return pvId;
    }

    public void setPvId(String pvId) {
        this.pvId = pvId == null ? null : pvId.trim();
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
        this.pv = pv == null ? null : pv.trim();
    }
}