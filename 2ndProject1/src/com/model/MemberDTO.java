package com.model;

public class MemberDTO {
	private String email;
	private String pw;
	private int age;
	private String tel;
	
	public MemberDTO(String email, String pw, int age, String tel) {		
		this.email = email;
		this.pw = pw;
		this.age = age;
		this.tel = tel;
	}
	
	

	public MemberDTO(String email, String pw) {
		super();
		this.email = email;
		this.pw = pw;
	}



	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
}
