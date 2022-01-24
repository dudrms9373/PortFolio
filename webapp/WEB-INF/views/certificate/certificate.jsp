<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.outer{height:100%;width:100%;margin-top: 30px;}

.inner {height:606px; width:906px;margin:0 auto;}

#none1 {height:200px; width:300px;border:solid 1px;background: none;float:left;}
#none2 {height:200px; width:300px;border:solid 1px;background: none;float:left;}
#none3 {height:200px; width:300px;border:solid 1px;background: none;float:left;}
#none4 {height:200px; width:300px;border:solid 1px;background: none;float:left;}

#certi1 {height:200px; width:300px;border:solid 1px;background: blue;float:left;}
#certi2 {height:200px; width:300px;border:solid 1px;background: blue;float:left;}
#certi3 {height:200px; width:300px;border:solid 1px;background: blue;float:left;}
#certi4 {height:200px; width:300px;border:solid 1px;background: blue;float:left;}
#certi5 {height:200px; width:300px;border:solid 1px;background: blue;float:left;}

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
	})
	$(' #certi1').mouseleave(function(){
		$('#certi1 > p:nth-child(2)').hide();
		$('#certi1 > p:nth-child(1)').show();
	})
	
	
	$('#certi2').mouseover(function(){
		$('#certi2 > p:nth-child(1)').hide();
		$('#certi2 > p:nth-child(2)').show();
	})
	$(' #certi2').mouseleave(function(){
		$('#certi2 > p:nth-child(2)').hide();
		$('#certi2 > p:nth-child(1)').show();
	})
	
	
	$('#certi3').mouseover(function(){
		$('#certi3 > p:nth-child(1)').hide();
		$('#certi3 > p:nth-child(2)').show();
	})
	$(' #certi3').mouseleave(function(){
		$('#certi3 > p:nth-child(2)').hide();
		$('#certi3 > p:nth-child(1)').show();
	})
	
	
	$('#certi4').mouseover(function(){
		$('#certi4 > p:nth-child(1)').hide();
		$('#certi4 > p:nth-child(2)').show();
	})
	$(' #certi4').mouseleave(function(){
		$('#certi4 > p:nth-child(2)').hide();
		$('#certi4 > p:nth-child(1)').show();
	})
	
	
	$('#certi5').mouseover(function(){
		$('#certi5 > p:nth-child(1)').hide();
		$('#certi5 > p:nth-child(2)').show();
	})
	$(' #certi5').mouseleave(function(){
		$('#certi5 > p:nth-child(2)').hide();
		$('#certi5 > p:nth-child(1)').show();
	})
	
	
})
</script>
</head>

<body>

<br>

<div class="outer">
	<div class="inner">

	<div id="certi1">
		<p>자격증1</p>
		 <p>워드있는데오</p>
		
	</div>
	
	
	<div id="none1">
	</div>
	
	<div id="certi2">
		<p>자격증2</p>
		<p>컴활있는데오</p>
	</div>
	
	<div id="none2">
	</div>
	
	<div id="certi3">
		<p>자격증3</p>
		<p>정산기있는데오</p>
	</div>
	
	<div id="none3">
	</div>
	
	<div id="certi4">
		<p>자격증4</p>
		<p>운전면허증있어요</p>
	</div>
	
	<div id="none4">
	</div>
	
	<div id="certi5"> 
		<p>자격증5</p>
		<p>정처기 필기있는데오</p>
	</div>
	
	</div>
</div>
</body>
</html>