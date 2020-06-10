<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.awt.print.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.KeizibanInfo"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理者画面</title>
<link rel="stylesheet"
href ="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/dark.min.css">
</head>
<body>
<a href="/keiziban1/Main">TOP</a>
	<%
			ArrayList<KeizibanInfo> list = (ArrayList<KeizibanInfo>) request.getAttribute("list");
			for (int i = 0; i < list.size(); i++) {
				KeizibanInfo keiziban = list.get(i);
		%>
	<p><%=keiziban.getNum()%>:<%=keiziban.getName()%></p>
	<p>~~~~~~~~~~~~~~~~~~~~~</p>
	<p><%=keiziban.getText()%></p>
	<p>++++++++++++++++++</p>
	<p>投稿時間：<%=keiziban.getTime()%></p>
	<p>編集時間：<%=keiziban.getEdittime()%></p>
	<form action="/keiziban1/Edit" method="post">
	<input type="hidden" name="num" value= <%=keiziban.getNum()%>>
	<input type="submit" value="編集">
	</form>
	<form action="/keiziban1/Delete" method="post">
	<input type="hidden" name="num" value= <%=keiziban.getNum()%>>
	<input type="submit" value="削除">
	</form>
	<p>--------------------------</p>
	<%
			}
		%>
</body>
</html>




