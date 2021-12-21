package com.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.MysqlService;
@WebServlet("/db/question01")
public class question01 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
//		mysqlService.update("INSERT INTO `real_estate`\r\n"
//				+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`, `createdAt`, `updatedAt`)\r\n"
//				+ "\r\n"
//				+ "VALUES\r\n"
//				+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, null, now(), now() )");
//		
		
		String query = "SELECT * FROM `real_estate` ORDER BY `id` DESC LIMIT 10";
		
		ResultSet resultSet = mysqlService.select(query);
		
		try {
			while(resultSet.next()) {
				out.print("매물주소 : " + resultSet.getString("address"));
				out.print("면적 : " + resultSet.getInt("area"));
				out.println("타입 : " + resultSet.getString("type"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
			
		
		
	}
	
	
	
	
	
	
	
	
	
}
