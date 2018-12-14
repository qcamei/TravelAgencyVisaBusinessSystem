<%@page import="data.UpdateType"%>
<%@page import="data.Order"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>出境游订单</title>
</head>
<body>
	<h1 align="center">订单列表</h1>
	<div align="center">
		<table cellpadding="10" border="1">
			<thead>
				<tr>
					<th style="min-width: 100px;">线路名称</th>
					<th style="min-width: 100px;">旅行团名称</th>
					<th style="min-width: 100px;">出团人数</th>
					<th style="min-width: 100px;">总价</th>
					<th style="min-width: 100px;">下单日期</th>
					<th style="min-width: 100px;">订单状态</th>
					<th colspan="2" style="width: 80px;">操作</th>
				</tr>
			</thead>
			<tbody>
				<%
				request.setCharacterEncoding("utf-8");
				if (request.getParameter("order_id") != null) {
					int orderid = Integer.parseInt(request.getParameter("order_id"));
					if (request.getParameter("updateType").equals(UpdateType.UPDATE)) {
						Object[] params = new Object[6];
						params[0] = request.getParameter("routeName");
						params[1] = request.getParameter("tourName");
						params[2] = request.getParameter("peopleNum");
						params[3] = request.getParameter("totalPrice");
						params[4] = request.getParameter("bornDate");
						params[5] = orderid;
						Order.updateOrders(request.getParameter("updateType"), params);
					} else if (request.getParameter("updateType").equals(UpdateType.INSERT)) {
						Object[] params = new Object[7];
						params[0] = orderid;
						params[1] = request.getParameter("routeName");
						params[2] = request.getParameter("tourName");
						params[3] = request.getParameter("peopleNum");
						params[4] = request.getParameter("totalPrice");
						params[5] = request.getParameter("bornDate");
						params[6] = request.getParameter("state");
						Order.updateOrders(request.getParameter("updateType"), params);
					}
				}
					List<Order> orders = null;
					if (orders == null) {
				%>
				<jsp:useBean id="Bean" class="bean.Bean" />
				<%
				orders = Bean.getOrders();
					}
					for (Order order : orders) {
				%>
				<tr>
					<td class="line-limit-length" align="center"><%=order.getRouteName()%></td>
					<td class="line-limit-length" align="center"><%=order.getTourName()%></td>
					<td class="line-limit-length" align="center"><%=order.getPeopleNum()%></td>
					<td class="line-limit-length" align="center"><%=order.getTotalPrice()%></td>
					<td class="line-limit-length" align="center"><%=order.getBornDate()%></td>
					<td class="line-limit-length" align="center"><%=order.getState()%></td>
					<td align="center"><a
						href="Orders-detail.jsp?order_id=<%=order.getOrder_ID()%>">编辑</a></td>
					<td align="center"><a
						href="Orders-delete.jsp?order_id=<%=order.getOrder_ID()%>">删除</a></td>
				</tr>
				<%
					}
				%>
				<tr>
					<td align="right" colspan="8"><a
						href="Orders-new.jsp?order_id=<%=orders.size() + 1%>">新建订单</a></td>
			</tbody>
		</table>
	</div>
</body>
</html>