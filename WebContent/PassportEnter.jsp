<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>护照信息录入</title>
	</head>

	<body>
		<center>
			<h1>录入护照信息</h1>
			<form>
				<table>
					<tr>
						<td>姓名：</td>
						<td><input type="text" name="name" /></td>
					</tr>
					<tr>
						<td>性别：</td>
						<td><input type="text" name="sex" /></td>
					</tr>
					<tr>
						<td>出生日期：</td>
						<td><input type="date" name="Bornday" /></td>
					</tr>
					<tr>
						<td>护照号码：</td>
						<td><input type="text" name="PassportNumber" /></td>
					</tr>
					<tr>
						<td>有效期限：</td>
						<td><input type="date" name="ValidityPeriod" /></td>
					</tr>
					<tr>
						<td>签发机关：</td>
						<td><input type="text" name="IssuingAuthority" /></td>
					</tr>
					<tr>
						<td>签发地点：</td>
						<td><input type="text" name="IssueLocation" /></td>
					</tr>
				</table>
			</form>
			<input type="submit" value="提交" />
		</center>
	</body>

</html>