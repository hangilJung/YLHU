package com.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.Command;
import com.model.MessageDAO;
import com.model.MessageDTO;

public class detailView implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		int msg_num = Integer.parseInt(request.getParameter("msg_num")); 
				
		MessageDAO dao = new MessageDAO();
		MessageDTO detailDto = dao.detailView(msg_num);
		
		if(detailDto!=null) {
			System.out.println("상세정보 가져오기 성공");
			
		}else {
			System.out.println("상세정보 가져오기 실패");
		}
		
		return "viewBoard.jsp";
	}

}
