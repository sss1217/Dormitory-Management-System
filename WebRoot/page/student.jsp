<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>My JSP 'student.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div style="position:absolute; left:130; top:50;width:900; height:800;">
    	<table border="1" width="80%" cellspacing="0">
    			<tr>
    			<td>姓名</td>
    			<td>性别</td>
    			<td>专业</td>
    			<td>班级</td>
    			<td>电话</td>
    			<td>学号</td>
    			<td>楼栋号</td>
    			<td>宿舍号</td>
    			<td>修改信息</td>
    			<td>开除学生</td>
    			</tr>
    	<c:forEach items="${stu}" var="s">
    		<tr>
    			<td>${s.sname }</td>
    			<td>${s.sgender }</td>
    			<td>${s.smajor }</td>
    			<td>${s.sclass }</td>
    			<td>${s.stel }</td>
    			<td>${s.snumber }</td>
    			<td>${s.buildingnumber }</td>
    			<td>${s.dname }</td>
    			<td><input type="button" value="修改" onclick="myupdate(${d.did},${d.dname },${d.dmaxnum },${d.dactualnum },'${d.dtype }')"/></td>
    			<td><input type="button" value="删除" onclick="mydelete(${d.did})"/></td>
    		</tr>
    	</c:forEach>
    	<tr>
    		<td colspan="10" align="center">${pageString }</td>
    	</tr>
    	</table>
    </div>
  </body>
</html>
