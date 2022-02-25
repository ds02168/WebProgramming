package web2021.study08;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ABManager {
	String JDBC_URL = "jdbc:mysql://localhost/jspdb?serverTimezone=UTC&useUnicode=true&characterEncoding=utf8";
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	private void connect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(JDBC_URL,"student","1234");
		}catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	private void disconnect() {
		try {
			if(pstmt != null)
				pstmt.close();
			if(conn != null)
				conn.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void add(AddrBook newBook) {
		connect();
		try {
			pstmt = conn.prepareStatement("insert into addrbook(name,phone,email,gender) values(?,?,?,?)");
			pstmt.setString(1, newBook.getName());
			pstmt.setString(2, newBook.getPhone());
			pstmt.setString(3, newBook.getEmail());
			pstmt.setString(4, newBook.getGender());
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
	}
	public Iterable<AddrBook> getList(){
		ArrayList<AddrBook> ablist = new ArrayList<AddrBook>();
		connect();
		try {
			pstmt = conn.prepareStatement("select * from addrbook");
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				AddrBook ab = new AddrBook();
				ab.setName(rs.getString("name"));
				ab.setPhone(rs.getString("phone"));
				ab.setEmail(rs.getString("email"));
				ab.setGender(rs.getString("gender"));
				ablist.add(ab);
			}
			rs.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return ablist;
	}
}
