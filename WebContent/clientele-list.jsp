<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>客户列表</title>
</head>
<body>
center>
			<h2>客户管理</h2>
		<form >
				<a href="">添加客户信息</a>
    			<br />
    			通过
    			<select name="search_type">
    				<option value="VIP">会员号</option>
    				<option value="Name">姓名</option>
    				<option value="IDcardNumber">身份证号码</option>
    				<option value="PhoneNumber">手机号码</option>
    				<option value="HouseAddress">家庭地址</option>
    				<option value="Date">出游日期</option>
    			</select>
    			<input type="search" name="search" />
    			<a href="">查询</a>
			</form><!-- 按钮 -->
		<table border="1">
 		<tr>
   			 <th>会员号</th>
    		<th>姓名</th>
	 		<th>身份证号码</th>
	  		<th>性别</th>
	  		<th>旅行团名称</th>
			<th>旅游路线</th>
	  		<th>出游日期</th>
	  		<th>手机号码</th>
	  		<th>家庭地址</th>
	  		<th>工作单位</th>
	  		<th>旅游意向</th>
	  		<th>消费</th>
	  		<th>备注</th>
	  		<th>操作</th>
 		</tr>
 		<!-- 以下是例子，往后用循环代替 -->
		<tr>
  				<td>00001</td>
  				<td>李加菲</td>
  				<td>441121121211512122</td>
  				<td>男</td>
  				<th>深圳一日游</th>
  				<td>广州-深圳</td>
  				<td>2017.12.22</td>
  				<td>12345678911</td>
  				<td>广州市番禺区沙湾镇</td>
  				<td>广州市番禺区番禺大道7仔店</td>
  				<td>观光购物</td>
  				<td>2000RMB</td>
   				<td>此人可发展为长期客户</td>
  				 <td>
   					<a href="">编辑</a>
				<input type="submit" value="删除">
   				
				
  				 </td>
		</tr>
		</table><!-- 表格 -->
		</center>
	

</body>
</html>