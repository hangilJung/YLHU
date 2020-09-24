package com.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.Command;
import com.model.MemberDAO;
import com.model.MemberDTO;




public class Drop_Service implements Command{
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		
		String id = info.getEmail();
		String pw = info.getPw();
		int age = info.getAge();
		String tel = info.getTel();
		
		
		MemberDTO dto = new MemberDTO(id,pw,age,tel);
		MemberDAO dao = new MemberDAO();
		int cnt = dao.drop(dto); 
		
		if(cnt>0) {
			System.out.println("È¸¿øÅ»Åð ¼º°ø");
			session.removeAttribute("info");
		}else {
			System.out.println("È¸¿øÅ»Åð ½ÇÆÐ");
		}
		
		return "main.jsp";
	}

}
