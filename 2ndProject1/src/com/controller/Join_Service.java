package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.Command;
import com.model.MemberDAO;
import com.model.MemberDTO;

public class Join_Service implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
			
			String email = request.getParameter("email");
			String pw = request.getParameter("pw");
			int age = Integer.parseInt(request.getParameter("age"));
			String tel = request.getParameter("tel");
			
			
			MemberDTO dto = new MemberDTO(email,pw,age,tel);
			MemberDAO dao = new MemberDAO();
			int cnt = dao.join(dto); 
			
			if(cnt>0) {
				System.out.println("회원가입 성공");
			}else {
				System.out.println("회원가입 실패");
			}
			
			return "main.jsp";
		}

	}


