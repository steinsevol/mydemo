<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" %>
<% request.setCharacterEncoding("gb2312"); %>
<html>
  <head>
    <title>������Ա��������ϵͳ������</title>
    <meta content="text/html; charset=gb2312" http-equiv="Content-Type" />
    <link href="CSS/style.css" rel="stylesheet" type="text/css">
	</head>
  <body>
<script language="JavaScript">
  function show_div(menu){
    if(document.all.item(menu).style.display=="none"){
      document.all.item(menu).style.display="block";
      }else{
        document.all.item(menu).style.display="none";
        }
    }
</script>
<a href="#" onClick="show_div('menu1')" >��������ϵͳ�������</a>
<table width="186" height="331" border="0" cellpadding="0" cellspacing="0" class="tableBorder_bold">
  <tr>
    <td height="323" align="center" valign="top">
	<!--������Ϣ����-->
	<a href="#" onClick="show_div('menu1')" ><img name="Imgmenu1" border="0"
     src="images/menu_1.JPG" align="ABSMIDDLE" width="165" height="26"></a>
	<Div id="menu1">
  <table width="165" border="0" cellpadding="0" cellspacing="0" class="tableBorder">
   <tr><td width="18%" height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
       <td width="82%"><a href="zfxx/zfinfo.jsp" target="mainFrame">������Ա��Ϣ��ѯ</a></td>
  </tr>
  <tr><td height="24" align="center">&nbsp;<img url="images/meun1.jpg" width="4" height="7"></td>
      <td><a href="zfxx/zfinfo.jsp" target="mainFrame">������Ա��Ϣ���</a></td>
  </tr>
  <tr><td height="24" align="center">&nbsp;<img src="images/meun1.jpg" width="4" height="7"></td>
      <td><a href="zfxx/zfxh.jsp" target="mainFrame">������Ա�������</a></td>
  </tr>
 </table>
</Div>

<a href="#" onClick="show_div('menu2')"><img name="Imgmenu2" align="ABSMIDDLE"
    src="images/menu_7.JPG" border="0" width="165" height="28"></a><br>
<Div id="menu2"">
<table width="165" border="0" cellpadding="0" cellspacing="0" class="tableBorder">
 <tr>
 <td width="18%" height="24" align="center">&nbsp;<img src="images/meun1.jpg" width="4" height="7"></td>
 <td width="82%"><a href="./user/adduser.jsp" target="mainFrame">����Ա����</a></td>
 </tr>
  <tr>
 <td width="18%" height="24" align="center">&nbsp;<img src="images/meun1.jpg" width="4" height="7"></td>
 <td width="82%"><a href="./user/usermanager.jsp" target="mainFrame">���������޸�</a></td>
 </tr>
</table>
</Div>
	</td>
  </tr>
</table>





</body>
</html>












