package Util;

import java.sql.*;

public class DBConnect {

	private Connection conn = null;
	private Statement stmt = null;
	private ResultSet rs = null;
	private PreparedStatement ps = null;

	public DBConnect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/Test",
					"root", "cjy123"); //root
			
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_READ_ONLY);
		} catch (SQLException ex) {
			System.out.println(ex.getMessage());
		} catch (ClassNotFoundException ex) {
			System.out.println(ex.getMessage());
		}
	}

	public PreparedStatement getPs(String sql) throws SQLException {
		try {
			ps = conn.prepareStatement(sql);
			return ps;
		} catch (Exception e) {
			e.printStackTrace();
			return ps;
		}
	}

	public ResultSet executeQuery(String ssql) throws SQLException {
		try {
			rs = stmt.executeQuery(ssql);
			return rs;
		} catch (SQLException se) {
			System.out.println("DBBean.executeQuery() ERROR:" + se.getMessage());
		}
		return rs;
	}

	public int executeUpdate(String ssql) throws SQLException {
		int iupdate = 0;
		try {
			iupdate = stmt.executeUpdate(ssql);
			return iupdate;
		} catch (SQLException se) {
			conn.rollback();
			System.out.println("DBBean.executeUpdate() ERROR:"
					+ se.getMessage());
		}
		return iupdate;
	}
	//�ֶ��ύ
	public void dbsubmit(){
		try {
			conn.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}

	public void free() throws SQLException {
		try {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException se) {
			System.out.println("DBBean.free() ERROR:" + se.getMessage());
		}
	}

	public Connection getConnection() {
		return conn;
	}
}