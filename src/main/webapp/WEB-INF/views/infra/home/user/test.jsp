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

<!-- <link href="https://webfontworld.github.io/DungGeunMo/DungGeunMo.css" rel="stylesheet"> -->
<link href="https://webfontworld.github.io/NexonMabinogi/MabinogiClassic.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style>
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
				<h2>TEST</h2>
				<p>Test your skills based on what you've learned</p>
			</header>
			<!-- 폼 시작------------------------------------------------------------------------------------------------------------------------------------------------- -->
			<form id="form" name="form" method="post">
				<!-- 날짜 선택 --------------------------------------------------------------------------------------------------------------------------------------------------- -->
				<div class="row">
					<div class="col-10">
						<input type="hidden" name="ifmmSeq" id="ifmmSeq" value="<c:out value="${list.ifmmSeq }"/>" />
						<div id="testDate"></div>
						<input type="text" class="form-control" id="datepicker" name="sddDateChoice" placeholder="Choice Date!!" style="text-align: center; color: black; height: 50px;">
					</div>
					<div class="col-2">
						<button type="button" class="btn btn-primary" id="btn" style="height: 50px;">제출하기</button>
					</div>
				</div>
				<br>
				<div id="result1" style="text-align: center; font-size: 20px; font-style: bold;"></div>
				<br>
				<input type="hidden" id="answer1" name="sdtrsTotalScore">
			</form>
			<!-- 폼 끝------------------------------------------------------------------------------------------------------------------------------------------------- -->
			<div class="row">
				<div class="col-12">
					<main id="main">
						<div class="row" style="height: 480px;">
							<div id="testChoice"></div>
						</div>
					</main>
				</div>
			</div>
		</section>

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
        var goUrlInst = "/home/testInst";

        var form = $("form[name = form]");
		var Seq = $("#ifmmSeq").val();
		
		console.log(Seq);
        $("#btn").on("click", function() {
       	    form.attr("action", goUrlInst).submit();
        });
    </script>

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
                url : "/home/testDate"
                /* ,data : $("#formLogin").serialize() */
                ,
                data : {
                    "sddDateChoice" : $("#datepicker").val()
                },
                success : function(response) {
                    if (response.rt == "success") {
                        console.log(response);

                        let listHTML = "";
                        listHTML += '<input type="hidden" id="sdDate_sddSeq" name="sdDate_sddSeq" value="'+response.tt[0].sdDate_sddSeq+'">';
                        var Date = response.tt[0].sdDate_sddSeq;
                        console.log(Date);
                        document.getElementById('testDate').innerHTML += listHTML;

                        document.getElementById('testChoice').innerHTML = "";
                        for (let i = 0; i < response.tt.length; i++) {
                            console.log(response.tt[i]);
                            let listHTML = "";

                            listHTML += '<div class="col-6" style="margin:auto;">';
                            listHTML += '<div class="quiz">';
                            listHTML += '<span class="quiz__type">' + response.tt[i].sddDateChoice + '</span>';
                            listHTML += '<h2 class="quiz__question">';
                            listHTML += '<span class="number">' + response.tt[i].sdwNum + '</span>';
                            listHTML += '<div class="ask" >' + response.tt[i].first + '____________' + response.tt[i].second + '</div>';
                            listHTML += '<div class="ask1" >' + response.tt[i].sdweTranslate + '</div>';
                            listHTML += '</h2>';
                            listHTML += '<div class="quiz__view">';
                            listHTML += '<div class="true">정답🐾</div>';
                            listHTML += '<div class="false">오답 입니다!</div>';
                            listHTML += '<input type="hidden" class="test" id="testCk'+response.tt[i].sdwNum+'" name="testCk">';
                            listHTML += '</div>';
                            listHTML += '<div class="quiz__answer">';
                            listHTML += '<input type="text" class="input" id="input' + response.tt[i].sdwNum + '" style="text-align:center;" placeholder="정답을 적어주세요!">';
                            listHTML += '<button class="confirm" id="confirm'+response.tt[i].sdwNum+'">정답 확인하기</button>';
                            listHTML += '<div class="result" style="display:none;"></div>';
                            listHTML += '</div>';
                            listHTML += '</div>';
                            listHTML += '</div>';

                            document.getElementById('testChoice').innerHTML += listHTML;

                        }
                        for (let i = 0; i < response.tt.length; i++) {
                            document.getElementById("confirm" + response.tt[i].sdwNum).onclick = function() {
                                if (document.getElementById('input' + response.tt[i].sdwNum).value == response.tt[i].sdwWord) {
                                    document.getElementById('input' + response.tt[i].sdwNum).value = response.tt[i].sdwWord + " 정답 입니다.!!";
                                    document.getElementById('input' + response.tt[i].sdwNum).disabled = true;
                                    document.getElementById("testCk" + response.tt[i].sdwNum).checked = true;
                                    let cnt = 0;
                                    for (let i = 0; i < response.tt.length; i++) {
                                        if (document.getElementById("testCk" + response.tt[i].sdwNum).checked == true) {
                                            cnt++;
                                        }
                                    }

                                    console.log(cnt);

                                    var score = response.tt.length;
                                    var result_test = document.getElementById('result1');
                                    var result_test1 = document.getElementById('answer1');

                                    result_test.innerHTML = score + '개중에서 ' + cnt + '개 맞추셨습니다.';
                                    result_test1.value = cnt;
                                    /* var btn = document.getElementById("btn");
                                    var asw = document.getElementById("answer1");
                                    btn.addEventListener("click", function() {
                                    	alert(asw.value);  
                                    }, false); */
                                } else {
                                    document.getElementById('input' + response.tt[i].sdwNum).value = "틀렸습니다! 정답은  " + response.tt[i].sdwWord + " 입니다.";
                                    document.getElementById('input' + response.tt[i].sdwNum).disabled = true;
                                    let cnt = 0;
                                    for (let i = 0; i < response.tt.length; i++) {
                                        if (document.getElementById("testCk" + response.tt[i].sdwNum).checked == true) {
                                            cnt++;
                                        }
                                    }

                                    console.log(cnt);

                                    var score = response.tt.length;
                                    var result_test = document.getElementById('result1');
                                    var result_test1 = document.getElementById('answer1');

                                    result_test.innerHTML = score + '개중에서 ' + cnt + '개 맞추셨습니다.';
                                    result_test1.innerHTML = cnt;
                                    /* var btn = document.getElementById("btn");
                                    var asw = document.getElementById("answer1");
                                    btn.addEventListener("click", function() {
                                    	alert(asw.value);  
                                    }, false); */
                                }
                            };

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

</body>
</html>