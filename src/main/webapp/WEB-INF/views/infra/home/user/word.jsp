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
<link rel="stylesheet" href="../resources/assets/css/test.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style type="text/css">
#colPadding {
	padding-bottom: 10px;
}

.ui-datepicker {
	font-size: 15px;
	width: 400px;
}

.ui-datepicker select.ui-datepicker-month {
	width: 30%;
	font-size: 15px;
}

.ui-datepicker select.ui-datepicker-year {
	width: 40%;
	font-size: 15px;
}
</style>
<script type="text/javascript">
	$(document).ready(
			function() {
				$.datepicker.setDefaults($.datepicker.regional['ko']);
				$("#datepicker")
						.datepicker(
								{
									changeMonth : true,
									changeYear : true,
									nextText : '다음 달',
									prevText : '이전 달',
									dayNames : [ '일요일', '월요일', '화요일', '수요일',
											'목요일', '금요일', '토요일' ],
									dayNamesMin : [ '일', '월', '화', '수', '목',
											'금', '토' ],
									monthNamesShort : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									monthNames : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									dateFormat : "yy-mm-dd",
									maxDate : 0,
									minDate : new Date('2022-07-25'),
									maxDate : new Date('2022-07-27'),
									// 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
									onClose : function(selectedDate) {
									}

								});
			});
</script>
</head>
<body>
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header">
			<h3 style="color: white; font-size: 20px; margin-top: 10px; margin-left: 20px; height: 52px; cursor: pointer;" onClick="location.href='home'">
				<i class="fa-solid fa-book-open"></i>&nbsp;E-WORD
			</h3>
			<nav id="nav">
				<ul>
					<li><c:choose>
							<c:when test="${sessSeq eq null}">
							</c:when>
							<c:when test="${sessSeq eq 144}">
								<span style="color: #959ADA; font-weight: bolder;">
									<c:out value="${sessName }" />
								</span> 관리자님
							</c:when>
							<c:otherwise>
								<span style="color: #959ADA; font-weight: bolder;">
									<c:out value="${sessName }" />
								</span>님
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
				<input type="text" class="form-control" id="datepicker" name="sddDateChoice" placeholder="Choice Date!!" style="text-align: center; color: black; height: 50px;">
			</header>
			<section class="box" style="height: 100%;">
				<%-- 
				<div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
					<div class="carousel-inner">
						<h3>Today's Word</h3>
						<br>
						
						<div class="carousel-item active" data-bs-interval="1000000">
							<div style="max-width: 450px; width: 100%; height: 500px; height: 100%; text-align: left; margin: auto; text-align: center; background-color: #666666;">
								<img alt="" src="../resources/assets/images/samples/study.jpg" style="height: 200px; width: 400px; padding: 10px;">

								<input type="text" class="form-control" id="datepicker" placeholder="Choice Date!!" style="text-align: center; color: black;">
							</div>
						</div>

						<c:forEach items="${list}" var="list" varStatus="status">

							<div class="carousel-item" data-bs-interval="10000">
								<div style="max-width: 450px; width: 100%; height: 500px; height: 100%; text-align: left; margin: auto; background-color: #666666;">

									<h4>
										<input type="hidden" id="sdwSeq" name="sdwSeq">
										<input id="text${list.sdwSeq}" value="${list.sdwWord }" style="background: none; font-weight: bold; text-align: center; color: white; height: 50px;" readonly>
										&nbsp; <i class="fa-solid fa-volume-high" id="btn-read${list.sdwSeq}" style="cursor: pointer;"></i>
									</h4>
									<br>

									<c:forEach items="${item}" var="item" varStatus="status">
										<span style="line-height: 200%;"> 
											<c:if test="${list.sdwWord == item.sdwWord }">
												<span style="color: Blue; font-style: italic;" value="${list.sdwSeq }">${item.sdwmPartOfSpeech}</span> &nbsp; <span style="color: white;" value="${list.sdwSeq }">${item.sdwmContents}</span>
												<br>
												<span value="${list.sdwSeq }">${item.sdweContents}</span>
												<br>
												<span value="${list.sdwSeq }">${item.sdweTranslate}</span>
												<br>
											</c:if>
										</span>
									</c:forEach>
								</div>
							</div>

						</c:forEach>
						
					</div>
					<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true" style="float: top;"></span> <span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="visually-hidden">Next</span>
					</button>
				</div>
				 --%>

				<div class="row">
					<div id="wordChoice"></div>
					<div id="wordDate"></div>
					<%-- 
					<c:forEach items="${list}" var="list" varStatus="status">
					
						<div class="col-6" style="margin: auto;" id="colPadding">
							<div class="quiz">
								<span class="quiz__type">${list.sddDateChoice }</span>
								<h2 class="quiz__question">
									<span class="word">${list.sdwWord }</span>
									<hr style="margin: 10px 0;">
									<div>
										<c:forEach items="${item}" var="item" varStatus="status">
											<c:if test="${list.sdwWord == item.sdwWord }">
												<div class="ask">
													<span class="content" style="font-weight: bold;" value="${list.sdwSeq }">${item.sdwmNum}. &nbsp;${item.sdwmPartOfSpeech}</span>
													<span class="content" value="${list.sdwSeq }">&nbsp;${item.sdwmContents}</span>
													<br>
												</div>
											</c:if>
										</c:forEach>
										<hr style="margin: 10px 0;">
										<c:forEach items="${item}" var="item" varStatus="status">
											<c:if test="${list.sdwWord == item.sdwWord }">
												<div class="ask1">
													<span class="content" style="font-weight: bold;">${item.sdwmNum}.&nbsp;</span>
													<span class="content" value="${list.sdwSeq }">${item.sdweContents}</span>
													<br>
													<span class="content" value="${list.sdwSeq }">&nbsp;&nbsp;&nbsp;&nbsp;${item.sdweTranslate}</span>
													<br>
												</div>
											</c:if>
										</c:forEach>
									</div>
								</h2>
							</div>
						</div>
						
					</c:forEach>
					 --%>
				</div>

			</section>


			<!-- Footer -->
			<footer id="footer">
				<ul class="icons">
					<li><a href="#" class="icon brands fa-twitter">
							<span class="label">Twitter</span>
						</a></li>
					<li><a href="#" class="icon brands fa-facebook-f">
							<span class="label">Facebook</span>
						</a></li>
					<li><a href="#" class="icon brands fa-instagram">
							<span class="label">Instagram</span>
						</a></li>
					<li><a href="#" class="icon brands fa-github">
							<span class="label">Github</span>
						</a></li>
					<li><a href="#" class="icon brands fa-dribbble">
							<span class="label">Dribbble</span>
						</a></li>
					<li><a href="#" class="icon brands fa-google-plus">
							<span class="label">Google+</span>
						</a></li>
				</ul>
				<ul class="copyright">
					<li>&copy; Untitled. All rights reserved.</li>
					<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
				</ul>
			</footer>
	</div>

	<!-- Scripts -->
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
			let api = `https://api.dictionaryapi.dev/api/v2/entries/en/` + word;

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
								definition1 = ' ['
										+ data[0].meanings[0].partOfSpeech
										+ '] '
										+ data[0].meanings[0].definitions[0].definition;
								example1 = ' '
										+ data[0].meanings[0].definitions[0].example;
								document.getElementById('definition1').innerHTML = "1:"
										+ definition1;
								document.getElementById('example1').innerHTML = "1:"
										+ example1;

								definition2 = ' ['
										+ data[0].meanings[1].partOfSpeech
										+ '] '
										+ data[0].meanings[1].definitions[0].definition;
								example2 = ' '
										+ data[0].meanings[1].definitions[0].example;
								if (definition2 != null) {
									document.getElementById('definition2').innerHTML = "2:"
											+ definition2;
									document.getElementById('example2').innerHTML = "2:"
											+ example2;
								}
							})
		}
	</script>
	<script type="text/javascript">
		$("#datepicker")
				.on(
						"change",
						function() {
							$
									.ajax({
										async : true,
										cache : false,
										type : "post"
										/* ,dataType:"json" */
										,
										url : "/home/wordDate"
										/* ,data : $("#formLogin").serialize() */
										,
										data : {
											"sddDateChoice" : $("#datepicker")
													.val()
										},
										success : function(response) {
											if (response.rt == "success") {
												console.log(response);

												let listHTML = "";

												document.getElementById('wordDate').innerHTML += listHTML;

												document.getElementById('wordChoice').innerHTML = "";
												for (let i = 0; i < response.tt.length; i++) {
													console.log(response.tt[i]);
													let listHTML = "";

													listHTML += '<div class="col-6" style="margin: auto;" id="colPadding">';
													listHTML += '<div class="quiz">';
													listHTML += '<span class="quiz__type">'+ response.tt[i].sddDateChoice + '</span>';
													listHTML += '<h2 class="quiz__question">';
													listHTML += '<span class="word">'+ response.tt[i].sdwWord + '</span>';
													listHTML += '<hr style="margin: 10px 0;">';
													listHTML += '<div>';
													alert("1"+response.tt[0].sdwWord);
													alert("2"+response.tt[1].sdwWord);
													for(let i=0; i<response.tt.length; i++){
														if(response.tt[i].sdwWord == response.tt[i++].sdwWord){
															listHTML += '<div class="ask">';
															listHTML += '<span class="content" style="font-weight: bold;" value="' + response.tt[i].sdwSeq + '">' + response.tt[i].sdwmNum + '. ' + '</span>';
															listHTML += '<span class="content" style="font-weight: bold;" value="' + response.tt[i].sdwSeq + '">' +  response.tt[i].sdwmPartOfSpeech + '</span>';
															listHTML += '<span class="content" value="' + response.tt[i].sdwSeq + '">' + response.tt[i].sdwmContents + '</span>';
															listHTML += '<br>';
															listHTML += '</div>';
														} else {
															listHTML += '<br>';
														}
													}
													listHTML += '<hr style="margin: 10px 0;">';
													for(let i=0; i<response.tt.length; i++){
														if(response.tt[i].sdwWord == response.tt[i++].sdwWord){
															listHTML += '<div class="ask1">'; 
															listHTML += '<span class="content" value="' + response.tt[i].sdwSeq + '">' + response.tt[i].sdwmNum  + '. ' + '</span>';
															listHTML += '<span class="content" value="' + response.tt[i].sdwSeq + '">' + response.tt[i].sdweContents + '</span>';
															listHTML += '<br>';
															listHTML += '<span class="content" value="' + response.tt[i].sdwSeq + '">' + response.tt[i].sdweTranslate + '</span>';
															listHTML += '<br>';
															listHTML += '</div>';
														} else {
															listHTML += '<br>';
														}
													}
													listHTML += '</div>';
													listHTML += '</h2>';
													listHTML += '</div>';
													listHTML += '</div>';

													document.getElementById('wordChoice').innerHTML += listHTML;

												}

											} else {
												// 
											}
										}

										,
										error : function(jqXHR, textStatus,
												errorThrown) {
											alert("ajaxUpdate "
													+ jqXHR.textStatus + " : "
													+ jqXHR.errorThrown);
										}

									});
						});
	</script>

</body>
</html>