package com.db;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.MysqlService;
@WebServlet("/db/del01")
public class Question02_Delete extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		
		String query ="DELETE FROM `site` WHERE `id` = " + id + ";";
		
		mysqlService.update(query);
		
		mysqlService.disconnect();
		
		response.sendRedirect("/db/db01.jsp");
		
	}
}