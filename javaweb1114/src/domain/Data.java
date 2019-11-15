package domain;

import java.util.Date;

public class Data {
	private int num;
	private String name; 
	private Date birthday;
	
	
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
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	
	@Override
	public String toString() {
		return "Data [num=" + num + ", name=" + name + ", birthday=" + birthday + "]";
	}
	
	
	
}
