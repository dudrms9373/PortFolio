<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/include/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/common.css"/>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
   $(document).ready(function() {
	   $('[type=button]').on('click', function( e ) {
		   var  btn  = e.target;
		   var  href = '';
		   switch( btn.id ) {
		
		   case 'cancel':    // 목록
			   href  = '/project/List?menu_id=${menu_id}';
			   break;	 
			   
		   case 'update':    // 수정
			   href  = '/project/UpdateForm?menu_id=${menu_id}';
			   href += '&idx=${ mboard.idx }'; 
			   break;	 
			   
		   case 'delete':    // 삭제
			   href  = '/project/delete?menu_id=${menu_id}';
			   href += '&idx=${ mboard.idx }'; 
			   break;	  
		   }
		   location.href = href;
	   })
   })
</script>

<style>
table {
	border-collapse: collapse;
	margin-left:auto; margin-right:auto;
	margin-top:100px;
	width:75%;
	height:70%;
	}
	
	#update{width:100%;height:50px;}
	#delete{width:100%;height:50px;}
	#cancel{width:100%;height:50px;}
	
table td{
	text-align:center;
	border: solid 1px;
	font-size: 25px;
	}

</style>
</head>
<body>
<table>
	<tr>
		<td class="title">제목</td>
		<td colspan="3" class="title">${mboard.title }</td>
	</tr>
	
	<tr>
		<td class="regdate">작성일</td>
		<td class="regdate"> ${mboard.regdate }</td>
		
		<td class="readcount">조회수</td>
		<td class="readcount">${mboard.readcount}</td>
	</tr>
	
	<tr>
		<td class="cont">본문</td>
		<td colspan="3" class="cont">${mboard.cont }</td>
	</tr>
	
	<tr>
		<td><input type="button" id="update" value="수정"></td>
		<td><input type="button" id="delete" value="삭제"></td>
		<td colspan="2"><input type="button" id="cancel" value="취소"></td>
	</tr>

</table>
</body>
</html>