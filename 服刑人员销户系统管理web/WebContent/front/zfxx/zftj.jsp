<%@ page contentType="text/html;charset=gb2312" language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<% request.setCharacterEncoding("gb2312");%>
<jsp:useBean id="People" scope="page" class="bao.People">
<jsp:setProperty name="khinfo" property="*"/>
</jsp:useBean>
<jsp:useBean  id="regist" scope="page" class="Bean.zftjBean"/>
<%
   regist.setPeople(People);
   regist.regist();//����regist()�����������ݿ����
   out.println("<script language='javascript'>alert('�Ǽǳɹ�');"+
     "window.location.href='khinfo.html';</script>");
%>
