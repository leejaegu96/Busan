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
						<div id="result1" style="text-align:center;"> </div> 
					</header>
					<div class="row">
						<div class="col-12">
						
							<main id="main">
								
							    <div class="row" style="height:480px;">
							    	<div class="col-6">
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
								                <input type="checkbox" class="test" id="testCk1" name="testCk">
								            </div>
								            <div class="quiz__answer">
								                <input type="text" class="input" placeholder="정답을 적어주세요!">
								                <button class="confirm">정답 확인하기</button>
								                <div class="result"></div>
								            </div>
								        </div>
								    </div>
								    <div class="col-6">
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
								                <input type="checkbox" class="test" id="testCk2" name="testCk">
								            </div>
								            <div class="quiz__answer">
								                <input type="text" class="input" placeholder="정답을 적어주세요!">
								                <button class="confirm">정답 확인하기</button>
								                <div class="result"></div>
								            </div>
								        </div>
							        </div>
							    </div>
							    <div class="row" style="height:480px;">
							    	<div class="col-6">
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
								                <input type="checkbox" class="test" id="testCk3" name="testCk">
								            </div>
								            <div class="quiz__answer">
								                <input type="text" class="input" placeholder="정답을 적어주세요!">
								                <button class="confirm">정답 확인하기</button>
								                <div class="result"></div>
								            </div>
								        </div>
								    </div>
								    <div class="col-6">
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
								                <input type="checkbox" class="test" id="testCk4" name="testCk">
								            </div>
								            <div class="quiz__answer">
								                <input type="text" class="input" placeholder="정답을 적어주세요!">
								                <button class="confirm">정답 확인하기</button>
								                <div class="result"></div>
								            </div>
								        </div>
								    </div>
								</div>
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
								                <input type="checkbox" class="test" id="testCk5" name="testCk">
								            </div>
								            <div class="quiz__answer">
								                <input type="text" class="input" placeholder="정답을 적어주세요!">
								                <button class="confirm">정답 확인하기</button>
								                <div class="result"></div>
								            </div>
								        </div>
								    </div>
							    </div>
							    <br><br><br><br>
    							
							</main>
							
							
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
		
		<script>
		 // 선택자
		    const quizType = document.querySelectorAll(".quiz__type");                     // 퀴즈 종류
		    const quizNumber = document.querySelectorAll(".quiz__question .number");       // 퀴즈 번호
		    const quizAsk = document.querySelectorAll(".quiz__question .ask");             // 퀴즈 질문
		    const quizAsk1 = document.querySelectorAll(".quiz__question .ask1");             // 퀴즈 질문
		    const quizconfirm = document.querySelectorAll(".quiz__answer .confirm");       // 정답 확인 버튼
		    const quizResult = document.querySelectorAll(".quiz__answer .result");         // 정답 결과
		    const quizInput = document.querySelectorAll(".quiz__answer .input");           // 사용자 정답
		    const quizView = document.querySelectorAll(".quiz__view");                 // 댕댕이
		    
		    const list = document.querySelectorAll(".quiz__view .test"); 
		    
		
		    // 문제정보
		    const quizInfo = [
		        {
		            answerType:"웹디자인기능사 2015년 4회",
		            answerNum: "1",
		            answerAsk: "클라이언트의 웹 브라우저가 웹 서버와 접속할 때 사용하는 통신 규약으로 맞는 것은?",
		            answerAsk1: "클라이언트의 웹 브라우저가 웹 서버와 접속할 때 사용하는 통신 규약으로 맞는 것은?",
		            answerResult: "HTTP"
		        },
		        {
		            answerType:"웹디자인기능사 2015년 4회",
		            answerNum: "2",
		            answerAsk: "고해상도의 원본 이미지의 포맷을 변경해서 저장하였을 경우 다음 중 파일용량이 가장 큰 것은?",
		            answerAsk1: "고해상도의 원본 이미지의 포맷을 변경해서 저장하였을 경우 다음 중 파일용량이 가장 큰 것은?",
		            answerResult: "BMP"
		        },
		        {
		            answerType:"웹디자인기능사 2015년 4회",
		            answerNum: "3",
		            answerAsk: "자연에서 쉽게 찾을 수 있고, 온화함이 있지만 때로는 단조로움을 주는 디자인 원리는?",
		            answerAsk1: "자연에서 쉽게 찾을 수 있고, 온화함이 있지만 때로는 단조로움을 주는 디자인 원리는?",
		            answerResult: "유사조화"
		        },
		        {
		            answerType:"웹디자인기능사 2015년 4회",
		            answerNum: "4",
		            answerAsk: "이미지를 구성하는 최소 단위는?",
		            answerAsk1: "이미지를 구성하는 최소 단위는?",
		            answerResult: "픽셀"
		        },
		        {
		            answerType:"웹디자인기능사 2015년 4회",
		            answerNum: "5",
		            answerAsk: "자연에서 쉽게 찾을 수 있고, 온화함이 있지만 때로는 단조로움을 주는 디자인 원리는?",
		            answerAsk1: "자연에서 쉽게 찾을 수 있고, 온화함이 있지만 때로는 단조로움을 주는 디자인 원리는?",
		            answerResult: "유사조화"
		        },
		    ]
		
		    // 문제출력
		        // 1번문제
		    // quizType[0].textContent = quizInfo[0].answerType;
		    // quizNumber[0].textContent = quizInfo[0].answerNum + ". ";
		    // quizAsk[0].textContent = quizInfo[0].answerAsk;
		    // quizResult[0].textContent = quizInfo[0].answerResult;
		        // 2번문제
		    // quizType[1].textContent = quizInfo[1].answerType;
		    // quizNumber[1].textContent = quizInfo[1].answerNum + ". ";
		    // quizAsk[1].textContent = quizInfo[1].answerAsk;
		    // quizResult[1].textContent = quizInfo[1].answerResult;
		        // 3번문제
		    // quizType[2].textContent = quizInfo[2].answerType;
		    // quizNumber[2].textContent = quizInfo[2].answerNum + ". ";
		    // quizAsk[2].textContent = quizInfo[2].answerAsk;
		    // quizResult[2].textContent = quizInfo[2].answerResult;
		        // 4번문제
		    // quizType[3].textContent = quizInfo[3].answerType;
		    // quizNumber[3].textContent = quizInfo[3].answerNum + ". ";
		    // quizAsk[3].textContent = quizInfo[3].answerAsk;
		    // quizResult[3].textContent = quizInfo[3].answerResult;
		
		    // 문제출력 for문으로 변경
		    // for(let i = 0; i<=3; i++){
		//         quizType[i].textContent = quizInfo[i].answerType;
		//         quizNumber[i].textContent = quizInfo[i].answerNum + ". ";
		//         quizAsk[i].textContent = quizInfo[i].answerAsk;
		//         quizResult[i].textContent = quizInfo[i].answerResult;
		    // }
		
		    // forEach문
		    quizInfo.forEach((e, i) => {
		        quizType[i].textContent = quizInfo[i].answerType;
		        quizNumber[i].textContent = quizInfo[i].answerNum + ". ";
		        quizAsk[i].textContent = quizInfo[i].answerAsk;
		        quizAsk1[i].textContent = quizInfo[i].answerAsk1;
		        quizResult[i].textContent = quizInfo[i].answerResult;
		    })
		
		    // 정답숨기기
		    // quizResult[0].style.display = "none";
		    // quizResult[1].style.display = "none";
		    // quizResult[2].style.display = "none";
		    // quizResult[3].style.display = "none";
		
		    // for
		    // for(let i = 0; i<quizInfo.length; i++){
		//         quizResult[i].style.display = "none";
		    // }
		    quizInfo.forEach((e, i) => {
		        quizResult[i].style.display = "none";
		    });
		
		    // 정답 확인   
		    // quizconfirm.addEventListener("click",() => {
		//         alert("gd") 
		    // }); //2번과다르게 이번파일은 버튼이여러개가있어서 얘한테 알려주지않으면 몰라서 오류남
		    // quizconfirm.forEach((btn) => {          //forEach로 버튼이 4개임을 확인시켜줌
		//         btn.addEventListener("click", () => {
		//             alert("d");
		//         })
		    // }); //btn에 confirm을 가져오는데 현재파일은4개니깐4번반복, 버튼클릭(confirm)에 클릭이벤트시 발생하는 실행문을 4번반복시킴
		
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
		                
		                var result_test = document.getElementById('result1');
		                
		                result_test.innerHTML = `<h3 style="color:#333;"> ${quizInfo.length} 개중에서 ${cnt}개 맞추셨습니다.</h3><button type="button">제출</button>`;
		                
		            }else {
		            	
		            	let cnt = 0;
		                for(let i=0; i<list.length;i++){
		                	if(list[i].checked === true){
		                		cnt++;
		                	}
		                }
		            	
		                console.log(cnt);
		                
		                var result_test = document.getElementById('result1');
		                
		                result_test.innerHTML = `<h3 style="color:#333;"> ${quizInfo.length} 개중에서 ${cnt}개 맞추셨습니다.</h3><button type="button">제출</button>`;
		            	
		            }
		        })
		    });
		    
		    
		    
				
	    </script>
			

	</body>
</html>