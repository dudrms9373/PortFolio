<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

   <form action="/project/update" method="POST">
   <input type="hidden" name="idx"      value="${ mboard.idx }" />
   <input type="hidden" name="menu_id"  value="${ menu_id }" />
<table>
	<tr>
		<td>제목</td>
		<td><input type="text" name="title" value="${mboard.title }"/></td>
	</tr>
	
	<tr>
		<td>본문</td>
		<td><textarea name="cont">${mboard.cont }</textarea></td>
	</tr>
	
	<tr>	
		<td><input type="submit" value="수정"/></td>
	</tr>
	
	</table>
	
	</form>
</body>
</html>