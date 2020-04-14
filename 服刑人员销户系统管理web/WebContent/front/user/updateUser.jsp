<%@ page contentType="text/html;charset=gb2312" language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<jsp:useBean id="rst" scope="page" class="DButil.DBResult"/>
<jsp:useBean id="trans" scope="page" class="Chinese.ToChinese"/>
<%
   request.setCharacterEncoding("gb2312");
   String username=request.getParameter("username");
   String password=request.getParameter("newpw1");
   String strSql="select * from users where username='"+username+"'";
   String strAdd="";
   ResultSet rs=rst.getResult(strSql);
   if(rs.next()){
         out.println("<script language='javascript'>alert('该用户名已存在');"+
                   "window.location.href='adduser.jsp';</script>");
   }
   else{
     strAdd="insert into users values ('"+username+"','"+password+"')";
     rst.doExecute(strAdd);
     out.println("<script language='javascript'>alert('注册成功');"+
                   "window.location.href='adduser.jsp';</script>");
   }
%>

