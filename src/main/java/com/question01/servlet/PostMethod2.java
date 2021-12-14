package com.question01.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/login")
public class PostMethod2 extends HttpServlet {

	private final Map<String, String> userMap = new HashMap<String, String>() {
		{
			put("id", "hagulu");
			put("password", "asdf");
			put("name", "김인규");
		}
	};

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		String id = request.getParameter("id");
		String password = request.getParameter("password");

		out.println("<html><head><title>로그인</title></head>");
		if (!id.equals(userMap.get("id"))) {
			out.println("id가 일치하지 않습니다.");
		} else if (!password.equals(userMap.get("password"))) {
			out.println("password가 일치하지 않습니다.");
		} else {
			out.println("<body><h1>" + userMap.get("name") +"님 환영합니다!!</h1></body></html>");
		}

	}
}
