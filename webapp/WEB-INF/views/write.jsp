<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/common.css"/>
<style>
table { text-align:center; margin:0 auto; margin-top: 100px;}
table td{font-size: 25px;}

</style>
</head>
<body>

<form action="/project/write" method="POST">
<input type="hidden" name="menu_id" value="${menu_id }"/>
<input type="hidden" name="writer" value="test"/>
<input type="hidden" name="bnum" value="0"/>
<input type="hidden" name="lvl" value="0"/>
<input type="hidden" name="step" value="0"/>
<input type="hidden" name="nref" value="0"/>
<table>
	<tr>
		<td>제목</td>
		<td><input type="text" name="title"/></td>
	</tr>
	
	<tr>
		<td>본문</td>
		<td><textarea name="cont"></textarea></td>
	</tr>
	
	<tr>
		<td><input type="submit" value="등록"></td>
		<td><a href="/">취소</a></td>
		
	</tr>

</table>

</form>
</body>
</html>