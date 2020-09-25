package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.Command;
import com.model.mainServiceDAO;

public class mainService implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String email = request.getParameter("email");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String url = request.getParameter("url");
		System.out.println(email);
		System.out.println(title);
		System.out.println(content);
		System.out.println(url);
		
		mainServiceDAO dao = new mainServiceDAO();
		int cnt = dao.send(email, title, content, url);
		
		if(cnt>0) {
			System.out.println("글쓰기 성공");
		}else {
			System.out.println("글쓰기 실패");
		}
		
		return "mainBoard.jsp";
	}

}
