package com.model;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

public class MessageDAO {

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
	public int sendMessage(MessageDTO dto) {

		getConn();

		try {

			String sql = "insert into news_message values(msg_num.nextval, ?, ?,?,?, sysdate)";
			pst = conn.prepareStatement(sql);

			pst.setString(1, dto.getSender());
			pst.setString(2, dto.getMsg_email());
			pst.setString(3, dto.getTitle());
			pst.setString(4, dto.getContent());

			cnt = pst.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();

		}
		return cnt;
	}
	
	public ArrayList<MessageDTO> receiveMessage(String email) {
		ArrayList<MessageDTO> list = new ArrayList<>();
		MessageDTO dto = null;
		getConn();

		try {

			String sql = "select * from news_message where email = ? order by msg_day desc";
			pst = conn.prepareStatement(sql);

			pst.setString(1, email);

			rs= pst.executeQuery();
			
			while(rs.next()) {
				int msg_num = rs.getInt(1);
				String sender = rs.getString(2);
				String msg_mail = rs.getString(3);
				String title = rs.getString(4);
				String content = rs.getString(5);
				String msg_day = rs.getString(6);
				
				list.add(new MessageDTO(msg_num, sender, msg_mail,title,content,msg_day));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();

		}
		return list;
	}
	
	public ArrayList<MessageDTO> viewAll() {
		ArrayList<MessageDTO> list = new ArrayList<>();
		MessageDTO dto = null;
		getConn();

		try {

			String sql = "select * from news_message order by msg_day desc";
			pst = conn.prepareStatement(sql);
			
			rs= pst.executeQuery();
			
			while(rs.next()) {
				int msg_num = rs.getInt(1);
				String sender = rs.getString(2);
				String msg_mail = rs.getString(3);
				String title = rs.getString(4);
				String content = rs.getString(5);
				String msg_day = rs.getString(6);
				
				list.add(new MessageDTO(msg_num, sender, msg_mail,title,content,msg_day));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();

		}
		return list;
	}

	public int removeBoard(int msg_num) {
		getConn();

		try {

			String sql = "delete from news_message where msg_num = ?";
			pst = conn.prepareStatement(sql);
			pst.setInt(1,msg_num);
			
			cnt = pst.executeUpdate();			
			

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();

		}
		return cnt;
	}

	public ArrayList<MessageDTO> myView(String msg_email) {
		ArrayList<MessageDTO> list = new ArrayList<>();
		MessageDTO dto = null;
		
		getConn();

		try {

			String sql = "select * from news_message where msg_mail=?";
			pst = conn.prepareStatement(sql);
			
			pst.setString(1, msg_email);
			rs= pst.executeQuery();
			
			while(rs.next()) {
				int msg_num = rs.getInt(1);
				String sender = rs.getString(2);
				String msg_mail = rs.getString(3);
				String title = rs.getString(4);
				String content = rs.getString(5);
				String msg_day = rs.getString(6);
				
				list.add(new MessageDTO(msg_num, sender, msg_mail,title,content,msg_day));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();

		}
		return list;
		
	}

	public MessageDTO detailView(int num) {		
		MessageDTO dto = null;
		
		getConn();

		try {

			String sql = "select * from news_message where msg_num=?";
			pst = conn.prepareStatement(sql);
			
			pst.setInt(1, num);
			rs= pst.executeQuery();
			
			if(rs.next()) {
				int msg_num = rs.getInt(1);
				String sender = rs.getString(2);
				String msg_mail = rs.getString(3);
				String title = rs.getString(4);
				String content = rs.getString(5);
				String msg_day = rs.getString(6);
				
				dto = new MessageDTO(msg_num, sender, msg_mail,title,content,msg_day);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();

		}
		return dto;
		
	}

}
