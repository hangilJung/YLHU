package com.model;

public class boardDTO {
	private int board_num;
	private String sender;
	private String board_email;
	private String title;
	private String content;
	private String board_Day;
	
	public boardDTO(int board_num, String sender, String board_email, String title, String content, String board_Day) {
		this.board_num = board_num;
		this.sender = sender;
		this.board_email = board_email;
		this.title = title;
		this.content = content;
		this.board_Day = board_Day;
	}

	public int getBoard_num() {
		return board_num;
	}

	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public String getBoard_email() {
		return board_email;
	}

	public void setBoard_email(String board_email) {
		this.board_email = board_email;
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

	public String getBoard_Day() {
		return board_Day;
	}

	public void setBoard_Day(String board_Day) {
		this.board_Day = board_Day;
	}
	
	
}
