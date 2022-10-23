<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

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
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="../resources/assets/css/main.css" />
<style type="text/css">
</style>
</head>
<body>
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header">
			<h3 style="color: white; font-size: 20px; margin-top: 15px; margin-left: 20px; height: 52px; cursor: pointer;" onClick="location.href='home'">
				<i class="fa-solid fa-book-open"></i>&nbsp;E-WORD
			</h3>
			<nav id="nav">
				<ul>
					<li><c:choose>
							<c:when test="${sessSeq eq null}">
							</c:when>
							<c:when test="${sessSeq eq 144}">
								<span style="color: #959ADA; font-weight: bolder;"><c:out value="${sessName }" /></span> 관리자님
							</c:when>
							<c:otherwise>
								<span style="color: #959ADA; font-weight: bolder;"><c:out value="${sessName }" /></span>님
							</c:otherwise>
						</c:choose></li>
					<li><a href="home" class="button" style="cursor: pointer; background-color: #444444;">Home</a></li>
					<c:choose>
						<c:when test="${sessSeq eq null}">
							<!--로그인 전 화면  -->
							<li><a href="#" class="button" onClick="location.href='../login/signUp'" style="cursor: pointer; background-color: #444444;">Sign Up</a></li>
							<li><a href="#" class="button" onClick="location.href='../login/login'" style="cursor: pointer;">Login</a></li>
						</c:when>
						<c:when test="${sessSeq eq 144}">
							<!--관리자 로그인 후 화면  -->
							<li><a href="mypage" class="button" style="cursor: pointer; background-color: #444444;">Mypage</a></li>
							<li><a href="/member/memberList" class="button" style="cursor: pointer; background-color: #444444;">Admin</a></li>
							<li><a href="#" class="button" id="btnLogout" style="cursor: pointer;">Logout</a></li>
						</c:when>
						<c:otherwise>
							<!--로그인 후 화면  -->
							<li><a href="test" class="button" style="cursor: pointer; background-color: #444444;">Test</a></li>
							<li><a href="rank" class="button" style="cursor: pointer; background-color: #444444;">Rank</a></li>
							<li><a href="translate" class="button" style="cursor: pointer; background-color: #444444;">Translate</a></li>
							<li><a href="mypage" class="button" style="cursor: pointer; background-color: #444444;">Mypage</a></li>
							<li><a href="#" class="button" id="btnLogout" style="cursor: pointer;">Logout</a></li>
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
				<h2>Word</h2>
				<p>Look up a word, Learn it forever!</p>
			</header>
			<section class="box" style="height:400px;">
				<center>
					<div class="main">
	
						<div class="input-group mb-3">
							<input type="text" class="form-control" id="input">
							<input type="button" name="Search" value="Search" onclick="Search()" class="btn btn-outline-secondary btn-primary" type="button">
							<input type="button" name="Reset" value="Reset" class="btn btn-outline-secondary" type="button" onclick="history.go(0)">
						</div>
	
						<h1 class="badge rounded-pill bg-primary" id="word" align="left">Searching....</h1>
						<h4 style="color: #0d6efd !important; font-weight: bold;" align="left">Definition:</h4>
						<h6 align="left" id="definition1"></h6>
						<h6 align="left" id="definition2"></h6>
						&nbsp;<br> &nbsp;<br> &nbsp;<br>
						<h4 style="color: #0d6efd !important; font-weight: bold;" align="left">Example:</h4>
						<h6 align="left" id="example1"></h6>
						<h6 align="left" id="example2"></h6>
						&nbsp;<br> &nbsp;<br>
	
					</div>
				</center>
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
	<div id="navButton">
		<a href="#navPanel" class="toggle"></a>
	</div>
	<div id="navPanel">
		<nav>
			<c:choose>
				<c:when test="${sessSeq eq null}">
					<!--로그인 전 화면  -->
					<a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer" onClick="location.href='home'">Home</a>
					<a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer" onClick="location.href='/login/signUp'">Sign Up</a>
					<a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer" onClick="location.href='/login/login'">Login</a>

				</c:when>
				<c:when test="${sessSeq eq 144}">
					<!--관리자 로그인 후 화면  -->
					<a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer" onClick="location.href='home'">Home</a>
					<a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer" onClick="location.href='mypage'">Mypage</a>
					<a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer" onClick="location.href='/member/memberList'">Admin</a>
				</c:when>
				<c:otherwise>
					<!--로그인 후 화면  -->
					<a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer" onClick="location.href='home'">Home</a>
					<a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer" onClick="location.href='test'">Test</a>
					<a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer" onClick="location.href='rank'">Rank</a>
					<a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer" onClick="location.href='translate'">Translate</a>
					<a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer" onClick="location.href='mypage'">Mypage</a>
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
		function Search() {
			var word = document.getElementById("input").value;
			let api = `https://api.dictionaryapi.dev/api/v2/entries/en/`+ word;

			fetch(api)
			.then(function(response) {
				let data = response.json();
				return data;
			})
			.then(
				function(data) {
				console.log(data);
				//Input
				document.getElementById('word').innerHTML = word;
				///If no Definition
				message = data.message;
				if (message) {
					alert(message)
				}
				
				//Output
				definition1 = ' [' + data[0].meanings[0].partOfSpeech + '] ' + data[0].meanings[0].definitions[0].definition;
				example1 = ' ' + data[0].meanings[0].definitions[0].example;
				document.getElementById('definition1').innerHTML = "1:"
						+ definition1;
				document.getElementById('example1').innerHTML = "1:"
						+ example1;

				definition2 = ' [' + data[0].meanings[1].partOfSpeech + '] ' + data[0].meanings[1].definitions[0].definition;
				example2 = ' '+ data[0].meanings[1].definitions[0].example;
				if (definition2 != null) {
					document.getElementById('definition2').innerHTML = "2:"
							+ definition2;
					document.getElementById('example2').innerHTML = "2:"
							+ example2;
				}
			})
		}
	</script>
</body>
</html>