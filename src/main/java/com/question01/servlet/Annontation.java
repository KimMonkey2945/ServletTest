package com.question01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/annontation01")
public class Annontation extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
		out.println("<html><head><title></title></head>");
		out.println("<body> <h1>[단독]고양이가 야옹해</h1> <p> <small>기사 입력시간 :2021/04/05 06:07:04</small> </p> <hr><small>끝</small> </body></html>");
	}
	
}
