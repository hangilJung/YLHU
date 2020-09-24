package com.model;

public class commentDTO {

	private int co_num;
	private int co_board;
	private String co_email;
	private int co_parent;
	private String co_content;
	private int co_date;
	
	public commentDTO(int co_num, int co_board, String co_email, int co_parent, String co_content, int co_date) {
		this.co_num = co_num;
		this.co_board = co_board;
		this.co_email = co_email;
		this.co_parent = co_parent;
		this.co_content = co_content;
		this.co_date = co_date;
	}

	public int getCo_num() {
		return co_num;
	}

	public void setCo_num(int co_num) {
		this.co_num = co_num;
	}

	public int getCo_board() {
		return co_board;
	}

	public void setCo_board(int co_board) {
		this.co_board = co_board;
	}

	public String getCo_email() {
		return co_email;
	}

	public void setCo_email(String co_email) {
		this.co_email = co_email;
	}

	public int getCo_parent() {
		return co_parent;
	}

	public void setCo_parent(int co_parent) {
		this.co_parent = co_parent;
	}

	public String getCo_content() {
		return co_content;
	}

	public void setCo_content(String co_content) {
		this.co_content = co_content;
	}

	public int getCo_date() {
		return co_date;
	}

	public void setCo_date(int co_date) {
		this.co_date = co_date;
	}
	
	
}
