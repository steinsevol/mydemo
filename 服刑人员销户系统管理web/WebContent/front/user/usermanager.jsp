<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" %>
<% request.setCharacterEncoding("gb2312"); %>
<%@ page import="java.io.*,java.sql.*"%>
<jsp:useBean id="rst" scope="page" class="DButil.DBResult"/>
<jsp:useBean id="trans" scope="page" class="Chinese.ToChinese"/>
<html>
  <title>�û���������</title>
  <link href="../CSS/style.css" rel="stylesheet" type="text/css">
  <meta http-equiv="Content-Type" content="text/html;charset=gb2312">
  <body>
    <body>
<%
    request.setCharacterEncoding("gb2312");//���ַ���ͳһ���������ύ�е�������������
   //��ֹ�Ƿ��û��ƹ���¼ҳ�棬ֱ�ӽ���ϵͳ�ڲ�
   boolean isLog=false;
   try{
     //����û��Ƿ��¼����Ϣ
     isLog=((String)session.getAttribute("isLog")).equals("1");
     }catch(Exception e){}
   if(!isLog){
     out.println("<script language='javascript'>alert('����û�е�¼');"+
                  "parent.location.href='../index.jsp';</script>");
     }
%>
<table width="584" border="0" cellspacing="0" cellpadding="0">
<tr>
    <td height="27" colspan="6" bgcolor="#EEEEEE" class="tableBorder_gray">
    &nbsp;<span  class="word_deepgrey"> ��ǰλ�ã�ϵͳ���� > </span>���������޸�</td>
  </tr>
    <tr><td valign="top" height="83">
    <table width="100%" height="163"  border="0" cellpadding="0" cellspacing="0">
	<tr><td  height="27">
    </td>
	</tr>
      <form name="form1" method="post" action="userpassword.jsp">
        <tr><td height="25" align="center"><div align="center">����Ա������
          <input type="text" name="username"
             value="<%=session.getAttribute("username")%>" readonly>
          </td></tr><tr><td height="25" align="center">
          ԭ&nbsp;&nbsp;��&nbsp;&nbsp;�룺
          <input type="password" name="password">
          </td></tr><tr><td height="25" align="center">
          ��&nbsp;&nbsp;��&nbsp;&nbsp;�룺
          <input type="password" name="newpw1">
          </td></tr><tr><td height="25" align="center">
          ȷ�������룺
          <input type="password" name="newpw2">
          </td></tr>
        <tr><td height="36" align="center">
          <input  type="button" class="btn_grey" value="ȷ���޸�" onClick="check()">
            <input type="reset" class="btn_grey" value="ȡ���޸�" onClick="reset()">
            <a href="userexit.jsp">�˳�ϵͳ</a>
          </td></tr></form>
    </table>
	</td></tr></table>
  </body>
</html>
<script language="javascript">
function check()
{
  if(form1.password.value==0){
    alert("����������");form1.password.focus();return;
  }
  if(form1.newpw1.value==0){
    alert("������������");form1.newpw1.focus();return;
  }
  if(form1.newpw2.value==0){
    alert("���ٴ�����������");form1.newpw2.focus();return;
  }
  if(form1.newpw1.value!=form1.newpw2.value){
    alert("�������������벻һ��,���������");
    form1.newpw1.value="";
    form1.newpw2.value="";
    form1.newpw1.focus();
    return;
  }
  this.form1.submit();
}
function reset()
{
  form1.reset();
}
</script>







