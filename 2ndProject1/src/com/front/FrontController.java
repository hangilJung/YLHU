package com.front;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.LoginService;
import com.controller.SendMessageService;
import com.controller.detailView;
import com.controller.myMessage;
import com.controller.removeBoard;

@WebServlet("*.do")
public class FrontController extends HttpServlet{
	private HashMap<String, Command> map;
	
	@Override
	public void init() throws ServletException {
		map = new HashMap<String, Command>();
		
		map.put("SendMessageService.do", new SendMessageService());
		map.put("LoginService.do", new LoginService());
		map.put("removeBoard.do", new removeBoard());
		map.put("myMessage.do", new myMessage());
		map.put("detailView.do", new detailView());
		}
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("����Ʈ ��Ʈ�ѷ� ����");

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
