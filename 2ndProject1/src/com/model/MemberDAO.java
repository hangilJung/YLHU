package com.model;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class MemberDAO {
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

		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}

	public int join(MemberDTO dto) {
		try {
			getConn();

			String sql = "insert into news_member values(?,?,?,?)";
			pst = conn.prepareStatement(sql);

			pst.setString(1, dto.getEmail());
			pst.setString(2, dto.getPw());
			pst.setInt(3, dto.getAge());
			pst.setString(4, dto.getTel());

			cnt = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();

		}
		return cnt;
	}

	public MemberDTO login(MemberDTO dto) {
		MemberDTO info = null;
		try {
			getConn();

			String sql = "select * from news_member where email = ? and pw = ?";
			pst = conn.prepareStatement(sql);

			pst.setString(1, dto.getEmail());
			pst.setString(2, dto.getPw());

			rs = pst.executeQuery();

			if(rs.next()) {

				String email = rs.getString(1);
				String pw = rs.getString(2);
				int age = rs.getInt(3);
				String tel = rs.getString(4);

				info = new MemberDTO(email, pw, age, tel);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();

		}
		return info;

	}

	public int update(MemberDTO dto) {
		try {
			getConn();

			String sql = "update news_member set pw = ?, age = ?, tel = ? where email = ?";
			pst = conn.prepareStatement(sql);

			pst.setString(1, dto.getPw());
			pst.setInt(2, dto.getAge());
			pst.setString(3, dto.getTel());
			pst.setString(4, dto.getEmail());

			cnt = pst.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();

		}
		return cnt;
	}

}
