<%@page import="data.UpdateType"%>
<%@page import="data.Route"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除线路</title>
<script language="javascript" type="text/javascript"> 
	function deleteItem(){
		//var r=confirm("是否删除？");
		//if (r==true){
			<%
			int routeid = Integer.parseInt(request.getParameter("id"));
			Route.updateRoute(UpdateType.DELETE.toString(), new Object[] {routeid});
			%>
			window.location.href="Route-list.jsp";
		//}
		//else{
		//	window.location.href="Route-list.jsp";
		//}
	}
	window.onload = deleteItem ;  
</script> 
</head>
<body>
	

</body>
</html>