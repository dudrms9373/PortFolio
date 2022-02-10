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
p {padding:55px; font-size: 20px; font-style: inherit;}
.outer{height:100%;width:100%;margin-top: 100px;}

.inner {height:606px; width:906px;margin:0 auto;}

#none1 {height:200px; width:300px;background: none;float:left;}
#none2 {height:200px; width:300px;background: none;float:left;}
#none3 {height:200px; width:300px;background: none;float:left;}
#none4 {height:200px; width:300px;background: none;float:left;}

#certi1 {height:200px; width:300px;background-image: linear-gradient(17deg, #044548, #1c614f, #2c8054, #3a9f59);float:left;}
#certi2 {height:200px; width:300px;background-image: linear-gradient(17deg, #044548, #1c614f, #2c8054, #3a9f59);float:left;}
#certi3 {height:200px; width:300px;background-image: linear-gradient(17deg, #044548, #1c614f, #2c8054, #3a9f59);float:left;}
#certi4 {height:200px; width:300px;background-image: linear-gradient(17deg, #044548, #1c614f, #2c8054, #3a9f59);float:left;}
#certi5 {height:200px; width:300px;background-image: linear-gradient(17deg, #044548, #1c614f, #2c8054, #3a9f59);float:left;}

#certi1  p:nth-child(2){display:none;}
#certi2  p:nth-child(2){display:none;}
#certi3  p:nth-child(2){display:none;}
#certi4  p:nth-child(2){display:none;}
#certi5  p:nth-child(2){display:none;}
</style>


<script>
$(function(){
	$('#certi1').mouseover(function(){
		$('#certi1 > p:nth-child(1)').hide();
		$('#certi1 > p:nth-child(2)').show();
		$('#certi1').css("background-image","linear-gradient(8deg, #00492d, #137955, #29ac80, #3fe2ae)");
	})
	$(' #certi1').mouseleave(function(){
		$('#certi1 > p:nth-child(2)').hide();
		$('#certi1 > p:nth-child(1)').show();
		$('#certi1').css("background-image","linear-gradient(17deg, #044548, #1c614f, #2c8054, #3a9f59)");
	})
	
	
	$('#certi2').mouseover(function(){
		$('#certi2 > p:nth-child(1)').hide();
		$('#certi2 > p:nth-child(2)').show();
		$('#certi2').css("background-image","linear-gradient(8deg, #00492d, #137955, #29ac80, #3fe2ae)");
		
	})
	$(' #certi2').mouseleave(function(){
		$('#certi2 > p:nth-child(2)').hide();
		$('#certi2 > p:nth-child(1)').show();
		$('#certi2').css("background-image","linear-gradient(17deg, #044548, #1c614f, #2c8054, #3a9f59)");
		
	})
	
	
	$('#certi3').mouseover(function(){
		$('#certi3 > p:nth-child(1)').hide();
		$('#certi3 > p:nth-child(2)').show();
		$('#certi3').css("background-image","linear-gradient(8deg, #00492d, #137955, #29ac80, #3fe2ae)");
		
	})
	$(' #certi3').mouseleave(function(){
		$('#certi3 > p:nth-child(2)').hide();
		$('#certi3 > p:nth-child(1)').show();
		$('#certi3').css("background-image","linear-gradient(17deg, #044548, #1c614f, #2c8054, #3a9f59)");
	})
	
	
	$('#certi4').mouseover(function(){
		$('#certi4 > p:nth-child(1)').hide();
		$('#certi4 > p:nth-child(2)').show();
		$('#certi4').css("background-image","linear-gradient(8deg, #00492d, #137955, #29ac80, #3fe2ae)");
		
	})
	$(' #certi4').mouseleave(function(){
		$('#certi4 > p:nth-child(2)').hide();
		$('#certi4 > p:nth-child(1)').show();
		$('#certi4').css("background-image","linear-gradient(17deg, #044548, #1c614f, #2c8054, #3a9f59)");
	})
	
	
	$('#certi5').mouseover(function(){
		$('#certi5 > p:nth-child(1)').hide();
		$('#certi5 > p:nth-child(2)').show();
		$('#certi5').css("background-image","linear-gradient(8deg, #00492d, #137955, #29ac80, #3fe2ae)");
		
	})
	$(' #certi5').mouseleave(function(){
		$('#certi5 > p:nth-child(2)').hide();
		$('#certi5 > p:nth-child(1)').show();
		$('#certi5').css("background-image","linear-gradient(17deg, #044548, #1c614f, #2c8054, #3a9f59)");
	})
	
	
})
</script>
</head>

<body>

<br>

<div class="outer">
	<div class="inner">

	<div id="certi1" class="center">
		<p >산업기사</p>
		 <p>정보처리산업기사 &nbsp 21. 04. 24 취득</p>
		
	</div>
	
	
	<div id="none1">
	</div>
	
	<div id="certi2" class="center">
		<p>기사</p>
		<p>정보처리기사 (필기) 21. 08. 14 취득</p>
	</div>
	
	<div id="none2">
	</div>
	
	<div id="certi3" class="center">
		<p>리눅스마스터</p>
		<p>리눅스마스터 2급 &nbsp 21. 04. 02 취득</p>
	</div>
	
	<div id="none3">
	</div>
	
	<div id="certi4" class="center">
		<p>면허증</p>
		<p>운전면허 1종 보통 &nbsp 15. 03. 03 취득</p>
	</div>
	
	<div id="none4">
	</div>
	
	<div id="certi5" class="center"> 
		<p>OA</p>
		<p>컴퓨터활용능력 1급 워드프로세서 1급</p>
	</div>
	
	</div>
</div>
</body>
</html>