<%@ page contentType="text/html;charset=gb2312" language="java"%>
<%@ page import="java.io.*,java.sql.*"%>
<jsp:useBean id="rst" scope="page" class="DButil.DBResult" />
<%
	request.setCharacterEncoding("gb2312");//���������ͳһ���룬��������������
	String username = request.getParameter("username"); //���ձ��е�username����
	String password = request.getParameter("password");//���ձ��е�password����
	String str = "select * from users where " + "username='" + username + "' and password='" + password + "'";
	session.setAttribute("isLog", new String("0"));//�ж��û��Ƿ��¼����isLog������Ϊ0ʱ��˵���û���û�е�¼
	ResultSet rs = rst.getResult(str);//ִ��SQL����ý��������
	if (!rs.next())//�����û���ҵ���Ҫ���ҵ���
	{
		out.println("<script language='javascript'>alert('�û������������');"
				+ "parent.location.href='index.jsp';</script>");
	} else {
		session.setAttribute("username", rs.getString("username"));//�����¼��Ϣ��session������
		session.setAttribute("password", rs.getString("password"));
		session.setAttribute("isLog", new String("1"));//��isLog��������Ϊ1
		response.sendRedirect("sales.jsp");//��¼�ɹ���ת��ϵͳ��ҳ��
	}
%>


















