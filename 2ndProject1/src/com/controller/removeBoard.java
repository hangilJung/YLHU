package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.Command;
import com.model.MessageDAO;

public class removeBoard implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		int msg_num = Integer.parseInt(request.getParameter("msg_num"));
		
		MessageDAO dao = new MessageDAO();
		int cnt = dao.removeBoard(msg_num);
		
		if(cnt>0) {
			System.out.println("게시물 삭제 성공");
		}else {
			System.out.println("게시물 삭제 실패");
		}
		return "list.jsp";
	}

}
