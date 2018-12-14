<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
    		<h1>旅游签证系统</h1>
    		<form action="Login" method="POST">
    			<table>
    				<tr>
    					<td>账号：</td>
    					<%if(request.getParameter("userName") != null){ %>
    					<td><input type="text" name="userName" value="<%=request.getParameter("userName")%>"/></td>
    					<%}else{ %>
    					<td><input type="text" name="userName" /></td>
    					<%} %>
    					<%if(request.getAttribute("userNameError") != null){ %>
    					<td><font color="#FF0000"><%=request.getAttribute("userNameError")%></font></td>
    					<%} %>
    				</tr>
    				<tr>
    					<td>密码：</td>
    					<%if(request.getParameter("password") != null){ %>
    					<td><input type="password" name="password" value="<%=request.getParameter("password")%>"/></td>
    					<%}else{ %>
    					<td><input type="password" name="password" /></td>
    					<%} %>
    					<%if(request.getAttribute("passwordError") != null){%>
    					<td><font color="#FF0000"><%=request.getAttribute("passwordError")%></font></td>
    					<%} %>
    				</tr>
    				<tr>
    					</table>
    				<input type="submit" value="登录" />
    		</form>
</body>
</html>