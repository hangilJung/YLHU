package com.model;

public class MemberDTO {
	
	private String id;
	private String pw;
	private int age;
	private String tel;
	
	
	public MemberDTO(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}

	public MemberDTO(String id, String pw, int age, String tel) {

		this.id = id;
		this.pw = pw;
		this.age = age;
		this.tel = tel;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getId() {
		return id;
	}
	public String getPw() {
		return pw;
	}
	public int getAge() {
		return age;
	}
	public String getTel() {
		return tel;
	}
}
