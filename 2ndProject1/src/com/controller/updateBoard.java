package com.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.Command;
import com.model.MessageDAO;
import com.model.MessageDTO;

public class updateBoard implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		int msg_num = Integer.parseInt(request.getParameter("msg_num"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		MessageDAO dao = new MessageDAO();
		int cnt = dao.updateBoard(msg_num, title, content);
		
		if(cnt>0) {
			System.out.println("�޼��� ���� ����");
		}else {
			System.out.println("�޼��� ���� ����");
		}
		
		
		
		return "list.jsp";
	}

}
