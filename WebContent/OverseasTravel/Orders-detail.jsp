<%@page import="data.UpdateType"%>
<%@page import="data.Order"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑订单信息</title>
</head>
<body>
<a href="Orders-list.jsp"><%="<<"%>返回</a>
	<h1 align="center">编辑订单信息</h1>
	<%!Order order = null;%>
	<%
		request.setCharacterEncoding("utf-8");
		int orderid = Integer.parseInt(request.getParameter("order_id"));
		order = Order.getOrder("SELECT * FROM OverseasTravelerOrder WHERE Order_Number=?",new Object[]{orderid});
	%>

	<div align="center">
		<form method="post" action="Orders-list.jsp">
			<input type="hidden" name="order_id" value="<%=order.getOrder_ID()%>">
			<input type="hidden" name="updateType" value="<%=UpdateType.UPDATE%>">
			<table>
				<tr>
					<td>线路名称</td>
					<td><input type="text" name="routeName"
						value="<%=order.getRouteName()%>"></td>
				</tr>
				<tr>
					<td>旅行团名称</td>
					<td><input type="text" name="tourName"
						value="<%=order.getTourName()%>"></td>
				</tr>
				<tr>
					<td>出游人数</td>
					<td><input type="text" name="peopleNum"
						value="<%=order.getPeopleNum()%>"></td>
				</tr>
				
				<tr>
					<td>订单总价</td>
					<td ><input type="text" name="totalPrice"
						value="<%=order.getTotalPrice()%>"></td>
				</tr>
				<tr>
					<td>下单日期</td>
					<td><input type="date" name="bornDate"
						value="<%=order.getBornDate()%>"></td>
				</tr>
				<tr>
					<td>订单状态</td>
					<td ><%=order.getState()%></td>
				</tr>
			</table>
			<br /> <input type="submit" value="保存">
		</form>
	</div>
</body>
</html>