<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.sql.*"%>
<%
	request.setCharacterEncoding("gb2312");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>进销存管理系统框架</title>
</head>
<frameset rows="*" cols="*,778,*" framespacing="1" frameborder="no"
	border="1">
	<frame src="rest.jsp" name="restFrame" scrolling="NO" noresize>
	<frameset rows="117,*" cols="*" frameborder="NO" border="0"
		framespacing="0">
		<frame src="top.jsp" name="topFrame" scrolling="NO" noresize>
		<frameset rows="*" cols="194,*" framespacing="0" frameborder="NO"
			border="0">
			<frame src="meun.jsp" name="meunFrame" frameborder="no"
				scrolling="AUTO" noresize>
			<frame src="main.jsp" name="mainFrame" frameborder="no"
				scrolling="AUTO" noresize marginwidth="1" marginheight="1"
				bordercolor="#CCCCCC">
		</frameset>
	</frameset>

	<frame src="rest.jsp" name="restFrame">
</frameset>
<noframes>
	<body>
	</body>
</noframes>
</html>
