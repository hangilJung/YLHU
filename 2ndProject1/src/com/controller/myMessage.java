package com.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.Command;
import com.model.MemberDAO;
import com.model.MessageDAO;
import com.model.MessageDTO;

public class myMessage implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String msg_email = request.getParameter("info");
		
		MessageDAO dao = new MessageDAO();
		ArrayList<MessageDTO> list = dao.myView(msg_email);
		
		if(list!=null) {
			System.out.println("���� ��� �������� ����");
		}else {
			System.out.println("���� ��� �������� ����");
		}
		return "list.jsp";
	}

}
