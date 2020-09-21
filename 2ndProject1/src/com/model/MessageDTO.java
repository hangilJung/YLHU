package com.model;

public class MessageDTO {
	private int msg_num;
	private String sender;
	private String msg_email;
	private String title;
	private String content;
	private String msg_Day;
	
	public MessageDTO(int msg_num, String sender, String msg_email, String title, String content, String msg_Day) {
		this.msg_num = msg_num;
		this.sender = sender;
		this.msg_email = msg_email;
		this.title = title;
		this.content = content;
		this.msg_Day = msg_Day;
	}
	
	
	public MessageDTO(String sender, String msg_email, String title, String content) {
		this.sender = sender;
		this.msg_email = msg_email;
		this.title = title;
		this.content = content;
	}


	public int getMsg_num() {
		return msg_num;
	}
	public void setMsg_num(int msg_num) {
		this.msg_num = msg_num;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getMsg_email() {
		return msg_email;
	}
	public void setMsg_email(String msg_email) {
		this.msg_email = msg_email;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getMsg_Day() {
		return msg_Day;
	}
	public void setMsg_Day(String msg_Day) {
		this.msg_Day = msg_Day;
	}
	
	
}
