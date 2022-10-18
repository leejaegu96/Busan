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
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
		<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
		<link rel="stylesheet" href="../resources/assets/css/main.css" />
		<link rel="stylesheet" href="../resources/assets/css/test.css" />
		
		<!-- <link href="https://webfontworld.github.io/DungGeunMo/DungGeunMo.css" rel="stylesheet"> -->
    	<link href="https://webfontworld.github.io/NexonMabinogi/MabinogiClassic.css" rel="stylesheet">
    	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<style>
		.ui-datepicker{ font-size: 15px; width: 400px; }
		.ui-datepicker select.ui-datepicker-month{ width:30%; font-size: 15px; }
		.ui-datepicker select.ui-datepicker-year{ width:40%; font-size: 15px; }
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
	<body>
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header" >
					<h3 style="color: white;font-size: 20px; margin-top:15px; margin-left:20px; height: 52px; cursor:pointer;" onClick="location.href='home'"><i class="fa-solid fa-book-open"></i>&nbsp;E-WORD</h3>
					<nav id="nav">
						<ul>
							<li>
								<c:choose>
									<c:when test="${sessSeq eq null}">
									</c:when>
									<c:when test="${sessSeq eq 144}">
										<span style="color: #959ADA; font-weight:bolder;"><c:out value="${sessName }"/></span> 관리자님
									</c:when>
									<c:otherwise>
										<span style="color: #959ADA; font-weight:bolder;"><c:out value="${sessName }"/></span>님
									</c:otherwise>
								</c:choose>
							</li>
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
						<h2>TEST</h2>
						<p>Test your skills based on what you've learned</p>
						<!-- 날짜 선택 --------------------------------------------------------------------------------------------------------------------------------------------------- -->
						<input type="text" class="form-control" id="datepicker" placeholder="Choice Date!!" style="text-align:center; color:black;"><br>
						<div id="result1" style="text-align:center; font-size:20px; font-style: bold;"> </div> 
					</header>
					<div class="row">
						<div class="col-12">
						
							<main id="main">
								<div class="row" style="height:480px;">
									<div id="testChoice"></div>
								</div>
							</main>
							
							
						</div>
					</div>
					

			<!-- Footer -->
				<!-- 
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
				 -->
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
		$("#datepicker").on("change", function(){
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/home/testDate"
				/* ,data : $("#formLogin").serialize() */
				,data : { "sddDateChoice" : $("#datepicker").val() }
				,success: function(response) {
					if(response.rt == "success") {
						
							
						
					} else {
						// 
					}
				}
				
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
				
			});
		});
		
		</script>
		<script>
		let listHTML = "";
		listHTML += '<span>이게 왜 안나올까요</span>';
		listHTML += '<c:forEach items="${result}" var="result" varStatus="status">';
		listHTML += '<div class="col-6" style="margin:auto;">';
		listHTML += '<div class="quiz">';
		listHTML += '<span class="quiz__type">${result.sddDateChoice}</span>';
		listHTML += '<h2 class="quiz__question">';
		listHTML += '<span class="number">${result.sdwNum}</span>';
		listHTML += '<div class="ask" >${result.first}_________${result.second}</div>';
		listHTML += '<div class="ask1" >${result.sdweTranslate}</div>';
		listHTML += '</h2>';
		listHTML += '<div class="quiz__view">';
		listHTML += '<div class="true">정답🐾</div>';
		listHTML += '<div class="false">오답 입니다!</div>';
		listHTML += '<input type="hidden" class="test" id="testCk'+${status.index}+'" name="testCk">';
		listHTML += '</div>';
		listHTML += '<div class="quiz__answer">';
		listHTML += '<input type="text" class="input" placeholder="정답을 적어주세요!">';
		listHTML += '<button class="confirm">정답 확인하기</button>';
		listHTML += '<div class="result"></div>';
		listHTML += '</div>';
		listHTML += '</div>';
		listHTML += '</div>';
		listHTML += '</c:forEach>';
		
		document.getElementById('testChoice').innerHTML += listHTML;	
		</script>
		
		<!-- 날짜 선택 ------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
		<script type="text/javascript">
		
		const quizType = document.querySelectorAll(".quiz__type");                     // 퀴즈 종류
	    const quizNumber = document.querySelectorAll(".quiz__question .number");       // 퀴즈 번호
	    const quizAsk = document.querySelectorAll(".quiz__question .ask");             // 퀴즈 질문
	    const quizAsk1 = document.querySelectorAll(".quiz__question .ask1");             // 퀴즈 질문
	    const quizconfirm = document.querySelectorAll(".quiz__answer .confirm");       // 정답 확인 버튼
	    const quizResult = document.querySelectorAll(".quiz__answer .result");         // 정답 결과
	    const quizInput = document.querySelectorAll(".quiz__answer .input");           // 사용자 정답
	    const quizView = document.querySelectorAll(".quiz__view");                 // 
	    
	    const list = document.querySelectorAll(".quiz__view .test");
	    
    	/* var date = document.getElementById('datepicker').value; */
    	
    	/* 
    	const quizInfo = [
				{
					answerType: quizType,
	            	answerNum: ,
		            answerAsk: ,
		            answerAsk1: ,
		            answerResult: ,
				},
	    ]
    	console.log(typeof quizInfo);
    	
    	
	    quizInfo.forEach((e, i) => {
	        quizType[i].textContent = quizInfo[i].answerType;
	        quizNumber[i].textContent = quizInfo[i].answerNum + ". ";
	        quizAsk[i].textContent = quizInfo[i].answerAsk;
	        quizAsk1[i].textContent = quizInfo[i].answerAsk1;
	        quizResult[i].textContent = quizInfo[i].answerResult;
	    })
		
	    quizInfo.forEach((e, i) => {
	        quizResult[i].style.display = "none";
	    });
		 */
	    
	    quizconfirm.forEach((btn, num) => {          
	        btn.addEventListener("click", () => {
	            
	            // 사용자 정답
	            const userWord = quizInput[num].value;
	            // console.log(userWord);
	            // 사용자 정답 비교
	            if(userWord == quizInfo[num].answerResult){
	                // 정답
	                // alert("정답");
	                quizView[num].classList.add("like");
	                quizconfirm[num].style.display="none";
	                
	                /* document.getElementById("testCk").checked = true; */
	                
	                if(num==0){
	                	document.getElementById("testCk1").checked = true; // HTTP
	                } else if(num==1){
	                	document.getElementById("testCk2").checked = true; // BMP
	                } else if(num==2){
	                	document.getElementById("testCk3").checked = true; // 유사조화
	                } else if(num==3){
	                	document.getElementById("testCk4").checked = true; // 픽셀
	                } else {
	                	document.getElementById("testCk5").checked = true; // 유사조화
	                } 
	                
	                
	            }else {
	                // 오답
	                // alert("오답")
	                quizView[num].classList.add("dislike");
	                quizconfirm[num].style.display="none";
	                quizResult[num].style.display = "block";
	                quizInput[num].style.display = "none";
	            }
	        })
	    });
	    
	    quizconfirm.forEach((btn, num) => {          
	        btn.addEventListener("focusout", () => {
	            
	            // 사용자 정답
	            const userWord = quizInput[num].value;
	            // console.log(userWord);
	            // 사용자 정답 비교
	            if(userWord == quizInfo[num].answerResult){
	            	
	            	
	                
	                let cnt = 0;
	                for(let i=0; i<list.length;i++){
	                	if(list[i].checked === true){
	                		cnt++;
	                	}
	                }
	            	
	                console.log(cnt);
	                
	                var score = list.length;
	                var result_test = document.getElementById('result1');
	                
	                result_test.innerHTML = score + '개중에서 ' + cnt + '개 맞추셨습니다.';
	                
	            }else {
	            	
	            	let cnt = 0;
	                for(let i=0; i<list.length;i++){
	                	if(list[i].checked === true){
	                		cnt++;
	                	}
	                }
	            	
	                console.log(cnt);
	                
	                var score = list.length;
	                var result_test = document.getElementById('result1');
	                
	                result_test.innerHTML = score + '개중에서 ' + cnt + '개 맞추셨습니다.';
	            	
	            }
	        })
	    });
		</script>
		
		
		<script>
		/* 
		let listHTML = "";
		
		listHTML += '<c:forEach items="${test}" var="test" varStatus="status">';
		listHTML += '<div class="col-6" style="margin:auto;">';
		listHTML += '<div class="quiz">';
		listHTML += '<span class="quiz__type">${test.sddDateChoice}</span>';
		listHTML += '<h2 class="quiz__question">';
		listHTML += '<span class="number">${test.sdwNum}</span>';
		listHTML += '<div class="ask" >${test.first}_________${test.second}</div>';
		listHTML += '<div class="ask1" >${test.sdweTranslate}</div>';
		listHTML += '</h2>';
		listHTML += '<div class="quiz__view">';
		listHTML += '<div class="true">정답🐾</div>';
		listHTML += '<div class="false">오답 입니다!</div>';
		listHTML += '<input type="hidden" class="test" id="testCk'+${status.index}+'" name="testCk">';
		listHTML += '</div>';
		listHTML += '<div class="quiz__answer">';
		listHTML += '<input type="text" class="input" placeholder="정답을 적어주세요!">';
		listHTML += '<button class="confirm">정답 확인하기</button>';
		listHTML += '<div class="result"></div>';
		listHTML += '</div>';
		listHTML += '</div>';
		listHTML += '</div>';
		listHTML += '</c:forEach>';
		
		document.getElementById('testPart').innerHTML +=listHTML;
		 */
		</script>
		<script>
		
			/* 
			let listHTML = "";
			
			listHTML += '<c:forEach items="${test}" var="test" varStatus="status">';
			listHTML += '<div class="col-6" style="margin:auto;">';
			listHTML += '<div class="quiz">';
			listHTML += '<span class="quiz__type">${test.sddDateChoice}</span>';
			listHTML += '<h2 class="quiz__question">';
			listHTML += '<span class="number">${test.sdwNum}</span>';
			listHTML += '<div class="ask" >${test.first}_________${test.second}</div>';
			listHTML += '<div class="ask1" >${test.sdweTranslate}</div>';
			listHTML += '</h2>';
			listHTML += '<div class="quiz__view">';
			listHTML += '<div class="true">정답🐾</div>';
			listHTML += '<div class="false">오답 입니다!</div>';
			listHTML += '<input type="hidden" class="test" id="testCk'+${status.index}+'" name="testCk">';
			listHTML += '</div>';
			listHTML += '<div class="quiz__answer">';
			listHTML += '<input type="text" class="input" placeholder="정답을 적어주세요!">';
			listHTML += '<button class="confirm">정답 확인하기</button>';
			listHTML += '<div class="result"></div>';
			listHTML += '</div>';
			listHTML += '</div>';
			listHTML += '</div>';
			listHTML += '</c:forEach>';
			
			document.getElementById('testChoice').innerHTML +=listHTML;
			 */
	    /* 
	    <c:forEach items="${test}" var="test" >
			<c:if test="${test.sddDateChoice == '2022-07-25' }" >
				<div class="row" style="height:480px;">
					<div class="col-6" style="margin:auto;">
				        <div class="quiz">
				            <span class="quiz__type"></span>
				            <h2 class="quiz__question">
				                <span class="number"></span>
				                <div class="ask"></div>
				                <div class="ask1"></div>
				            </h2>
				            <div class="quiz__view">
				                <div class="true">정답🐾</div>
				                <div class="false">오답 입니다!</div>
				                <input type="hidden" class="test" id="testCk5" name="testCk">
				            </div>
				            <div class="quiz__answer">
				                <input type="text" class="input" placeholder="정답을 적어주세요!">
				                <button class="confirm">정답 확인하기</button>
				                <div class="result"></div>
				            </div>
				        </div>
				    </div>
			    </div>
			 </c:if>
		</c:forEach>
		 */
	    </script>
			

	</body>
</html>