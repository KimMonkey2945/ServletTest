package com.db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.MysqlService;
@WebServlet("/db/insert02")
public class Question02_2 extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		
		
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		String query ="INSERT INTO `site`\r\n"
				+ "(`name`, `address`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUES\r\n"
				+ "('"+name+"', '"+address+"',now(),now());";
		
		mysqlService.update(query);
		
		mysqlService.disconnect();
		
		response.sendRedirect("/db/db01.jsp");
		
		
		
		
	}
}