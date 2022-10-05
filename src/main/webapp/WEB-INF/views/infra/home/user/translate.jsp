<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>


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
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
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
.container-login100 {
  width: 100%;  
  min-height: 300px;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
  padding: 15px;
  background: #f2f2f2;  
}
.wrap-login100 {
  max-width: 400px;
  min-height: 300px;
  background: #fff;
  border-radius: 10px;
  overflow: hidden;
  padding: 77px 55px 33px 55px;

  box-shadow: 0 5px 10px 0px rgba(0, 0, 0, 0.1);
  -moz-box-shadow: 0 5px 10px 0px rgba(0, 0, 0, 0.1);
  -webkit-box-shadow: 0 5px 10px 0px rgba(0, 0, 0, 0.1);
  -o-box-shadow: 0 5px 10px 0px rgba(0, 0, 0, 0.1);
  -ms-box-shadow: 0 5px 10px 0px rgba(0, 0, 0, 0.1);
}
.circle{
width:100px;
height:100px;
border-radius:50%;

-webkit-border-radius:50%;
-moz-border-radius:50%;
background:#666666;

font-size:16px;

text-align:center;


color:white;
font-size:20px;
font-weight: 900;

border:6px solid #fff;
box-shadow: 0 0 16px rgb(221,221,221);

-webkit-box-shadow: 0 0 16px rgb(221,221,221);
-moz-box-shadow: 0 0 16px rgb(221,221,221);
}

</style>
</head>
<body>
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header" >
			<h3 style="color: white;font-size: 20px; margin-top:15px; margin-left:20px; height: 52px; cursor:pointer;" onClick="location.href='home'"><i class="fa-solid fa-book-open"></i>&nbsp;E-WORD</h3>
			<nav id="nav">
				<ul>
					<li><a href="home" class="button" style="cursor:pointer; background-color: #444444;">Home</a></li>
					<c:choose>
						<c:when test="${sessSeq eq null}">
							<!--로그인 전 화면  -->
						    <li><a href="#" class="button" onClick="location.href='../login/signUp'" style="cursor:pointer; background-color: #444444;">Sign Up</a></li>
						    <li><a href="#" class="button" onClick="location.href='../login/login'" style="cursor:pointer;">Login</a></li>
						</c:when>
						<c:when test="${sessSeq eq 144}">
							<!--관리자 로그인 후 화면  -->
							<li><a href="mypage" class="button" style="cursor:pointer; background-color: #444444;">Mypage</a></li>
						    <li><a href="/member/memberList" class="button" style="cursor:pointer; background-color: #444444;">Admin</a></li>
						    <li><a href="#" class="button" id="btnLogout" style="cursor:pointer;">Logout</a></li>
						</c:when>
						<c:otherwise>
							<!--로그인 후 화면  -->
							<li><a href="test" class="button" style="cursor:pointer; background-color: #444444;">Test</a></li>
							<li><a href="rank" class="button" style="cursor:pointer; background-color: #444444;">Rank</a></li>
							<li><a href="translate" class="button" style="cursor:pointer; background-color: #444444;">Translate</a></li>
						    <li><a href="mypage" class="button" style="cursor:pointer; background-color: #444444;">Mypage</a></li>
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

		<!-- Main -->
		<section id="main" class="container">
			<header>
				<h2>Translate</h2>
				<p>We dream of a world where we can communicate without language
					barriers.</p>
			</header>
			<div class="row">
				<div class="col-12">

					<!-- Text -->
					<section class="box" style="max-height: 800px;" style="margin: auto;">
						
						<div class="row" style="margin: auto;">
							<div class="container-login100">
								<div class="col-5" >
									<div class="wrap-login100" style="padding:30px;">
										<textarea id="sendtext" class="form-control" name="send_text" style="width:100%; min-height:300px; " placeholder="번역할 내용을 입력해주세요."></textarea>
									</div>
								</div>
								<div class="col-2" style="text-align: center;">
									<button type="button" class="circle" id="jsonConvertStringSend" >번역</button>
								</div>
								<div class="col-5" >
									<div class="wrap-login100" style="padding:30px;">
										<textarea id="result_text" class="form-control" name="result_text" style="width:100%; min-height:300px; " placeholder="Please enter the text to be translated" readonly></textarea>
									</div>
								</div>
							</div>
							
						</div>
						<!-- 
						<div class="row">
							<textarea id="sendtext" class="form-control" name="send_text" cols="40" rows="4" placeholder="보낼값"></textarea>
							<button id="jsonConvertStringSend" type="button"> 번역하기 </button>
							<textarea id="result_text" class="form-control" name="result_text" cols="40" rows="4" placeholder="결과값" readonly></textarea>
						</div>
						 -->
						 
					</section>
				</div>
			</div>


			<!-- Footer -->
			<footer id="footer">
				<ul class="icons">
					<li><a href="#" class="icon brands fa-twitter"><span
							class="label">Twitter</span></a></li>
					<li><a href="#" class="icon brands fa-facebook-f"><span
							class="label">Facebook</span></a></li>
					<li><a href="#" class="icon brands fa-instagram"><span
							class="label">Instagram</span></a></li>
					<li><a href="#" class="icon brands fa-github"><span
							class="label">Github</span></a></li>
					<li><a href="#" class="icon brands fa-dribbble"><span
							class="label">Dribbble</span></a></li>
					<li><a href="#" class="icon brands fa-google-plus"><span
							class="label">Google+</span></a></li>
				</ul>
				<ul class="copyright">
					<li>&copy; Untitled. All rights reserved.</li>
					<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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
	
	<script src="https://kit.fontawesome.com/20c294a34b.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
	
	<script src="../resources/assets/js/main2.js"></script>
	<div id="navButton"><a href="#navPanel" class="toggle"></a></div>
	<div id="navPanel">
		<nav>
			<c:choose>
				<c:when test="${sessSeq eq null}">
					<!--로그인 전 화면  -->
				    <a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer" onClick="location.href='home'" >Home</a>
				    <a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer" onClick="location.href='/login/signUp'" >Sign Up</a>
				    <a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer" onClick="location.href='/login/login'" >Login</a>
				    
				</c:when>
				<c:when test="${sessSeq eq 144}">
					<!--관리자 로그인 후 화면  -->
				    <a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer" onClick="location.href='home'" >Home</a>
				    <a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer" onClick="location.href='mypage'" >Mypage</a>
				    <a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer" onClick="location.href='/member/memberList'" >Admin</a>
				</c:when>
				<c:otherwise>
					<!--로그인 후 화면  -->
				    <a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer" onClick="location.href='home'" >Home</a>
				    <a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer" onClick="location.href='test'" >Test</a>
				    <a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer" onClick="location.href='rank'" >Rank</a>
				    <a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer" onClick="location.href='translate'" >Translate</a>
				    <a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer" onClick="location.href='mypage'" >Mypage</a>
				 </c:otherwise>
			</c:choose>
			
		</nav>
	</div>
	<script type="text/javascript">
		$("#btnLogout").on(
			"click",
			function() {
				$.ajax({
					async : true,
					cache : false,
					type : "post",
					url : "/login/logoutProc",
					data : {},
					success : function(response) {
						if (response.rt == "success") {
							location.href = "/home/home";
						} else {
							// by pass
						}
					},
					error : function(jqXHR, textStatus, errorThrown) {
						alert("ajaxUpdate " + jqXHR.textStatus + " : "
								+ jqXHR.errorThrown);
					}
				});
			});
	</script>
	<script type="text/javascript">
	
	$("#jsonConvertStringSend").on(
		"click",
		function() {
			var str = document.getElementById("sendtext").value;
			
			$.ajax({
				async : true,
				cache : false,
				type : "post",
				url : "/home/trans",
				data : {"str" : str},
				success : function(response) {
					let tmp = JSON.parse(response);
					console.log(tmp.message.result.translatedText);
					
					document.getElementById("result_text").value = tmp.message.result.translatedText;
				},
				error : function(jqXHR, textStatus, errorThrown) {
					alert("ajaxUpdate " + jqXHR.textStatus + " : "
							+ jqXHR.errorThrown);
				}
			});
		});
	</script>
</body>
</html>