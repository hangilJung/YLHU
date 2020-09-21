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
		
		//�α��� �����ÿ��� info �ȿ� email, pw,tel,addr�� ����ְ�
		//�α��� ���нÿ��� info �ȿ� null ���� �� �ִ�.
		MemberDTO info = dao.login(dto);
		
		if(info != null) {
			System.out.println("�α��� ����");
			// �α��� �����ÿ� session�� info ��� name������ info ��ü�� ����
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
		}else {
			System.out.println("�α��� ����");
		}
		
		
		return "main.jsp";
	}

}
