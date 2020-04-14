package DButil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBResult {
	public static Connection conn = null;
	
	private static String user="sa";
	private static String password="123";
	private static String className="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static String url="jdbc:sqlserver://localhost:1433;DatabaseName=db_sales";
	
	static{
		try {

			try{
				Class.forName(className);
			}catch(ClassNotFoundException e){
				e.printStackTrace();
			}
			
			try {
				conn=DriverManager.getConnection(url,user,password);
			} catch (SQLException e) {
				conn=null;
				e.printStackTrace();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 用于获得执行SQL语句的ResultSet对象
	 */
	public ResultSet getResult(String sql) {
		try {
			Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
			ResultSet rs = stmt.executeQuery(sql);
			return rs;
		} catch (Exception e) {
		}
		return null;
	}
	/**
	 * 用于执行SQL语句没有返回值
	 */
	public void doExecute(String sql) {
		try {
			Statement stmt = conn.createStatement();
			stmt.executeQuery(sql);
		} catch (Exception e) {
		}
	}
	/**
	 * 用于获得执行SQL语句的PreparedStatement(预处理)对象
	 */
	public PreparedStatement getPreparedStatement(String sql) {
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			return pstmt;
		} catch (Exception e) {
		}
		return null;
	}

}
