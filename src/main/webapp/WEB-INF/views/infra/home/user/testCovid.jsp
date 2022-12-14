<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!DOCTYPE HTML>
<!--
	Alpha by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Elements - Alpha by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
		<link rel="stylesheet" href="../resources/assets/css/main.css" />
		<style type="text/css">


  

		
		</style>
	</head>
	<body class="is-preload">
		<h2>asdf</h2>
		<%-- 
		<br>aaa : <c:out value="${resultCode }"/>
		<br>aaa : <c:out value="${resultMsg }"/>
		<br>aaa : <c:out value="${pageNo }"/>
		<br>aaa : <c:out value="${totalCount }"/>
		<br>aaa : <c:out value="${numOfRows }"/>
		<br>aaa : <c:out value="${items }"/>
		<br>aaa : <c:out value="${fn:length(items) }"/>
		--%>
		<c:forEach items="${items}" var="item" varStatus="status">
			<span>ctime: <c:out value="${item.ctime }"/></span><br>
			<span>cid: <c:out value="${item.cid }"/></span><br>
			<span>subject: <c:out value="${item.subject }"/></span><br>
			<span>location: <c:out value="${item.location }"/></span><br>
			<span>charge: <c:out value="${item.charge }"/></span><br>
			<span>target: <c:out value="${item.target }"/></span><br>
			<span>cover: <c:out value="${item.cover }"/></span><br>
			<span>programName: <c:out value="${item.programName }"/></span><br>
			<span>intro: <c:out value="${item.intro }"/></span>
			<br><br><br>
		</c:forEach> 
		<!-- Scripts -->
			<script src="../resources/assets/js/jquery.min.js"></script>
			<script src="../resources/assets/js/jquery.dropotron.min.js"></script>
			<script src="../resources/assets/js/jquery.scrollex.min.js"></script>
			<script src="../resources/assets/js/browser.min.js"></script>
			<script src="../resources/assets/js/breakpoints.min.js"></script>
			<script src="../resources/assets/js/util.js"></script>
			
			<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
			
			<script src="https://kit.fontawesome.com/20c294a34b.js" crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
			
			<script src="../resources/assets/js/main2.js"></script>
			<div id="navButton"><a href="#navPanel" class="toggle"></a></div>
			<div id="navPanel">
				<nav>
					<c:choose>
						<c:when test="${sessSeq eq null}">
							<!--????????? ??? ??????  -->
						    <a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer" onClick="location.href='home'" >Home</a>
						    <a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer" onClick="location.href='/login/signUp'" >Sign Up</a>
						    <a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer" onClick="location.href='/login/login'" >Login</a>
						    
						</c:when>
						<c:when test="${sessSeq eq 144}">
							<!--????????? ????????? ??? ??????  -->
						    <a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer" onClick="location.href='home'" >Home</a>
						    <a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer" onClick="location.href='mypage'" >Mypage</a>
						    <a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer" onClick="location.href='/member/memberList'" >Admin</a>
						</c:when>
						<c:otherwise>
							<!--????????? ??? ??????  -->
						    <a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer" onClick="location.href='home'" >Home</a>
						    <a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer" onClick="location.href='test'" >Test</a>
						    <a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer" onClick="location.href='rank'" >Rank</a>
						    <a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer" onClick="location.href='translate'" >Translate</a>
						    <a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer" onClick="location.href='mypage'" >Mypage</a>
						 </c:otherwise>
					</c:choose>
					
				</nav>
			</div>
			

	</body>
</html>