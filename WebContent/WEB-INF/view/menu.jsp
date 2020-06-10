<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.awt.print.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.KeizibanInfo"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>掲示板</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/dark.min.css">
</head>
<body>
	<a href="/keiziban1/Admin">管理者画面</a>
	<form id ="form" action="/keiziban1/Register" method="post">
		【投稿者】<br> <input type="text" name="name">
		<br> 【内容】<br>
		<textarea name="text" rows="10" cols="80" maxlength="256"></textarea><br>
		<input type="submit"value="投稿">
	</form>
	<p>===================================================================</p>
	<br>
	<%
		ArrayList<KeizibanInfo> list = (ArrayList<KeizibanInfo>) request.getAttribute("list");
		for (int i = 0; i < list.size(); i++) {
			KeizibanInfo keiziban = list.get(i);
	%>
	<p><%=keiziban.getNum()%>:<%=keiziban.getName()%></p>
	<p>～～～～～～～～～～～～～～</p>
	<p><%=keiziban.getText()%></p>
	<p>+++++++++++++++++++++++</p>
	<p><%=keiziban.getTime()%></p>
	<p>---------------------------------------------------------------</p>
	<%
		}
	%>
</body>
</html>




