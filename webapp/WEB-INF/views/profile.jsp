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
table{border-collapse : collapse;
	margin-left:auto; margin-right:auto; 
	margin-top:100px;
	}
td{border : solid 1px; margin:0; font-size: 30px;}
table td:nth-child(1) {width:400px; height:80px; margin:0;}
table td:nth-child(7) {text-align: left;}
img {max-width:100%; height:570px;}

</style>
</head>
<body>

<table>
	<tr>
		<td rowspan="5" style="line-height:0"><img src="${img }"/></td>
	</tr>
	
	<tr>
		<td class="center">이름</td>
		<td class="center">김영근(Kim Yeong Geun)</td>
	</tr>
	
	<tr>
		<td class="center">연락처</td>
		<td class="center">010-4444-2196 &nbsp(비상연락처)010-5106-5666</td>
	</tr>
	
	<tr>
		<td class="center">학력</td>
		<td class="left">2022. 02  학점은행제 컴공 학사학위 취득 예정 <br>
			2015. 02 ~ 2020. 11 영진전문대학 컴퓨터공학 중퇴 <br>
			2012. 02 ~ 2015. 02 통영고등학교 졸업</td>
	</tr>
	
	<tr>
		<td class="center">프로젝트</td>
		<td class="left">2019. 04. 11 ~ 2019. 06. 13 : 리버풀, 우승 (C언어)<br>
			2019. 09. 12 ~ 2019. 12. 19 : 팬데믹 (JavaSwing)<br>
			2022. 10. 06 ~ 2022. 10. 20 : UAP(JavaSwing)<br>
			2022. 11. 30 ~ 2022. 12. 13 : GoD (JSP)
		</td>
	</tr>
</table>
</body>
</html>