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
<title>E-Word</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />

<link rel="stylesheet" href="../resources/assets/css/main.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style>
#borderLine{
	border-style: solid;
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
	    $(document).ready(function () {
	        $.datepicker.setDefaults($.datepicker.regional['ko']); 
	        $( "#datepicker" ).datepicker({
	             changeMonth: true, 
	             changeYear: true,
	             nextText: '다음 달',
	             prevText: '이전 달', 
	             dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
	             dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
	             monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	             monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	             dateFormat: "yy-mm-dd",
	             maxDate: 0,
	             minDate: new Date('2022-07-25'),
	             maxDate: new Date('2022-07-27'),
	        	// 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
	             onClose: function( selectedDate ) {    
	             }    
	
	        });
	    });
		</script>

</head>
<body class="landing is-preload">
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header" class="alt">
			<h3 style="font-size: 20px; margin-top: 15px; margin-left: 20px; height: 52px; cursor: pointer;" onClick="location.href='home'">
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
					<li><a href="home" class="button" style="cursor: pointer;">Home</a></li>
					<c:choose>
						<c:when test="${sessSeq eq null}">
							<!--로그인 전 화면  -->
							<li><a href="#" class="button" onClick="location.href='../login/signUp'" style="cursor: pointer;">Sign Up</a></li>
							<li><a href="#" class="button" onClick="location.href='../login/login'" style="cursor: pointer;">Login</a></li>
						</c:when>
						<c:when test="${sessSeq eq 144}">
							<!--관리자 로그인 후 화면  -->
							<li><a href="mypage" class="button" style="cursor: pointer;">Mypage</a></li>
							<li><a href="/member/memberList" class="button" style="cursor: pointer;">Admin</a></li>
							<li><a href="#" class="button" id="btnLogout" style="cursor: pointer;">Logout</a></li>
						</c:when>
						<c:otherwise>
							<!--로그인 후 화면  -->
							<li><a href="test" class="button" style="cursor: pointer;">Test</a></li>
							<li><a href="rank" class="button" style="cursor: pointer;">Rank</a></li>
							<li><a href="translate" class="button" style="cursor: pointer;">Translate</a></li>
							<li><a href="mypage" class="button" style="cursor: pointer;">Mypage</a></li>
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
		<!-- Banner -->
		<%-- 
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
						    <img alt="" src="../resources/assets/images/samples/study.jpg" style="height:200px; width:400px; padding:10px;">
						    
							  <input type="text" class="form-control" id="datepicker" placeholder="Choice Date!!" style="text-align:center; color:black;">
						  </div>
					    </div>
					  	
					  	<c:forEach items="${list}" var="list" varStatus="status">
					  	
					    <div class="carousel-item" data-bs-interval="10000">
					      <div style="max-width:450px; width:100%; height:500px; height:100%; text-align:left; margin:auto; background-color: #666666;">
						    
						    <h4>
						    	<input type="hidden" id="sdwSeq" name="sdwSeq">
					    		<input id="text${list.sdwSeq}" value="${list.sdwWord }" style="background: none; font-weight: bold; text-align: center; color:white; height:50px;" readonly> &nbsp; <i class="fa-solid fa-volume-high" id="btn-read${list.sdwSeq}" style="cursor:pointer;"></i>
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
				</section>
				 --%>

		<section id="banner">
			<h3 style="letter-spacing: 7px;">Look up a word, Learn it forever!</h3><br>
			<br>
			<section style="height: 20px; width: 50%; margin: auto;">
				<center>
					<div class="main">
						<div class="input-group mb-3">
							<input type="text" class="form-control" id="input">
							<input type="button" name="Search" value="Search" style="background-color: gray;" onclick="Search()" class="btn btn-outline-dark" type="button">
							<input type="button" name="Reset" value="Reset" style="background-color: gray;" class="btn btn-outline-dark" type="button" onclick="history.go(0)">
						</div>
					</div>
				</center>
			</section>
		</section>

		<!-- Main -->
		<section id="main" class="container" >
			<section class="box special" >
				<header class="major">
					<h1 class="badge rounded-pill bg-primary" id="word" align="left">Searching....</h1>
						<h4 style="color: #0d6efd !important; font-weight: bold;" align="left">Definition:</h4>
						<h6 align="left" id="definition1"></h6>
						<h6 align="left" id="definition2"></h6>
						&nbsp;<br> &nbsp;<br> &nbsp;<br>
						<h4 style="color: #0d6efd !important; font-weight: bold;" align="left">Example:</h4>
						<h6 align="left" id="example1"></h6>
						<h6 align="left" id="example2"></h6>
						&nbsp;<br> &nbsp;<br>
				</header>
			</section>
			<section class="box special features">
				<div class="features-row">
					<section>
						<span class="icon solid major fa-bookmark accent5" onClick="location.href='word'" style="cursor: pointer;"></span>
						<h3>WORD</h3>
						<p>Look up a word, Learn it forever!</p>
					</section>
					<section>
						<span class="icon solid major fa-file-pen accent2" onClick="location.href='test'" style="cursor: pointer;"></span>
						<h3>TEST</h3>
						<p>Test your skills based on what you've learned</p>
					</section>
				</div>
				<div class="features-row">
					<section>
						<span class="icon solid major fa-ranking-star accent3" onClick="location.href='rank'" style="cursor: pointer;"></span>
						<h3>RANKING</h3>
						<p>Check the test scores you have taken so far</p>
					</section>
					<section>
						<span class="icon solid major fa-book-atlas accent4" onClick="location.href='translate'" style="cursor: pointer;"></span>
						<h3>TRANSLATE</h3>
						<p>We dream of a world where we can communicate without language barriers.</p>
					</section>
					
				</div>
			</section>
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
	<!-- 
			<script src="../resources/assets/js/jquery.min.js"></script>
			 -->
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
	<!-- 
	<script>
        function speak(text, opt_prop) {
            if (typeof SpeechSynthesisUtterance === "undefined" || typeof window.speechSynthesis === "undefined") {
                alert("이 브라우저는 음성 합성을 지원하지 않습니다.")
                return
            }
            
            window.speechSynthesis.cancel() // 현재 읽고있다면 초기화

            const prop = opt_prop || {}

            const speechMsg = new SpeechSynthesisUtterance()
            speechMsg.rate = prop.rate || 0.1 // 속도: 0.1 ~ 10      
            speechMsg.pitch = prop.pitch || 0 // 음높이: 0 ~ 2
            speechMsg.lang = prop.lang || "ko-KR"
            speechMsg.text = text
            
            // SpeechSynthesisUtterance에 저장된 내용을 바탕으로 음성합성 실행
            window.speechSynthesis.speak(speechMsg)
        }

        // 이벤트 영역
        for(let i=1; i<16; i++){
        	/* const text = document.getElementById("text"+i)
	        const btnRead = document.getElementById("btn-read"+i) */
	
	        document.getElementById('btn-read'+i).addEventListener("click", e => {
	            speak(document.getElementById('text'+i).value, {
	                rate: 1,
	                pitch: 1.2,
	                lang: "en-US"
	            })
	        })
        }
        
    </script>
	 -->
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