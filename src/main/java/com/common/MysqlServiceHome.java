package com.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlServiceHome {
	
	private static MysqlServiceHome mysqlServiceHome = null;

	//접속 주소, 아이디, 패스워드
	private String url;
	private String id;
	private String password;
	
	
	//접속 관리 객체
	
	private Connection conn;
	private Statement statement;
	
	private MysqlServiceHome() {
		this.url = "jdbc:mysql://localhost:3306/example_1126";
		this.id = "root";
		this.password = "eogjs10309!q@w";
	}
	
	//객체 생성해서 돌려주는 메소드
	//싱글턴 패턴
	public static MysqlServiceHome getInstance() {
		if(mysqlServiceHome == null) {
			mysqlServiceHome = new MysqlServiceHome();
		}
		return mysqlServiceHome;
	}
	
	//접속기능
	public void connect() {
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			this.conn = DriverManager.getConnection(this.url,this.id,this.password);
			this.statement= this.conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	//접속 끊기 기능
	
	
	public void disconnect() {
		try {
			this.statement.close();
			this.conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	//select 쿼리 수행 기능
	
	public ResultSet select(String query) {
		try {
			return this.statement.executeQuery(query);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	
	// insert , update, delete 쿼리 수행기능
	
	public int update(String query) {
		try {
			return this.statement.executeUpdate(query);
		} catch (SQLException e) {
			e.printStackTrace();
			
			return 0;
		}
	}
	
	
	
	
}