package cn.edu.neusoft.meal.domain;


public class Stamp {
    private  int stampid,stampscore;
    private String stampname,stamppc;

    public void setStampid(int stampid) {
        this.stampid = stampid;
    }

    public int getStampscore() {
        return stampscore;
    }

    public void setStampscore(int stampscore) {
        this.stampscore = stampscore;
    }

    public void setStampname(String stampname) {
        this.stampname = stampname;
    }

    public void setStamppc(String stamppc) {
        this.stamppc = stamppc;
    }

    public int getStampid() {

        return stampid;
    }

    public String getStampname() {
        return stampname;
    }

    public String getStamppc() {
        return stamppc;
    }
}
