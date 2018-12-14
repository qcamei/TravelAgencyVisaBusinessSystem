<%@page import="Util.DBconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>签证信息</title>
    </head>
    <body>
    	<center>
    		<h1>待办签证列表</h1>
    		<table border="1" cellpadding="10">
    			<tr>
    				<th>订单号</th>
    				<th>姓名</th>
    				<th>护照号码</th>
    				<th>签证国家</th>
    				<th>签证类型</th>
    				<th>状态</th>
    			</tr>
    			<!--
                	作者：offline
                	时间：2017-12-19
                	描述：循环插入数据
               -->
               <% Connection connection = DBconnection.getConnection();
               		Statement sql;
               		ResultSet rs;
               		try{
               			sql = connection.createStatement();
               			rs = sql.executeQuery("SELECT * FROM `visaorder`");
               			while(rs.next())
               			{
               				out.print("<tr>");
               					out.print("<td>"++"</td>");
               					out.print("<td>"++"</td>");
               					out.print("<td>"++"</td>");
               					out.print("<td>"++"</td>");
               					out.print("<td>"++"</td>");
               					out.print("<td>"++"</td>");
                   			out.print("</tr>");
               			}
               		}
               %>
    		</table>
    		<form>
    			根据
    			<select name="search_type">
    				<option value="VisaOrderNumber">订单号</option>
    				<option value="Name">姓名</option>
    				<option value="PassportNumber">护照号码</option>
    				<option value="Country">签证国家</option>
    				<option value="Type">签证类型</option>
    				<option value="Status">状态</option>
    			</select>
    			<input type="search" name="search" />
    			<input type="submit" value="搜索" />
    		</form>
    		<a href="VisaEnter.jsp">录入待办签证信息</a>
    	</center>
 	</body>
</html>