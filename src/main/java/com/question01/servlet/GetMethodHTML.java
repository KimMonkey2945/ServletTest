package com.question01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz05")
public class GetMethodHTML extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		
		PrintWriter out =response.getWriter();
		
		int number = Integer.parseInt(request.getParameter("number"));
		
		
		out.println("<html><head></head><body>");
		for(int i = 1; i <= 9; i++) {
			out.println("<li>" + number + " X " + i +" = " +(number*i)+ "</li>");	
		}
		out.println("</body></html>");
		
	}
}
