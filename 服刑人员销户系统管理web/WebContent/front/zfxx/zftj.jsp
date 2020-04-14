<%@ page contentType="text/html;charset=gb2312" language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<% request.setCharacterEncoding("gb2312");%>
<jsp:useBean id="People" scope="page" class="bao.People">
<jsp:setProperty name="khinfo" property="*"/>
</jsp:useBean>
<jsp:useBean  id="regist" scope="page" class="Bean.zftjBean"/>
<%
   regist.setPeople(People);
   regist.regist();//调用regist()方法来对数据库操作
   out.println("<script language='javascript'>alert('登记成功');"+
     "window.location.href='khinfo.html';</script>");
%>
