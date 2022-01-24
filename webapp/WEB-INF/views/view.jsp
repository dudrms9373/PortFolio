<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</head>
<body>
<table>
	<tr>
		<td>제목</td>
		<td>${mboard.title }</td>
	</tr>
	
	<tr>
		<td>본문</td>
		<td>${mboard.cont }</td>
	</tr>
	
	<tr>
		<td><input type="button" id="update" value="수정"></td>
		<td><input type="button" id="delete" value="삭제"></td>
		<td><input type="button" id="cancel" value="취소"></td>
	</tr>

</table>

</form>
</body>
</html>