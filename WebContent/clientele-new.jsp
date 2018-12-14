<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>客户添加</title>
</head>
<body>
		<center>
		<h1 align="center">客户信息</h1>
			<form action="VisaEnter" method="get">
			<table>
				<tr>
					<td>姓名</td>
					<td><input type="text" name="Name"></td>
				</tr>
				<tr>
					<td>身份证号码</td>
					<td><input type="text" name="IDcardNumber"></td>
				</tr>
				<tr>
					<td>性别</td>
					<td><input type="text" name="Sex"></td>
				</tr>
				<tr>
					<td>旅行团名称</td>
					<td><input type="text" name="tourName" /></td>
				</tr>
				<tr>
					<td>旅游路线</td>
					<td><input type="text" name="TourRoute"></td>
				</tr>
				<tr>
					<td>出游日期</td>
					<td><input type="date" name="Date"></td>
				</tr>
				<tr>
					<td>手机号码</td>
					<td><input type="text" name="PhoneNumber"></td>
				</tr>
				<tr>
					<td>家庭地址</td>
					<td><input type="text" name="HouseAddress"></td>
				</tr>
				<tr>
					<td>工作单位</td>
					<td><input type="text" name="WorkingPosition"></td>
				</tr>
				<tr>
					<td>旅游意向</td>
					<td><input type="text" name="TourismIntention"></td>
				</tr>
				<tr>
					<td>消费</td>
					<td><input type="text" name="Consume"></td>
				</tr>
				<tr>
					<td>备注</td>
					<td><input type="text" name="Remark"></td>
				</tr>
	
			</table>
						<br />
						<input type="submit" value="提交">
			</form>
		</center>

</body>
</html>