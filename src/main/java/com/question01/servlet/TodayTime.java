package com.question01.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TodayTime extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain");
		
		Date now = new Date();
		PrintWriter out = response.getWriter();
		
		SimpleDateFormat format = new SimpleDateFormat("오늘의 날짜는 " + "yyyy년"+" "+"M월"+" "+"dd일");
		String dateString = format.format(now);
		
		out.print(dateString);
		
		out.println();
		
		
		
//		SimpleDateFormat format2 = new SimpleDateFormat("현재시간은 " + "HH시"+" "+"mm분"+" "+"ss초" +" "+"입니다");
//		String timeString = format2.format(now);
//		
//		out.print(timeString);
		
	}
}
	
