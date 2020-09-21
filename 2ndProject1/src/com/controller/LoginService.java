package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.Command;
import com.model.MemberDAO;
import com.model.MemberDTO;

public class LoginService implements Command{

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		MemberDTO dto = new MemberDTO(email, pw);
		MemberDAO dao = new MemberDAO();
		
		//로그인 성공시에는 info 안에 email, pw,tel,addr이 담겨있고
		//로그인 실패시에는 info 안에 null 값이 들어가 있다.
		MemberDTO info = dao.login(dto);
		
		if(info != null) {
			System.out.println("로그인 성공");
			// 로그인 성공시에 session에 info 라는 name값으로 info 객체를 저장
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
		}else {
			System.out.println("로그인 실패");
		}
		
		
		return "main.jsp";
	}

}
