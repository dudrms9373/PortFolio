<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
header{
position : fixed; margin:0 auto; 
width: 100%;top:0;left:0;right:0;
border: 1px solid;
font-size: 25px;
}
nav{float:left;width:15%; padding-left:100px; }
.nav1 {text-align: center;}
.nav2 {text-align: center;}
.nav4 {text-align: center;}
li{list-style: none;float:left;padding-left:5px;}
ul{margin:0 auto;padding:0;}
.sub_menu{display:none;}

</style>
<script>
$(function(){

$('#main_menu > li > a').mouseover(function(){
	$('.sub_menu').slideToggle('fast');
})

$('#main_menu > li > ul').mouseleave(function(){
	$('.sub_menu').hide();
})

})
</script>
<header>
		<nav id="nav1"> <a href="/">home</a></nav>
		
			<nav id="nav2"><a href="/profile">ProFile</a></nav>
			
			<nav id="nav3"><ul id="main_menu">
					<li><a href="/project/List?menu_id=MENU01">Project</a>
						<ul class="sub_menu"> 
							<li><a href="/project/List?menu_id=MENU01">C언어</a></li>
							<li><a href="/project/List?menu_id=MENU02">Java</a></li>
							<li><a href="/project/List?menu_id=MENU03">JSP</a></li>
							<li><a href="/project/List?menu_id=MENU04">Spring</a></li>
						</ul>
					</li>
				</ul>
			</nav>
			
			<nav id="nav4"><a href="/certificate">Certificate</a></nav>
</header>
</html>