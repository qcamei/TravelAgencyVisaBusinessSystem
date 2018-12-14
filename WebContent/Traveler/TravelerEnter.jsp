<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>旅客信息输入</title>
</head>
<body>
	<center>
    		<h1>录入旅客信息</h1>
    		<form action="TravelerEnter" method="post">
    			<table>
    				<tr>
    					<td>姓名：</td>
    					<td><input type="text" name="Name"/></td>
    				</tr>
    				<tr>
    					<td>性别：</td>
    					<td><select name="Sex">
    						<option value="男">男</option>
    						<option value="女">女</option> 
    					</select></td>
    				</tr>
    				<tr>
    					<td>出生日期：</td>
    					<td><input type="date" name="Bornday"/></td>
    				</tr>
    				<tr>
    					<td>地址：</td>
    					<td><input type="text" name="Address"/></td>
    				</tr>
    				<tr>
    					<td>电子邮箱：</td>
    					<td><input type="text" name="Email"/></td>
    				</tr>
    				<tr>
    					<td>电话：</td>
    					<td><input type="text" name="Phone"/></td>
    				</tr>
    				<tr>
    					<td>身份证号码：</td>
    					<td><input type="text" name="IDCardNumber"/></td>
    				</tr>
    			</table>
    			<input type="submit" value="提交"/>
    		</form>
    	</center>
</body>
</html>