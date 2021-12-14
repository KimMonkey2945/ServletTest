package com.question01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/resume")
public class PostMethod extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String resume = request.getParameter("resume");
		
		
		out.println("<html><head><title>입사지원</title></head><body>");
		out.println("<h3><b>" + name + "님 지원이 완료 되었습니다.</b></h3><hr><small>지원내용<br>" + resume + "</small></body></html>");
		
		
		
		
		
		
		
		
		
	}
}