<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.UpdateType"%>
<%@page import="data.Order"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新建订单</title>
</head>
<body>
	<a href="Orders-list.jsp"><%="<<"%>返回</a>
	<h1 align="center">新建订单</h1>
	<%!Order order = null;%>
	<%
	SimpleDateFormat sfg = new SimpleDateFormat("YYYY-MM-dd");
		request.setCharacterEncoding("utf-8");
		int orderid = Integer.parseInt(request.getParameter("order_id"));
	%>
	<div align="center">
		<form method="post" action="Orders-list.jsp">
			<input type="hidden" name="order_id" value="<%=orderid%>"> 
			<input type="hidden" name="updateType" value="<%=UpdateType.INSERT%>">
			<input type="hidden" name="bornDate" value="<%=sfg.format(new Date())%>" />
			<table>
				<tr>
					<td>线路名称</td>
					<td><input type="text" name="routeName" /></td>
				</tr>
				<tr>
					<td>旅行团名称</td>
					<td><input type="text" name="tourName" /></td>
				</tr>
				<tr>
					<td>人数</td>
					<td><input type="text" name="peopleNum" /></td>
				</tr>

				<tr>
					<td>总价</td>
					<td><input type="text" name="totalPrice" /></td>
				</tr>
				<tr>
					<td>状态</td>
					<td><select name="state">
							<option value="已完成">已完成</option>
							<option value="未完成">未完成</option>
					</select></td>
				</tr>
			</table>
			<br /> <input type="submit" value="确定">
		</form>
	</div>
</body>
</html>