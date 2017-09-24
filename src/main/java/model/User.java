package model;

import java.util.Date;

public class User {
	private int id;
	private String username;
	private String password;
	private String name;
	private String sex;
	private Date birthday;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public User(String username, String password, String sex, String name, Date birthday) {
		super();
		this.username = username;
		this.password = password;
		this.sex = sex;
		this.name = name;
		this.birthday = birthday;
	}

	public User() {
		super();
	}
}