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

table {
	border-collapse: collapse;
	margin-left:auto; margin-right:auto;
	margin-top:100px;
	width:75%;
	height:70%;
	}
	
table td{border: solid 1px; text-align: center;font-size:25px;}


textarea{width:100%;height:100%;}

#update{width:100%;height:50px;}
#btncancel{width:100%;height:50px;}
#title{width:100%;height:100%;}
</style>
<script>
$(document).ready(function(){
	$('#btncancel').on('click',function(){
		location.href='/project/List?menu_id=${menu_id}';
	})
})
</script>
</head>
<body>

   <form action="/project/update" method="POST">
   <input type="hidden" name="idx"      value="${ mboard.idx }" />
   <input type="hidden" name="menu_id"  value="${ menu_id }" />
<table>
	<tr>
		<td class="title">제목</td>
		<td  class="title"><input type="text" name="title" id="title" value="${mboard.title }"/></td>
	</tr>
	
	<tr>
		<td class="cont">본문</td>
		<td class="cont"><textarea name="cont">${mboard.cont }</textarea></td>
	</tr>
	
	<tr>	
		<td ><input type="submit" value="수정" id="update"/></td>
		<td><input type="button" value="취소" id="btncancel" /> </td>
	</tr>
	
	</table>
	
	</form>
</body>
</html>