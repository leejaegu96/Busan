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
			<h3 style="color: white; font-size: 20px; margin-top: 15px; margin-left: 20px; height: 52px; cursor: pointer;" onClick="location.href='home'">
				<i class="fa-solid fa-book-open"></i>&nbsp;E-WORD
			</h3>
			<nav id="nav">
				<ul>
					<li>
						<c:choose>
							<c:when test="${sessSeq eq null}">
							</c:when>
							<c:when test="${sessSeq eq 144}">
								<span style="color: #959ADA; font-weight: bolder;"><c:out value="${sessName }" /></span> 관리자님
									</c:when>
							<c:otherwise>
								<span style="color: #959ADA; font-weight: bolder;"><c:out value="${sessName }" /></span>님
									</c:otherwise>
						</c:choose>
					</li>
					<li>
						<a href="home" class="button" style="cursor: pointer; background-color: #444444;">Home</a>
					</li>
					<c:choose>
						<c:when test="${sessSeq eq null}">
							<!--로그인 전 화면  -->
							<li>
								<a href="#" class="button" onClick="location.href='../login/signUp'" style="cursor: pointer; background-color: #444444;">Sign Up</a>
							</li>
							<li>
								<a href="#" class="button" onClick="location.href='../login/login'" style="cursor: pointer;">Login</a>
							</li>
						</c:when>
						<c:when test="${sessSeq eq 144}">
							<!--관리자 로그인 후 화면  -->
							<li>
								<a href="mypage" class="button" style="cursor: pointer; background-color: #444444;">Mypage</a>
							</li>
							<li>
								<a href="/member/memberList" class="button" style="cursor: pointer; background-color: #444444;">Admin</a>
							</li>
							<li>
								<a href="#" class="button" id="btnLogout" style="cursor: pointer;">Logout</a>
							</li>
						</c:when>
						<c:otherwise>
							<!--로그인 후 화면  -->
							<li>
								<a href="test" class="button" style="cursor: pointer; background-color: #444444;">Test</a>
							</li>
							<li>
								<a href="rank" class="button" style="cursor: pointer; background-color: #444444;">Rank</a>
							</li>
							<li>
								<a href="translate" class="button" style="cursor: pointer; background-color: #444444;">Translate</a>
							</li>
							<li>
								<a href="mypage" class="button" style="cursor: pointer; background-color: #444444;">Mypage</a>
							</li>
							<li>
								<a href="#" class="button" id="btnLogout" style="cursor: pointer;">Logout</a>
							</li>
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
				<h2>RANKING</h2>
				<p>Check the test scores you have taken so far</p>
			</header>
			<div class="row">
				<div class="col-12">

					<!-- Text -->
					<section class="box" style="height: 800px;">
						<div class="row">
							<div class="col-5">
								<div style="position: relative;">
									<div style="position: absolute; top: 10px;">
										<img src="../resources/assets/images/background/background_trophy.png" style="width: 400px;"></img>
									</div>
								</div>
								<div style="position: relative;">
									<div style="position: absolute; top: 80px; left: 50px;">
										<img src="../resources/assets/images/background/trophy.png" style="width: 300px; height: 300px;"></img>
									</div>
								</div>
								<div style="position: relative;">
									<div style="position: absolute; top: 370px; left: 50px;">
										<table class="table" style="width: 300px; text-align: center;">
											<thead>
												<tr>
													<td style="font-weight: bold;">RANK</td>
													<td style="font-weight: bold;">NAME</td>
													<td style="font-weight: bold;">SCORE</td>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${rank}" var="rank" varStatus="status">
													<tr>
														<td>
															<c:out value="${rank.ranking}" />
														</td>
														<td>
															<c:out value="${rank.name}" />
														</td>
														<td>
															<c:out value="${rank.sum}" />
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="col-7">
								<h3>🏆️ User Ranking</h3>
								<table class="table" style="width: 100%; height: auto; text-align: center;">
									<thead>
										<tr>
											<td>DATE</td>
											<td>RANK</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>This Week</td>
											<td>2nd</td>
										</tr>
										<tr>
											<td>Last Week</td>
											<td>3rd</td>
										</tr>
										<tr>
											<td>This Month</td>
											<td>5th</td>
										</tr>
										<tr>
											<td>Last Month</td>
											<td>-</td>
										</tr>
									</tbody>
								</table>
								<br><br>
								<hr>
								<br><br>
								<div style="width: 500px; height: 500px; margin:auto;">
									<!--차트가 그려질 부분-->
									<canvas id="myChart"></canvas>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>


			<!-- Footer -->
			<footer id="footer">
				<ul class="icons">
					<li>
						<a href="#" class="icon brands fa-twitter">
							<span class="label">Twitter</span>
						</a>
					</li>
					<li>
						<a href="#" class="icon brands fa-facebook-f">
							<span class="label">Facebook</span>
						</a>
					</li>
					<li>
						<a href="#" class="icon brands fa-instagram">
							<span class="label">Instagram</span>
						</a>
					</li>
					<li>
						<a href="#" class="icon brands fa-github">
							<span class="label">Github</span>
						</a>
					</li>
					<li>
						<a href="#" class="icon brands fa-dribbble">
							<span class="label">Dribbble</span>
						</a>
					</li>
					<li>
						<a href="#" class="icon brands fa-google-plus">
							<span class="label">Google+</span>
						</a>
					</li>
				</ul>
				<ul class="copyright">
					<li>&copy; Untitled. All rights reserved.</li>
					<li>
						Design:
						<a href="http://html5up.net">HTML5 UP</a>
					</li>
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

	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>

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
        var context = document
            .getElementById('myChart')
            .getContext('2d');
        var myChart = new Chart(context, {
            type: 'bar', // 차트의 형태
            data: { // 차트에 들어갈 데이터
                labels: [
                    //x 축
                    /* 
                    '1','2','3','4','5','6','7'
                     */
                    <c:forEach items="${score}" var="score" varStatus="status">
                    	'${score.sddDateChoice}',
                    </c:forEach>
                ],
                datasets: [
                    { //데이터
                        label: '# Correct Number', //차트 제목
                        fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                        data: [
                            /* 
                            21,19,25,20,23,26,25 //x축 label에 대응되는 데이터 값
                             */
                            <c:forEach items="${score}" var="score" varStatus="status">
	                        	'${score.sdtrsTotalScore}',
	                        </c:forEach> 
                        ],
                        backgroundColor: [
                            //색상
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(255, 159, 64, 0.2)'
                        ],
                        borderColor: [
                            //경계선 색상
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(75, 192, 192, 1)',
                            'rgba(153, 102, 255, 1)',
                            'rgba(255, 159, 64, 1)'
                        ],
                        borderWidth: 2 //경계선 굵기
                    },/* 
                    {
                        label: 'test2',
                        fill: false,
                        data: [
                            8, 34, 12, 24
                        ],
                        backgroundColor: 'rgb(157, 109, 12)',
                        borderColor: 'rgb(157, 109, 12)'
                    } */
                ]
            },
            options: {
                title: {
                    display: true,
                    text: 'Latest Week Grades',
                    fontSize: 20
                },
                legend: {
                    display: true,
                    position: "bottom",
                },
                scales: {
                    yAxes: [
                        {
                            ticks: {
                                beginAtZero: true
                            }
                        }
                    ]
                }
            }
        });
        </script>

</body>
</html>