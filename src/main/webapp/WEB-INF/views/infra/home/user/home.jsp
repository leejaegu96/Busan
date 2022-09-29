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
		<title>E-Word</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		
		<link rel="stylesheet" href="../resources/assets/css/main.css" />
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	</head>
	<body class="landing is-preload">
		<div id="page-wrapper">



			<!-- Header -->
				<header id="header" class="alt">
					<h3 style="font-size: 20px; margin-top:15px; margin-left:20px; height: 52px; cursor:pointer;" onClick="location.href='home'"><i class="fa-solid fa-book-open"></i>&nbsp;E-WORD</h3>
					<nav id="nav">
						<ul>
							<li><a href="home">Home</a></li>
							<li>
								<a href="#" class="icon solid fa-angle-down">Contents</a>
								<ul>
									<li><a href="test">Exam</a></li>
									<li><a href="rank">Ranking</a></li>
									<li><a href="">Mypage</a></li>
									<li><a href="translate">Translate</a></li>
									<li>
										<a href="#">Word</a>
										<ul>
											<li><a href="#">Today's Word</a></li>
											<li><a href="#">Favorite Word</a></li>
										</ul>
									</li>
								</ul>
							</li>
							<c:choose>
								<c:when test="${sessSeq eq null}">
									<!--로그인 전 화면  -->
								    <li><a href="#" class="button" onClick="location.href='../login/signUp'" style="cursor:pointer;">회원가입</a></li>
								    <li><a href="#" class="button" onClick="location.href='../login/login'" style="cursor:pointer;">Login</a></li>
								</c:when>
								<c:otherwise>
									<!--로그인 후 화면  -->
								    <li><a href="#">Mypage</a></li>
								    <li><a href="#">계정설정</a></li>
								    <li><a href="#" class="button" id="btnLogout" style="cursor:pointer;">Logout</a></li>
								 </c:otherwise>
							</c:choose>
							
							<!-- 
							<li><a href="#" class="button" onClick="location.href='../login/login'" style="cursor:pointer;">Login</a></li>
							<li><a href="#" class="button" id="btnLogout" style="cursor:pointer;">Logout</a></li>
							 -->
						</ul>
					</nav>
				</header>
				
			<!-- Banner -->
				<section id="banner">
					<div style="float:left">
						sessSeq: <c:out value="${sessSeq }"/><br>
						sessName: <c:out value="${sessName }"/><br>
						sessId: <c:out value="${sessId }"/><br>
					</div>
					<div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
					  <div class="carousel-inner">
					  	<h3>Today's Word</h3><br>
					  	
					  	<div class="carousel-item active" data-bs-interval="1000000">
					      <div style="max-width:450px; width:100%; height:500px; height:100%; text-align:left; margin:auto; text-align:center; background-color: #666666;">
						    <img alt="" src="../resources/assets/images/samples/study.jpg" style="height:150px; width:300px;">
						  </div>
					    </div>
					  	
					  	<c:forEach items="${list}" var="list" varStatus="status">
					  	
					    <div class="carousel-item" data-bs-interval="10000">
					      <div style="max-width:450px; width:100%; height:500px; height:100%; text-align:left; margin:auto; background-color: #666666;">
						    
						    <h4>
						    	<input type="hidden" id="sdwSeq" name="sdwSeq">
					    		<c:out value="${list.sdwWord }"/> &nbsp; <i class="fa-solid fa-volume-high"></i>
						    </h4><br>
						    
						    <c:forEach items="${item}" var="item" varStatus="status">
						    <span style="line-height:200%;">
						    	<c:if test="${list.sdwWord == item.sdwWord }">
						    	<span style="color:Blue; font-style: italic;" value="${list.sdwSeq }">${item.sdwmPartOfSpeech}</span> &nbsp; <span style="color:white;"value="${list.sdwSeq }">${item.sdwmContents}</span> <br>
						    	<span value="${list.sdwSeq }">${item.sdweContents}</span> <br> <span value="${list.sdwSeq }">${item.sdweTranslate}</span><br>
						    	</c:if>
						    </span>
						    </c:forEach>
						  </div>
					    </div>
					    
					    </c:forEach>
					    
					  </div>
					  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev" >
					    <span class="carousel-control-prev-icon" aria-hidden="true" style="float:top;"></span>
					    <span class="visually-hidden">Previous</span>
					  </button>
					  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
					    <span class="carousel-control-next-icon" aria-hidden="true"></span>
					    <span class="visually-hidden">Next</span>
					  </button>
					</div>
					<!-- 
					<h3 style="letter-spacing:7px;">Look up a word, Learn it forever!</h3>
					<div class="search" style="color:black; padding-top:10px; padding-bottom:10px;">
						<i class="fas fa-search"></i>
						<input type="text" style="text-indent: 20px;">
						<i class="fas fa-keyboard"></i>
						<i class="fas fa-microphone"></i>
					</div>
					<ul class="actions special">
						<li><a href="#" class="button primary" onClick="location.href='../Login/LoginForm.html'" style="cursor:pointer;">Sign Up</a></li>
						<li><a href="#" class="button">Learn More</a></li>
					</ul>
					 -->
				</section>

			<!-- Main -->
				<section id="main" class="container">
					<%-- 
					<section class="box special">
						<header class="major">
						
						<div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
						  <div class="carousel-inner">
						  	<h3>Today's Word</h3><br>
						  	
						  	<div class="carousel-item active" data-bs-interval="10000">
						      <div style="max-width:450px; width:100%; height:500px; height:100%; text-align:left; margin:auto; text-align:center; background-color: white;">
						      	<span style="line-height:200%;">
							    	Today's Word
							    </span>
							  </div>
						    </div>
						  	
						  	<c:forEach items="${list}" var="list" varStatus="status">
						    <div class="carousel-item" data-bs-interval="10000">
						      <div style="max-width:450px; width:100%; height:500px; height:100%; text-align:left; margin:auto; background-color: white;">
							    <h4> <c:out value="${list.sdwWord }"/> &nbsp; <i class="fa-solid fa-volume-high"></i></h4><br>
							    <span style="line-height:200%;">
							    	<span style="color:Blue; font-style: italic;"><c:out value="${list.sdwmPartOfSpeech}"/></span> &nbsp; <b><c:out value="${list.sdwmContents}"/></b> <br>
							    	<br><c:out value="${list.sdweContents}"/> <br> <c:out value="${list.sdweTranslate}"/>
							    </span>
							  </div>
						    </div>
						    </c:forEach>
						    
						  </div>
						  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev" >
						    <span class="carousel-control-prev-icon" aria-hidden="true" style="float:top;"></span>
						    <span class="visually-hidden">Previous</span>
						  </button>
						  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="visually-hidden">Next</span>
						  </button>
						</div>
						
							<!-- 
							<h2>Introducing the ultimate mobile app
							<br />
							for doing stuff with your phone</h2>
							<p>Blandit varius ut praesent nascetur eu penatibus nisi risus faucibus nunc ornare<br />
							adipiscing nunc adipiscing. Condimentum turpis massa.</p>
							 -->
						</header>
						<!-- 
						<span class="image featured"><img src="../resources/assets/images/background/pic01.jpg" alt="" /></span>
						 -->
					</section>
					 --%>
					<section class="box special features">
						<div class="features-row">
							<section>
								<span class="icon solid major fa-file-pen accent2" onClick="location.href='test'" style="cursor:pointer;"></span>
								<h3>TEST</h3>
								<p>Test your skills based on what you've learned</p>
							</section>
							<section>
								<span class="icon solid major fa-ranking-star accent3" onClick="location.href='rank'" style="cursor:pointer;"></span>
								<h3>RANKING</h3>
								<p>Check the test scores you have taken so far</p>
							</section>
						</div>
						<div class="features-row">
							<section>
								<span class="icon solid major fa-book-atlas accent4" onClick="location.href='translate'"></span>
								<h3>TRANSLATE</h3>
								<p>We dream of a world where we can communicate without language barriers.</p>
							</section>
							<section>
								<span class="icon solid major fa-bookmark accent5"></span>
								<h3>WORD</h3>
								<p>Look up a word, Learn it forever!</p>
							</section>
						</div>
					</section>
				</section>

			<!-- Footer -->
				<footer id="footer">
					<ul class="icons">
						<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
						<li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
						<li><a href="#" class="icon brands fa-google-plus"><span class="label">Google+</span></a></li>
					</ul>
					<ul class="copyright">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>
				</footer>

		</div>

		<!-- Scripts -->
			<script src="../resources/assets/js/jquery.min.js"></script>
			<script src="../resources/assets/js/jquery.dropotron.min.js"></script>
			<script src="../resources/assets/js/jquery.scrollex.min.js"></script>
			<script src="../resources/assets/js/browser.min.js"></script>
			<script src="../resources/assets/js/breakpoints.min.js"></script>
			<script src="../resources/assets/js/util.js"></script>
			<script src="../resources/assets/js/main2.js"></script>
			<script src="https://kit.fontawesome.com/20c294a34b.js" crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
			<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
			<script type="text/javascript">
			$("#btnLogout").on("click", function(){
				$.ajax({
					async: true 
					,cache: false
					,type: "post"
					,url: "/login/logoutProc"
					,data: {}
					,success: function(response) {
						if(response.rt == "success") {
							location.href = "/home/home";
						} else {
							// by pass
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				});
			});
			</script>

	</body>
</html>