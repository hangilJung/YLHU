package com.model;

public class mainServiceDTO {
	private int mase_num;
	private String mase_email;
	private String mase_title;
	private String mase_content;
	private String mase_source;
	private String mase_date;
	
	public mainServiceDTO(int mase_num, String mase_email, String mase_title, String mase_content, String mase_source,
			String mase_date) {
		this.mase_num = mase_num;
		this.mase_email = mase_email;
		this.mase_title = mase_title;
		this.mase_content = mase_content;
		this.mase_source = mase_source;
		this.mase_date = mase_date;
	}
	
	
	public mainServiceDTO(String mase_email, String mase_title, String mase_content, String mase_source) {
		super();
		this.mase_email = mase_email;
		this.mase_title = mase_title;
		this.mase_content = mase_content;
		this.mase_source = mase_source;
	}


	public int getMase_num() {
		return mase_num;
	}
	public void setMase_num(int mase_num) {
		this.mase_num = mase_num;
	}
	public String getMase_email() {
		return mase_email;
	}
	public void setMase_email(String mase_email) {
		this.mase_email = mase_email;
	}
	public String getMase_title() {
		return mase_title;
	}
	public void setMase_title(String mase_title) {
		this.mase_title = mase_title;
	}
	public String getMase_content() {
		return mase_content;
	}
	public void setMase_content(String mase_content) {
		this.mase_content = mase_content;
	}
	public String getMase_source() {
		return mase_source;
	}
	public void setMase_source(String mase_source) {
		this.mase_source = mase_source;
	}
	public String getMase_date() {
		return mase_date;
	}
	public void setMase_date(String mase_date) {
		this.mase_date = mase_date;
	}

	
	
	
	
}
