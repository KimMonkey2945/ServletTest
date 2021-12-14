package com.question01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz06")
public class GetMethodJson extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		int add = (number1 + number2);
		int sub = (number1 - number2);
		int mul = (number1 * number2);
		int div = (number1 / number2);
		
		//{"addition" : + add + ", subtraction:" + sub + ", multiplication:" + mul + ", division:" +div};
		
		
		out.println("{" + "\"addition\"" + ":" + add + "," + "\"subtraction\"" + ":" + sub +"," + "\"multiplication\"" + ":" + mul + "," +" \"division\"" + ":" + div +"}");
		
		
		
		
	}
}
