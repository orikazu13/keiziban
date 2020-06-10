package bean;

public class KeizibanInfo {
	int num;
	String name;
	String text;
	String time;
	String edittime;

	public KeizibanInfo(int num, String name, String text, String time, String edittime) {
		super();
		this.num = num;
		this.name = name;
		this.text = text;
		this.time = time;
		this.edittime = edittime;
	}
	public String getEdittime() {
		return edittime;
	}
	public void setEdittime(String edittime) {
		this.edittime = edittime;
	}
	public KeizibanInfo(String name, String text) {
		super();
		this.name = name;
		this.text = text;
	}
	public KeizibanInfo(int num, String text) {
		super();
		this.num = num;
		this.text = text;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}

}
