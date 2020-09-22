package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.Command;
import com.model.MessageDAO;
import com.model.MessageDTO;
import com.oreilly.servlet.MultipartRequest;

public class SendMessageService implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		String sender = request.getParameter("sender");
		String msg_email = request.getParameter("msg_email");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		MessageDTO dto = new MessageDTO(sender, msg_email, title, content);
		MessageDAO dao = new MessageDAO();
		
		int cnt = dao.sendMessage(dto);
		
		if(cnt >0) {
			System.out.println("메세지 전송성공");
		}else {
			System.out.println("메세지 전송실패");
		}
		return "contact.jsp";
	}

}
