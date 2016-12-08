package cn.edu.neusoft.meal.domain;

public class Letter {
	private long id;
	private String lettername,lettercontext;

	public long getId() {
		return id;
	}

	public String getLettername() {
		return lettername;
	}

	public void setId(long id) {
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
