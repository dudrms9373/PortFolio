<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/include/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/common.css"/>
<style>
table {border-collapse: collapse;
	 margin-left:auto; margin-right:auto;
	margin-top:100px;
	}
table td{border: solid 1px; text-align: center;font-size:25px;}
</style>
</head>
<body>
<br>

<table>
<tr>
<td colspan="6"><a href="/project/writeForm?menu_id=${menu_id}">글 쓰기</a></td>

</tr>
	<tr>
		<td>번호</td>
		<td>제목</td>
		<td>글쓴이</td>
		<td>날짜</td>
		<td>조회수</td>
		<td>파일</td>
	</tr>
	<c:forEach var="board" items="${mboardList}">
	<tr>
		<td>${board.idx }</td>
		<td><a href="/project/view?menu_id=${menu_id}&idx=${board.idx}">${board.title }</a></td>
		<td>${board.writer }</td>
		<td>${board.regdate }</td>
		<td>${board.readcount }</td>
		<td>파일</td>
	</tr>
	</c:forEach>
</table>

</body>
</html>