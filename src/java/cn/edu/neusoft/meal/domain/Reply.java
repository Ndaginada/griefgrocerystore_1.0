package cn.edu.neusoft.meal.domain;

public class Reply {
	private int id,letterid,replyuserid,belonguserid;
	private String content;

	public int getBelonguserid() {
		return belonguserid;
	}

	public void setBelonguserid(int belonguserid) {
		this.belonguserid = belonguserid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getLetterid() {
		return letterid;
	}

	public void setLetterid(int letterid) {
		this.letterid = letterid;
	}

	public int getReplyuserid() {
		return replyuserid;
	}
	public void setReplyuserid(int replyuserid) {
		this.replyuserid = replyuserid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}
