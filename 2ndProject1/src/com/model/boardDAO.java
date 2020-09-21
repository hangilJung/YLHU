package com.model;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class boardDAO {
	private PreparedStatement pst = null;
	private Connection conn = null;
	private ResultSet rs;
	int cnt = 0;

	public void getConn() {
		try {

			InputStream in = getClass().getResourceAsStream("../../../../db.properties");

			Properties p = new Properties();

			p.load(in);

			Class.forName(p.getProperty("dbclass"));
			String url = p.getProperty("dburl");
			String dbid = p.getProperty("dbid");
			String dbpw = p.getProperty("dbpw");

			conn = DriverManager.getConnection(url, dbid, dbpw);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (pst != null) {
				pst.close();
			}
			if (conn != null) {
				conn.close();
			}

		} catch (SQLException e2) {
			e2.printStackTrace();
		}
	}
	
	
	
}
