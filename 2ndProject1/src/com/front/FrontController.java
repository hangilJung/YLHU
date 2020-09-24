package com.front;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Join_Service;
import com.controller.Login_Service;
import com.controller.Logout_Service;
import com.controller.SendMessageService;
import com.controller.detailView;
import com.controller.mainService;
import com.controller.myMessage;
import com.controller.removeBoard;
import com.controller.updateBoard;

@WebServlet("*.do")
public class FrontController extends HttpServlet{
	private HashMap<String, Command> map;
	
	@Override
	public void init() throws ServletException {
		map = new HashMap<String, Command>();
		
		map.put("SendMessageService.do", new SendMessageService());
		map.put("Join_Service.do", new Join_Service());
		map.put("removeBoard.do", new removeBoard());
		map.put("myMessage.do", new myMessage());
		map.put("detailView.do", new detailView());
		map.put("Login_Service.do", new Login_Service());
		map.put("Logout_Service.do", new Logout_Service());
		map.put("updateBoard.do", new updateBoard());
		map.put("mainService.do", new mainService());
		}
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("프론트 컨트롤러 실행");

		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();

		String resultURL = requestURI.substring(contextPath.length() + 1);
		System.out.println(resultURL);

		request.setCharacterEncoding("EUC-KR");

		Command command = map.get(resultURL);

		String moveURL = command.execute(request, response);
		response.sendRedirect(moveURL);
	}
}
