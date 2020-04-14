<%@ page contentType="text/html;charset=gb2312" language="java"%>
<%@ page import="java.io.*,java.sql.*"%>
<jsp:useBean id="rst" scope="page" class="DButil.DBResult" />
<%
	request.setCharacterEncoding("gb2312");//对请求进行统一编码，能正常接收中文
	String username = request.getParameter("username"); //接收表单中的username属性
	String password = request.getParameter("password");//接收表单中的password属性
	String str = "select * from users where " + "username='" + username + "' and password='" + password + "'";
	session.setAttribute("isLog", new String("0"));//判断用户是否登录，当isLog的属性为0时，说明用户并没有登录
	ResultSet rs = rst.getResult(str);//执行SQL语句获得结果集对象
	if (!rs.next())//结果集没有找到所要查找的行
	{
		out.println("<script language='javascript'>alert('用户名或密码错误');"
				+ "parent.location.href='index.jsp';</script>");
	} else {
		session.setAttribute("username", rs.getString("username"));//保存登录信息到session对象中
		session.setAttribute("password", rs.getString("password"));
		session.setAttribute("isLog", new String("1"));//将isLog属性设置为1
		response.sendRedirect("sales.jsp");//登录成功后转到系统主页面
	}
%>


















