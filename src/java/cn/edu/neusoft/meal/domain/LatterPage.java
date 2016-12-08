package cn.edu.neusoft.meal.domain;

public class LatterPage {
	private long id;
	private String lattername,latterstyle;

	public void setId(long id) {
		this.id = id;
	}

	public void setLattername(String lattername) {
		this.lattername = lattername;
	}

	public void setLatterstyle(String latterstyle) {
		this.latterstyle = latterstyle;
	}

	public long getId() {

		return id;
	}

	public String getLattername() {
		return lattername;
	}

	public String getLatterstyle() {
		return latterstyle;
	}
}
