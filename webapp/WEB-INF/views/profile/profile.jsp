<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ include file="/WEB-INF/include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{border-collapse : collapse;
	margin-left:auto; margin-right:auto; 
	margin-top:100px;
	}
td{border : solid 1px;padding:5px;}
table td:nth-child(1) {text-align: center;}
</style>
</head>
<body>

<table>
	<tr>
		<td rowspan="5">사진</td>
	</tr>
	
	<tr>
		<td>이름</td>
		<td>김영근(Kim Yeong Geun)</td>
	</tr>
	
	<tr>
		<td>연락처</td>
		<td>010-4444-2196 &nbsp(비상연락처)010-5106-5666</td>
	</tr>
	
	<tr>
		<td>학력</td>
		<td>2015. 02 ~ 2020. 11 영진전문대학 컴퓨터공학 중퇴 <br>
			2012. 02 ~ 2015. 02 통영고등학교 졸업</td>
	</tr>
	
	<tr>
		<td>프로젝트</td>
		<td>2019. 04. 11 ~ 2019. 06. 13 : 리버풀, 우승 (C언어)<br>
			2019. 09. 12 ~ 2019. 12. 19 : 팬데믹 (JavaSwing)<br>
			2022. 10. 06 ~ 2022. 10. 20 : UAP(JavaSwing)<br>
			2022. 11. 30 ~ 2022. 12. 13 : GoD (JSP)
		</td>
	</tr>
</table>
</body>
</html>