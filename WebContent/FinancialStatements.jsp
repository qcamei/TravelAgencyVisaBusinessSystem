<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>财务信息录入</title>
    </head>
    <body>
    	<center>
    		<h1>添加信息</h1>
    		<form action="Visa.jsp">
    			<table>
    				<tr>
    					<td>日期：</td>
    					<td><input type="text" name="name"/></td>
    				</tr>
    				<tr>
    					<td>客户/供应商/经办人(C/S/F)</td>
    					<td><input type="text" name="IDcardNumber"/></td>
    				</tr>
    				<tr>
    					<td>内容概要</td>
    					<td><input type="text" name="PassportNumber"/></td>
    				</tr>
    				<tr>
    					<td>金额(元)：</td>
    					<td><input type="text" name="country"/></td>
    				</tr>
    				<tr>
    					<td>结余(元)：</td>
    					<td><input type="text" name="price"/></td>
    				</tr>
    			</table>
    			</form>
			<input type="submit" value="提交" />
		</center>
	</body>
</html>