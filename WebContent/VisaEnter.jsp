<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>签证信息录入</title>
    </head>
    <body>
    	<center>
    		<h1>录入待办签证信息</h1>
    		<form action="VisaEnter" method="post">
    			<table>
    				<tr>
    					<td>姓名：</td>
    					<td><input type="text" name="name"/></td>
    				</tr>
    				<tr>
    					<td>身份证号码：</td>
    					<td><input type="text" name="IDcardNumber"/></td>
    				</tr>
    				<tr>
    					<td>护照号码：</td>
    					<td><input type="text" name="PassportNumber"/></td>
    				</tr>
    				<tr>
    					<td>签证国家：</td>
    					<td><input type="text" name="country"/></td>
    				</tr>
    				<tr>
    					<td>价格：</td>
    					<td><input type="text" name="price"/></td>
    				</tr>
    			</table>
    			<!--
                	作者：offline
                	时间：2017-12-19
                	描述：外交签证、公务签证、移民签证、
                	非移民签证、礼遇签证、旅游观光签证、
                	工作签证、留学签证、商务签证以及家属签证
                -->
    			<select name="type">
    				<option value="Diplomatic">外交签证</option>
    				<option value="Official">公务签证</option>
    				<option value="Immigration">移民签证</option>
    				<option value="Nonimmigrant">非移民签证</option>
    				<option value="Courtesy">礼遇签证</option>
    				<option value="Sightseeing">旅游观光签证</option>
    				<option value="Jobs">工作签证</option>
    				<option value="StudyAbroad">留学签证</option>
    				<option value="Busine">商务签证</option>
    				<option value="FamilyMembers">家属签证</option>
    			</select>
    			<input type="submit" value="提交"/>
    		</form>
    	</center>
 	</body>
</html>