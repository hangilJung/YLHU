package com.front;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Join_Service;
import com.controller.Login_Service;
import com.controller.Logout_Service;
import com.controller.Update_Service;
import com.model.MemberDAO;
import com.model.MemberDTO;



@WebServlet("*.do")
public class FrontController extends HttpServlet {
	
	private HashMap<String,Command> map;
	
	@Override
	public void init() throws ServletException {
		map = new HashMap<String, Command>();
		map.put("JoinService.do", new  Join_Service());
		map.put("LoginService.do", new  Login_Service());
		map.put("LogoutService.do", new  Logout_Service());
		map.put("UpdateService.do", new  Update_Service());
		
	}


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("프론트 컨트롤러 실행");
		
		String requestURI = request.getRequestURI();
		System.out.println(requestURI);
		String contextPath = request.getContextPath();
		System.out.println(contextPath);
		String resultURL = requestURI.substring(contextPath.length()+1);
		System.out.println(resultURL);
		
		request.setCharacterEncoding("EUC-KR");
		Command command = map.get(resultURL); 

		String moveURL = command.execute(request, response);
		response.sendRedirect(moveURL);
		
	}
}

