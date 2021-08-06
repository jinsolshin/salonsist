package com.sist.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.sist.db.ConnectionProvider;
import com.sist.vo.SalonSistVo;

public class SalonSistDao {
	
	// 싱글턴 방식으로 객체 정의
	private static SalonSistDao dao;
	// 매개변수가 없는 생성자 
	private SalonSistDao() {}
	
	// getInstance 메소드 생성
	public static SalonSistDao getInstance() {
		if(dao==null) {
			dao = new SalonSistDao();
		}
		return dao;
	}
	
	// 예약추가 메소드
	public int insertBooking(SalonSistVo v) {
		int re = -1;
		
		String sql = "insert into booking (booker_phone, booker_name, booker_pwd, booker_num, booker_date, booker_time, style_detail_no, d_no) value (?,?,?,?,?,?,?,?)";
		
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("예외발생" + e.getMessage());
		}
		
		
		return re;
	}
	
	// 디자이너 추가 메소드
	public int insertDesigner(SalonSistVo v) {
		int re = -1;
		String sql = "insert into designer(d_no,d_name,d_position) values(?,?,?)";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, v.getD_no());
			pstmt.setString(2, v.getD_name());
			pstmt.setString(3, v.getD_position());
			
			re = pstmt.executeUpdate();
			ConnectionProvider.close(conn, pstmt);
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("예외발생: " + e.getMessage());
		}
		return re;
	}
	
	
	
	//예약 조회 메소드
	public ArrayList<SalonSistVo> find(String booker_pwd, String booker_name) {
		ArrayList<SalonSistVo> list = new ArrayList<SalonSistVo>();
		
		String sql = "select booker_num, booker_date, booker_time, style_name, style_detail_name, d_name\r\n"
				+ "from menu m, designer d, detail de, booking b\r\n"
				+ "where d.d_no=b.d_no and de.style_no=m.style_no and b.style_detail_no=de.style_detail_no and\r\n"
				+ "booker_pwd=? and booker_name=?";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			//pstmt.setString(1, booker_phone);
			pstmt.setString(1, booker_pwd);
			pstmt.setString(2, booker_name);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				list.add(new SalonSistVo(rs.getInt(1),rs.getDate(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6)));
			}
			ConnectionProvider.close(conn, pstmt, rs);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("예외발생:" + e.getMessage());
		}
		return list;
	}
	
	
	
	
}
