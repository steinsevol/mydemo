package Bean;

import DButil.DBResult;
import bao.People;

import java.sql.*;

public class zftjBean {
	private People people;
	DBResult rst = new DBResult();


	public void setPeople(People people) {
		people = this.people;
	}

	public void regist() throws Exception {
		String reg = "insert into people values(?,?,?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement pstmt = rst.getPreparedStatement(reg);
			// 创建一个预处理语句，然后设置他们的参数
			pstmt.setString(1, people.getName());
			pstmt.setString(2, people.getLastname());
			pstmt.setString(3, people.getSex());
			pstmt.setString(4, people.getBirthplace());
			pstmt.setString(5, people.getNation());
			pstmt.setString(6, people.getBirth());
			pstmt.setString(7, people.getNativeplace());
			pstmt.setString(8, people.getId());
			pstmt.setString(9, people.getStudy());
			pstmt.setString(10, people.getHeight());
			pstmt.setString(11, people.getBlood());
			pstmt.setString(12, people.getMarriage());
			// 执行更新操作
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
}
