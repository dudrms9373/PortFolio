<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">

	<c:set var="showprev" value="${pageVo.ishowpageprev}"/>
	<c:set var="shownext" value="${pageVo.ishowpagenext}"/>

	<c:set var="startnum" value="${pageVo.pagestartnum}"/>
	<c:set var="endnum" value="${pageVo.pageendnum}"/>
	<c:set var="pagegrpnum" value="${pageVo.pagegrpnum}"/>
	
	<c:set var="totalcount" value="${pageVo.totalcount }"/>
	<c:set var="pagecount" value="${pageVo.pagecount }"/>
	<c:set var="totalpagecount" value="${pageVo.totalpagecount }"/>
	
	<c:set var="nowpage" value="${pageVo.nowpage}"/>
	<c:set var="prevnowpage" value="${pageVo.prevnowpage}"/>
	<c:set var="nextnowpage" value="${pageVo.nextnowpage}"/>
	
	<c:set var="menu_id" value="${pageVo.menu_id}"/>
	
<div style='width:100%'>	

	        	<c:if test="${showprev eq true }">
	        		<a href="/project/List?menu_id=${menu_id }&nowpage=1&pagecount=${pagecount }&pagegrpnum=${pagegrpnum }">
	        			[처음]
	        		</a>
	        	</c:if>
	        	
	        	
	        	<c:if test="${showprev eq true }">
	        		<a href="/project/List?menu_id=${menu_id }&nowpage=${prevnownum }&pagecount=${pagecount }&pagegrpnum=${pagegrpnum }">
	        			[이전 10개]
	        		</a>
	        	</c:if>
	        	
	        	<c:forEach var="pagenum" begin="${startnum }" end="${endnum }" step="1">
	        		<a href="/project/List?menu_id=${menu_id }&nowpage=${pagenum }&pagecount=${pagecount }&pagegrpnum=${pagegrpnum }">
	        			${pagenum }	
	        		</a>&nbsp;&nbsp;
	        	</c:forEach>
	        	
	        	<c:if test="${shownext eq true }">
	        		<a href="/project/List?menu_id=${menu_id }&nowpage=${nextnowpage }&pagecount=${pagecount }&pagegrpnum=${pagegrpnum }">
	        			[다음 10개]
	        		</a>
	        	</c:if>
	        	<c:if test="${shownext eq true }">
	        		<a href="/project/List?menu_id=${menu_id }&nowpage=${endnum }&pagecount=${pagecount }&pagegrpnum=${pagegrpnum }">
	        			[마지막]
	        		</a>
	        	</c:if>

</div>
	