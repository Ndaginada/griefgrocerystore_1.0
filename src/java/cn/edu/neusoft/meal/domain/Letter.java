package cn.edu.neusoft.meal.domain;

public class Letter {
	private int id;
	private String lettername,lettercontext,belonguser,stamppc;

	public String getStamppc() {
		return stamppc;
	}

	public void setStamppc(String stamppc) {
		this.stamppc = stamppc;
	}

	public int getId() {
		return id;
	}

	public String getLettername() {
		return lettername;
	}

	public void setBelonguser(String belonguser) {
		this.belonguser = belonguser;
	}

	public String getBelonguser() {

		return belonguser;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setLettername(String lettername) {
		this.lettername = lettername;
	}

	public void setLettercontext(String lettercontext) {
		this.lettercontext = lettercontext;
	}

	public String getLettercontext() {
		return lettercontext;
	}
}
