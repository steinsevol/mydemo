<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import = "java.sql.*,java.io.* "%>
<%
	request.setCharacterEncoding("gb2312");
	%>
<html>
<title>������Ա����������Ϣ���</title>
<meta http-equiv="Content-Type" content="text/html">
</head>
<link href="../CSS/style.css" rel="stylesheet" type="text/css">
<body>
<table width="584" border="0" cellspacing="0" cellpadding="0">
<tr>
    <td height="27" bgcolor="#EEEEEE" class="tableBorder_gray">
    &nbsp;<span  class="word_deepgrey"> ��ǰλ�ã�������Ա������Ϣ����></span>������Ա������Ϣ���</td>
  </tr><tr><td>
    <form name="form1" method="post" action="khinfo.jsp" >
<br>
<table width="96%" height="112"  border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#F2F2F2">
       <tr><td height="27" colspan="4">&nbsp;</td></tr>
        <tr>
          <td height="25">������</td>
          <td width="177"><input type="text" name="name"> 
            </td>
            <td width="116">&nbsp;&nbsp;�Ա�</td>
            <td width="154"><input type="text" name="sex"></td></tr>
        <tr>
          <td height="25">��������</td>
          <td><input type="text" name="lastname"> 
            </td>
            <td>&nbsp;&nbsp;���壺</td>
            <td><input type="text" name="nation"></td></tr>
        <tr>
          <td height="25">�����أ�</td>
          <td><input type="text" name="birthplace"> 
            </td>
            <td>&nbsp;&nbsp;�������ڣ�</td>
            <td><input type="text" name="birth"></td></tr>
        <tr>
          <td height="25">סַ��</td>
          <td><input type="text" name="nativeplace"></td>
            <td>&nbsp;&nbsp;���֤��</td>
            <td><input type="text" name="id"></td></tr>
        <tr>
          <td height="25">�Ļ��̶ȣ�</td>
          <td><input type="text" name="study"></td>
            <td>&nbsp;&nbsp;��ߣ�</td>
            <td><input type="text" name="height"></td></tr>
        <tr>
          <td height="25">Ѫ�ͣ�</td>
          <td><input type="text" name="blood"></td>
           <td>&nbsp;&nbsp;����״����</td>
            <td><input type="text" name="marriage"></td>
          </tr>
    <tr>
        <td height="40" colspan="4" align="center">
		<input name="submit1" type="button" class="btn_grey" onClick="check()" value="���">          &nbsp;
          <input  name="reset" type="reset" class="btn_grey" value="����"></td>
        </tr>
   </table>   
    </form>
   </td></tr></table>
</body>
</html>
<script language="javascript">
function check()
{
  if(form1.khname.value==0){
    alert("");form1.khname.focus();return;}
  if(form1.address.value==0){
    alert("");form1.address.focus();return;}
  if(form1.tel.value==0){
    alert("");form1.tel.focus();return;}
  if(form1.lxr.value==0){
    alert("");form1.lxr.focus();return;}
  form1.submit();
}

</script>
	