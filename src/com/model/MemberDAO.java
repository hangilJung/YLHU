package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	
	private Connection conn ;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	
	  public void getConn() {
	      try {
	    	 //동적연결을위한 드라이버 가져오기 => 오류가 나는것 2가지 (자르파일이 없거나, 경로불일치시)
	         Class.forName("oracle.jdbc.driver.OracleDriver");
	         
	         // 2.DB연결
	         String url = "jdbc:oracle:thin:@localhost:1521:xe";
	         String user_id = "hr";
	         String user_pw = "hr";
	         conn = DriverManager.getConnection(url, user_id, user_pw);
	         if (conn != null) {
	            System.out.println("연결 성공");
	         } else {
	            System.out.println("연결 실패");
	         }
	      } catch (ClassNotFoundException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      } catch (SQLException e) {
		         // TODO Auto-generated catch block
		         e.printStackTrace();
		      }
	   }

	
	
	public void close() {
		try {
			if(rs!=null) {
				rs.close();
			}if(psmt!=null) {
				psmt.close();
			}if(conn!=null) {
				conn.close();
			}
		}catch(Exception e2) {
			e2.printStackTrace();
		}
	}

	public MemberDTO login(MemberDTO dto) {
		MemberDTO info = null;
		getConn();
		
		try {
			
			String sql  = "select * from web_member where id= ? and pw=?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1,dto.getId());
			psmt.setString(2, dto.getPw());
			
			rs = psmt.executeQuery();
			if(rs.next()) {
				
				String id = rs.getString(1);
				String pw = rs.getString(2);
				int age = rs.getInt(3);
				String tel = rs.getString(4);
				
				info = new MemberDTO(id,pw,age,tel);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}

		return info;
	}
	
	public int join(MemberDTO dto) {
		int cnt=0;
		getConn();
		
		try {
			String sql = "insert into web_member values(?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setInt(3, dto.getAge());
			psmt.setString(4, dto.getTel());
			
			cnt = psmt.executeUpdate();
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
		 close();
		}
		
		
		return cnt;
	}
	
	public int update(MemberDTO dto) {
		int cnt=0;
		
		try {
			getConn();
			
			String sql  = "update web_member set pw = ?, age =?, tel=? where email=?";
			//
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1,dto.getPw());
			psmt.setInt(2, dto.getAge());
			psmt.setString(3, dto.getTel());
			psmt.setString(4, dto.getId());
			
			cnt = psmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}	
		
		
		return cnt;
	}
	
	

}
