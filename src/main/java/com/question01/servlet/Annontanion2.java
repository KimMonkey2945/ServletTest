package com.question01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/annontation02")
public class Annontanion2 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		//이거는 강의 시간의 풀이 잘 살펴보기
		
		String date = null;
		for(int i = 1; i <= 30; i++) {
			date = i + " 번째 리스트";
			out.println("<html><head></head><body><li><b>" + date + "</li></body></html>");
		}
		
		
	
	}
}
