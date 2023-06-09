<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@	taglib	prefix="c"	uri="http://java.sun.com/jsp/jstl/core"	%>				
<%@	taglib	prefix="fmt"	uri="http://java.sun.com/jsp/jstl/fmt"	%>			
<%@	taglib	prefix="fn"	uri="http://java.sun.com/jsp/jstl/functions"	%>		
<%@	taglib	prefix="sql"	uri="http://java.sun.com/jsp/jstl/sql"	%>				
    <!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>Document</title>
		<link rel="stylesheet" href="/style/style.css">
		<style>
		
		</style>
	</head>
	<body>
		<div id="wrap">
			<h1>subDir/sampleView.jsp</h1>
			<hr>
			<h2>${name}</h2>
			
			<ol>
				<li>numData : ${numData}</li>
				<li>ObjectTest : ${ObjectTest}</li>
				<li>name : ${name}</li>
				<li>${lists}</li>
			</ol>
			
			<c:forEach var="i" items="${lists}">
				<h2>${i}</h2>
			</c:forEach>
			
		</div>	
		<!-- div#wrap -->
		<script src="/script/jquery-3.6.4.min.js"></script>
        <script src="/script/script.js"></script>	
	</body>
</html>
   
 