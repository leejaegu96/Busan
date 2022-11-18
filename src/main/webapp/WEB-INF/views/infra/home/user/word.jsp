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
<link rel="stylesheet" href="../resources/assets/css/word.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style type="text/css">
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
	$(document).ready(function() {
		$.datepicker.setDefaults($.datepicker.regional['ko']);
		$("#datepicker").datepicker({
			changeMonth : true,
			changeYear : true,
			nextText : '다음 달',
			prevText : '이전 달',
			dayNames : [ '일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일' ],
			dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
			monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ],
			monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ],
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
					<li>
						<c:choose>
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
				<h2>Word</h2>
				<p>Look up a word, Learn it forever!</p>
				<input type="text" class="form-control" id="datepicker" name="sddDateChoice" placeholder="Choice Date!!" style="text-align: center; color: black; height: 50px;">
			</header>
			<section class="box" style="height: 100%;">
				<div class="row">
					<!-- <form id="form" name="form" method="post"> -->
					<div id="wordChoice"></div>
					<div id="wordDate"></div>
					<!-- </form> -->
				</div>
			</section>


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
		$("#btnLogout").on("click", function() {
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
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		});
	</script>
	<script type="text/javascript">
		$("#datepicker").on("change", function() {
			$.ajax({
				async : true,
				cache : false,
				type : "post"
				/* ,dataType:"json" */
				,
				url : "/home/wordDate"
				/* ,data : $("#formLogin").serialize() */
				,
				data : {
					"sddDateChoice" : $("#datepicker").val()
				},
				success : function(response) {
					if (response.rt == "success") {
						console.log(response);
						
						let listHTML = "";

						document.getElementById('wordDate').innerHTML += listHTML;

						document.getElementById('wordChoice').innerHTML = "";
						
						for (let i = 0; i < response.rr.length; i++) {
							let listHTML = "";
							listHTML += '<form name="form'+ response.rr[i].sdwNum +'">';
							listHTML += '<input type="hidden" id="infrMember_ifmmSeq" name="infrMember_ifmmSeq" value="'+ ${sessSeq } +'">';
							listHTML += '<div class="col-6" style="margin: auto;" id="colPadding">';
							listHTML += '<div class="quiz">';
							listHTML += '<span class="quiz__type">' + response.rr[i].sddDateChoice + '</span>';
							listHTML += '<h2 class="quiz__question">';
							listHTML += '<span class="word" style="cursor:pointer;" >' + response.rr[i].sdwWord + '</span>';
							listHTML += '<input type="hidden" name="sdWord_sdwSeq'+ response.rr[i].sdwNum +'" id="sdWord_sdwSeq'+ response.rr[i].sdwNum +'" value="'+ response.rr[i].sdwSeq +'" >';
							listHTML += '<div style="float:right;">';
							if(response.yy.length == null || response.yy.length == "0"){
						        listHTML += '<input id="heart'+ response.rr[i].sdwNum +'" type="checkbox" value="0" onclick="insertWord'+ response.rr[i].sdwNum +'()">';
							} else {
							    listHTML += '<input id="heart'+ response.rr[i].sdwNum +'" type="checkbox" value="0" onclick="insertWord'+ response.rr[i].sdwNum +'()">';
							    for (let k=0; k<response.yy.length; k++) {
							        if(response.yy[k].sdwWord == response.rr[i].sdwWord){
								        listHTML += '<input id="heart'+ response.rr[i].sdwNum +'" type="checkbox" value="1" onclick="insertWord'+ response.rr[i].sdwNum +'()" checked>';
								    }else {
								        // 
								    }
							    }
							    /* 
							    for (let k=0; k<response.yy.length; k++) {
							        if(response.yy[k].sdwWord == response.rr[i].sdwWord){
								        listHTML += '<input id="heart'+ response.rr[i].sdwNum +'" type="checkbox" value="1" onclick="insertWord'+ response.rr[i].sdwNum +'()" checked>';
								    }else {
								        listHTML += '<input id="heart'+ response.rr[i].sdwNum +'" type="checkbox" value="0" onclick="insertWord'+ response.rr[i].sdwNum +'()">';
								    }
							    }
							     */
							}
							listHTML += '<label for="heart'+ response.rr[i].sdwNum +'">❤</label>';
							listHTML += '</div>'; 
							listHTML += '<hr style="margin: 10px 0;">';
							listHTML += '<div>'; 
							for (let j = 0; j < response.tt.length; j++) {
								if (response.rr[i].sdwWord === response.tt[j].sdwWord) {
									listHTML += '<div class="ask">';
									listHTML += '<span class="content" style="font-weight: bold;" >' + response.tt[j].sdwmNum + '. ' + '</span>';
									listHTML += '<span class="content" style="font-weight: bold;" >' + '[' + response.tt[j].sdwmPartOfSpeech + ']' + '&nbsp;' + '</span>';
									listHTML += '<span class="content" >' + response.tt[j].sdwmContents + '</span>';
									listHTML += '<br>'; 
									listHTML += '</div>';
								}
							}
							listHTML += '<hr style="margin: 10px 0;">';
							for (let j = 0; j < response.tt.length; j++) {
								if (response.rr[i].sdwWord == response.tt[j].sdwWord) {
									
									listHTML += '<div class="ask1">';
									listHTML += '<span class="content" >' + response.tt[j].sdwmNum + '. ' + response.tt[j].sdweContents + '</span><br>';
									listHTML += '<span class="content" >' + '&nbsp;&nbsp;&nbsp;' + response.tt[j].sdweTranslate + '</span>';
									listHTML += '<br>';
									listHTML += '</div>';
								}
							}
							listHTML += '</div>';
							listHTML += '</h2>';
							listHTML += '</div>';
							listHTML += '</div>';
							listHTML += '</form>';
							
							document.getElementById('wordChoice').innerHTML += listHTML;
							
						}
						
					} else {
						// 
					}
				}

				,
				error : function(jqXHR, textStatus, errorThrown) {
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}

			});
		});
		
		
	</script>
	<script type="text/javascript">
	function insertWord1() {
	    $.ajax({
	        async:'false',
	        url:'/home/insertWord',
	        type:'post',
	        data:{"infrMember_ifmmSeq": $("#infrMember_ifmmSeq").val(), "sdWord_sdwSeq" : $("#sdWord_sdwSeq1").val() },
	        success:(res) => {
	            console.log(res.rt);
	            if (res.rt === "success") {
	                alert("좋아요 등록!");
	            } else {
	                alert("이미 좋아요를 누른 단어입니다.");
	                return false;
	            }
	        },
	        error:(jqXHR) => {
	            alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
	        }
	    });
	}
	</script>
	<script type="text/javascript">
	function insertWord2() {
	    $.ajax({
	        async:'false',
	        url:'/home/insertWord',
	        type:'post',
	        data:{"infrMember_ifmmSeq": $("#infrMember_ifmmSeq").val() ,"sdWord_sdwSeq" : $("#sdWord_sdwSeq2").val() },
	        success:(res) => {
	            if (res.rt == "success") {
	                alert("좋아요 등록!");
	            } else {
	                alert("이미 좋아요를 누른 단어입니다.");
	                return false;
	            }
	        },
	        error:(jqXHR) => {
	            alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
	        }
	    });
	}
	</script>
	<script type="text/javascript">
	function insertWord3() {
	    $.ajax({
	        async:'false',
	        url:'/home/insertWord',
	        type:'post',
	        data:{"infrMember_ifmmSeq": $("#infrMember_ifmmSeq").val() ,"sdWord_sdwSeq" : $("#sdWord_sdwSeq3").val() },
	        success:(res) => {
	            console.log(res.rt);
	            if (res.rt == "success") {
	                alert("좋아요 등록!");
	            } else {
	                alert("이미 좋아요를 누른 단어입니다.");
	                return false;
	            }
	        },
	        error:(jqXHR) => {
	            alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
	        }
	    });
	}
	</script>
	<script type="text/javascript">
	function insertWord4() {
	    $.ajax({
	        async:'false',
	        url:'/home/insertWord',
	        type:'post',
	        data:{"infrMember_ifmmSeq": $("#infrMember_ifmmSeq").val() ,"sdWord_sdwSeq" : $("#sdWord_sdwSeq4").val() },
	        success:(res) => {
	            if (res.rt == "success") {
	                alert("좋아요 등록!");
	            } else {
	                alert("이미 좋아요를 누른 단어입니다.");
	                return false;
	            }
	        },
	        error:(jqXHR) => {
	            alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
	        }
	    });
	}
	</script>
	<script type="text/javascript">
	function insertWord5() {
	    $.ajax({
	        async:'false',
	        url:'/home/insertWord',
	        type:'post',
	        data:{"infrMember_ifmmSeq": $("#infrMember_ifmmSeq").val() ,"sdWord_sdwSeq" : $("#sdWord_sdwSeq5").val() },
	        success:(res) => {
	            if (res.rt == "success") {
	                alert("좋아요 등록!");
	            } else {
	                alert("이미 좋아요를 누른 단어입니다.");
	                return false;
	            }
	        },
	        error:(jqXHR) => {
	            alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
	        }
	    });
	}
	</script>
	<script type="text/javascript">
	
	
	</script>

</body>
</html>