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

body {
   font-size: 18px;
}

.grid {
   padding: 10px 50px 30px;
   margin: 50px auto;
   width: 600px;
   background: #fff;
   border: 2px solid #eed0dc;
   border-radius: 20px;
   box-shadow: 5px 5px 5px #cbcbcb;
}

.grid h1 {
   color: #333;
   font-size: 2.4em;
   text-align: center;
   ;
}

#question {
   padding: 10px 2em;
   background: salmon;
   border-radius: 15px;
   font-size: 24px;
   color: #fff;
}

#quiz {
   text-align: center;
}

#progress {
   font-size: 20px;
   color: #2b2b2b;
}

.buttons {
   padding: 30px 20px;
   border: 2px solid #eed0dc;
   border-radius: 20px;
}

.btn {
   margin: 10px 40px 20px 0;
   padding: 10px;
   width: 200px;
   font-size: 16px;
   color: #333;
   background: #eed0dc;
   border: 1px solid #ffe3ed;
   border-radius: 15px;
   cursor: pointer;
   transition: all .2s;
}

.btn:nth-child(2n) {
   margin-right: 0;
}

.btn:hover {
   background: #c34c74;
   color: #fff;
}

  

		
		</style>
	</head>
	<body class="is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header">
					<h3 style="color:white; font-size: 20px; margin-top:15px; margin-left:20px; height: 52px; cursor:pointer;" onClick="location.href='home'"><i class="fa-solid fa-book-open"></i>&nbsp;E-WORD</h3>
					<nav id="nav">
						<ul>
							<li><a href="home">Home</a></li>
							<li>
								<a href="#" class="icon solid fa-angle-down">Contents</a>
								<ul>
									<li><a href="test">Exam</a></li>
									<li><a href="rank">Ranking</a></li>
									<li><a href="">Mypage</a></li>
									<li><a href="">Translate</a></li>
									<li>
										<a href="#">Word</a>
										<ul>
											<li><>Today's Word</a></li>
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
							
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<section id="main" class="container">
					<header>
						<h2>Translate</h2>
						<p>We dream of a world where we can communicate without language barriers.</p>
					</header>
					<div class="row">
						<div class="col-12">
							
							<!-- Text -->
							<section class="box" style="max-height:800px;">
								<div class="row">
									<textarea id="korean" class="form-control" name="korean" cols="40" rows="4" placeholder="보낼값"></textarea>
									<button id="jsonConvertStringSend" type="button"> 번역하기 </button>
									<textarea id="usa" class="form-control"  cols="40" rows="4" placeholder="결과값" readonly></textarea>
								</div>
								<input type="button" id="english" value="영어">
							</section>
						</div>
					</div>
					

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
			<script src="../resources/assets/js/main.js"></script>
			<script src="https://kit.fontawesome.com/20c294a34b.js" crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
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
			<script type="text/javascript">
			
			function translateText(userLang) {
				var sourceText = "이것이 한석봉이다.";
			    $.ajax({
			        type:"POST",
			        data:'&target='+userLang+'&format=html&q=' + sourceText,
			        url:'https://www.googleapis.com/language/translate/v2?key=AIzaSyAo8Uvy71vOiz5yqYLQwz_O9Ux6rIuhlEk';,

			        success:function(response){
			            alert( response.data.translations[0].translatedText );
			        }
			    });
			}
			
			</script>
	</body>
</html>