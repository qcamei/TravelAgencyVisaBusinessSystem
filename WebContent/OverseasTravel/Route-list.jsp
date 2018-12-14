<%@page import="data.UpdateType"%>
<%@page import="bean.Bean"%>
<%@page import="data.Route"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>线路管理</title>
</head>
<style>
.line-limit-length {
	max-width: 80px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}
</style>
<body>
	<h1 align="center">线路信息列表</h1>
	<div align="center">
		<table border="1" cellpadding="10">
			<thead>
				<tr>
					<th style="min-width: 100px;">名称</th>
					<th style="min-width: 100px;">出发地</th>
					<th style="min-width: 100px;">目的地</th>
					<th style="min-width: 100px;">行程安排</th>
					<th style="min-width: 100px;">出行日期</th>
					<th style="min-width: 100px;">价格</th>
					<th colspan="2" style="width: 80px;">操作</th>
				</tr>
			</thead>
			<tbody>
				<%
					request.setCharacterEncoding("utf-8");
					if (request.getParameter("id") != null) {
						int routeid = Integer.parseInt(request.getParameter("id"));
						if (request.getParameter("updateType").equals(UpdateType.UPDATE)) {
							Object[] params = new Object[7];
							params[0] = request.getParameter("routeName");
							params[1] = request.getParameter("departure");
							params[2] = request.getParameter("distinction");
							params[3] = request.getParameter("schedule");
							params[4] = request.getParameter("date");
							params[5] = request.getParameter("price");
							params[6] = routeid;
							Route.updateRoute(request.getParameter("updateType"), params);
						} else if (request.getParameter("updateType").equals(UpdateType.INSERT)) {
							Object[] params = new Object[7];
							params[0] = routeid;
							params[1] = request.getParameter("routeName");
							params[2] = request.getParameter("departure");
							params[3] = request.getParameter("distinction");
							params[4] = request.getParameter("schedule");
							params[5] = request.getParameter("date");
							params[6] = request.getParameter("price");
							Route.updateRoute(request.getParameter("updateType"), params);
						}
					}
					List<Route> routes = null;
					if (routes == null) {
				%>
				<jsp:useBean id="Bean" class="bean.Bean" />
				<%
					routes = Bean.getRoutes();
					}
					int i = 0;
					for (; i < routes.size(); i++) {
				%>
				<tr>
					<td class="line-limit-length" align="center"><%=routes.get(i).getRouteName()%>
					</td>
					<td class="line-limit-length" align="center"><%=routes.get(i).getDeparture()%></td>
					<td class="line-limit-length" align="center"><%=routes.get(i).getDistinction()%></td>
					<td class="line-limit-length" align="center"><%=routes.get(i).getSchedule()%></td>
					<td class="line-limit-length" align="center"><%=routes.get(i).getDate()%></td>
					<td class="line-limit-length" align="center"><%=routes.get(i).getPrice()%></td>
					<td align="center"><a
						href="Route-detail.jsp?id=<%=routes.get(i).getID()%>">编辑</a></td>
					<td align="center"><a
						href="Route-delete.jsp?id=<%=routes.get(i).getID()%>">删除</a></td>
				</tr>

				<%
					}
				%>

				<tr>
					<td align="right" colspan="8"><a
						href="Route-new.jsp?id=<%=routes.size() + 1%>">新建线路</a></td>
			</tbody>
		</table>
	</div>
</body>
</html>