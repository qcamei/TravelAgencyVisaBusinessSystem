<%@page import="data.UpdateType"%>
<%@page import="data.Route"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新建线路</title>
</head>
<body>
	<a href="Route-list.jsp"><%="<<" %>返回</a>
	<h1 align="center">新建商品</h1>
	<%!Route route = null;%>
	<%
		request.setCharacterEncoding("utf-8");
		int routeid = Integer.parseInt(request.getParameter("id"));
	%>

	<div align="center">
		<form method="post" action="Route-list.jsp">
			<input type="hidden" name="id" value="<%=routeid%>">
			<input type="hidden" name="updateType" value="<%=UpdateType.INSERT%>">
			<table>
				<tr>
					<td>线路名称</td>
					<td><input type="text" name="routeName"/></td>
				</tr>
				<tr>
					<td>出发地</td>
					<td><input type="text" name="departure"/></td>
				</tr>
				<tr>
					<td>目的地</td>
					<td><input type="text" name="distinction"/></td>
				</tr>

				<tr>
					<td>行程安排</td>
					<td><input type="text" name="schedule"/></td>
				</tr>
				<tr>
					<td>出团日期</td>
					<td><input type=date name="date"/></td>
				</tr>
				<tr>
					<td>价格</td>
					<td><input type="text" name="price"/></td>
				</tr>
			</table>
			<br /> <input type="submit" value="提交">
		</form>
	</div>

</body>
</html>