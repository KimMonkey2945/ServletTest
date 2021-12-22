package com.db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.MysqlService;
@WebServlet("/db/ex01")
public class Question02 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		
		String query = "INSERT INTO `site`\r\n"
				+ "(`name`, `address`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUES\r\n"
				+ "('인스타', 'http://instagram.com', now(), now()),\r\n"
				+ "('마론달', 'http://marondal.com', now(), now()),\r\n"
				+ "('구글', 'https://google.com', now(), now()),\r\n"
				+ "('네이버', 'https://naver.com', now(), now()),\r\n"
				+ "('다음', 'https://daum.com', now(), now());";
		
		mysqlService.update(query);
		
		
		
		out.println(query);
		
		
		
		
	}
}
