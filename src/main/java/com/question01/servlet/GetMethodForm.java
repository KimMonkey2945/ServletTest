package com.question01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/order")
public class GetMethodForm extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
		String address = request.getParameter("address");
		String payCard = request.getParameter("payCard");
		int price = Integer.parseInt(request.getParameter("price"));
		
		
		
		
		out.println("<html><head><title>주문하기</title><head>");
		if(!address.contains("서울시")) {
			out.println("배달 불가 지역입니다!!");
		}else if(payCard.contains("신한")){
			out.println("결제 불가 카드입니다!!");
		}else {			
			out.println("<body>"+ "<b>"+ address + " 배달 준비중</b>" +"<hr> <small>결제금액:"+ price + "</small></body></html>");
		}
		
		
		
		
	}
}
