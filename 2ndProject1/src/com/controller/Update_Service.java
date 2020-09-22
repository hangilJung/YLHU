package com.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.Command;
import com.model.MemberDAO;
import com.model.MemberDTO;

public class Update_Service implements Command {

   @Override
   public String execute(HttpServletRequest request, HttpServletResponse response) {
      	

		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		
		String id = info.getId();
		String pw = request.getParameter("pw");
		int age = Integer.parseInt(request.getParameter("age"));
		String tel = request.getParameter("tel");
		
		MemberDTO dto = new MemberDTO(id, pw, age, tel);
		MemberDAO dao = new MemberDAO();
		int cnt = dao.update(dto);
		
		if(cnt>0) {
			System.out.println("회원정보 수정 완료!");
			session.setAttribute("info", dto); 
		}else {
			System.out.println("회원정보 수정 실패..");
			
		}
		return "main.jsp";
	}

}
