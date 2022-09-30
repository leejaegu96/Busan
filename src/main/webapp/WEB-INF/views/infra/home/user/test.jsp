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

			<!-- Main -->
				<section id="main" class="container">
					<header>
						<h2>TEST</h2>
						<p>Test your skills based on what you've learned</p>
					</header>
					<div class="row">
						<div class="col-12">

							<!-- Text -->
							<section class="box">
								<div class="grid">
								   <h1>TEST</h1>
								   <div class="quiz-container" id="quiz">
								      <p id="question"></p>
								      <div class="buttons">
								         <button class="btn"></button>
								         <button class="btn"></button>
								         <button class="btn"></button>
								         <button class="btn"></button>
								      </div>
								
								      <footer>
								        <p id="progress">진행 정보</p>
								      </footer>
								   </div>
								</div>
							</section>
							<input class="form-control" id="answer" value="">
							<button onclick="Action2();">ddd</button>
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
			
			function Action2 ()
			{
				var answer = document.getElementById('answer').value;
				if(answer == "happend") {
					alert('정답입니다.');
				}else {
					alert('틀렸습니다! 정답은' + quiz.questions[quiz.questionIndex].answer + '입니다!');
				}
			}
			
			
			 const submitBtn = document.getElementById('submit');
			 const previousBtn = document.getElementById('previous');
			 const nextBtn = document.getElementById('next');
			 
			 
			
			// 문제 객체(생성자 함수)
			function Question(text, choice, answer) {
			   this.text = text; // 질문 텍스트
			   this.choice = choice; // 선택할 답들(배열)
			   this.answer = answer; // 정답 정보
			}

			// 퀴즈 정보 객체
			function Quiz(questions) {
			   this.score = 0; // 점수
			   this.questions = questions; // 문제
			   this.questionIndex = 0; // 문제 번호
			}

			// 정답 확인 메서드
			Quiz.prototype.correctAnswer = function(answer) {
			   return answer == this.questions[this.questionIndex].answer;
			}

			var questions = [
			   new Question('얼굴이 왜 그래?<br><br> What _________ to your face?', ['happened', 'happy', 'wrong', 'right'], 'happened'),
			   new Question('충치 치료했어.<br><br> I had to ____ a cavity filled today.', ['got','rescue','go','get'], 'get'),
			   new Question('아팠어?<br><br> Did it _____?', ['ok', 'hurt', 'right', 'wrong'], 'hurt'),
			   new Question('말도 마.<br><br> I don t _____ want to talk about it.', ['even', 'talk', 'know', 'quick'], 'even')
			];

			// 퀴즈 객체 생성
			var quiz = new Quiz(questions);

			// 문제 출력 함수
			function updateQuiz() {
			   var question = document.getElementById('question');
			   var idx = quiz.questionIndex + 1;
			   var choice = document.querySelectorAll('.btn');

			   // 문제 출력
			   question.innerHTML = 'Q' + idx + ') ' + quiz.questions[quiz.questionIndex].text;

			   // 선택 출력
			   for (var i = 0; i < 4; i++) {
			      choice[i].innerHTML = quiz.questions[quiz.questionIndex].choice[i];
			   }

			   progress();
			}

			function progress() {
			   var progress = document.getElementById('progress');
			   progress.innerHTML = '문제 ' + (quiz.questionIndex + 1) + '/ ' + quiz.questions.length;
			}

			var btn = document.querySelectorAll('.btn');

			// 입력 및 정답 확인 함수
			function checkAnswer(i) {
			   btn[i].addEventListener('click', function() {
			      var answer = btn[i].innerText;

			      if (quiz.correctAnswer(answer)) {
			         alert('정답입니다!');
			         quiz.score++;
			      } else {
			         alert('틀렸습니다! 정답은' + quiz.questions[quiz.questionIndex].answer + '입니다!');
			      }

			      if (quiz.questionIndex < quiz.questions.length - 1) {
			         quiz.questionIndex++;
			         updateQuiz();
			      } else {
			         result();
			      }
			   });
			}

			function result() {
			   var quizDiv = document.getElementById('quiz');
			   var per = parseInt((quiz.score * 400) / quiz.questions.length);
			   for(var i = 0; i < 4; i++) {
				   var txt = '<h3>결과</h3>' + '<h3 id="score">당신의 점수: ' + quiz.score + '/' + quiz.questions.length + '&nbsp;&nbsp;&nbsp;' + per + '점' + '</h3>' + '<div id="question">' + '<br>' + quiz.questions[quiz.questionIndex].text + '<br>' + quiz.questions[quiz.questionIndex].answer + '</div>'
			   }
			   
			   ;

			   

			   quizDiv.innerHTML = txt;

			   question
			   
			}

			for (var i = 0; i < btn.length; i++) {
			   checkAnswer(i);
			}

			updateQuiz();

    		
			</script>
			

	</body>
</html>