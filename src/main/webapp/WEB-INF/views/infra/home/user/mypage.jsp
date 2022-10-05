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
<title>Generic - Alpha by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="../resources/assets/css/main.css" />


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript">
	$(document).ready(
			function() {
				$.datepicker.setDefaults($.datepicker.regional['ko']);
				$("#ifmmDob")
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
									maxDate : 0, // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
									onClose : function(selectedDate) {
										//시작일(startDate) datepicker가 닫힐때
										//종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
									}

								});
			});
</script>
<style type="text/css">
img, svg {
	vertical-align: middle;
}

.rounded-circle {
	border-radius: 50% !important;
	max-width: 100px;
	padding-bottom: 30px;
}

table {
	text-align: center;
}

input-group-text {
	height: 48px;
}
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
			<div class="box">

				<div class="row">
					<div class="col-xl-4 g-3">

						<div class="card">
							<div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

								<img src="../resources/assets/images/logo/recruit.png" alt="Profile" class="rounded-circle">
								<h2>Lee Jaegu</h2>
								<h3>Student</h3>
								<div class="social-links mt-2">
									<a href="#" class="twitter"><i class="bi bi-twitter"></i></a> <a href="#" class="facebook"><i class="bi bi-facebook"></i></a> <a href="#" class="instagram"><i class="bi bi-instagram"></i></a> <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
								</div>

							</div>
						</div>

					</div>
					<div class="col-xl-8 g-3">

						<div class="card">
							<div class="card-body pt-3">
								<!-- Bordered Tabs -->
								<ul class="nav nav-tabs nav-tabs-bordered">

									<li class="nav-item">
										<button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview">Overview</button>
									</li>

									<li class="nav-item">
										<button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">Edit Profile</button>
									</li>

									<li class="nav-item">
										<button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-change-password">Change Password</button>
									</li>

								</ul>
								<div class="tab-content pt-2">

									<div class="tab-pane fade show active profile-overview" id="profile-overview">

										<h3 class="card-title">Profile Details</h3>
										<br>
										
										<input type="text" name="ifmmSeq" value="<c:out value="${list.ifmmSeq }"/>" />
										
										<div class="row mb-3">
											<label for="Name" class="col-md-4 col-lg-3 col-form-label">Name</label>
											<div class="col-md-8 col-lg-9">
												<label for="Name" class="col-lg-9 col-md-8" style="padding-top: 5px;" name="ifmmName" <c:out value="${list.ifmmName }"/> > <c:out value="${list.ifmmName }"/> </label>
											</div>
										</div>
										
										<div class="row mb-3">
											<label for="Name" class="col-md-4 col-lg-3 col-form-label">Date Of Birth</label>
											<div class="col-md-8 col-lg-9">
												<label for="Name" class="col-lg-9 col-md-8" style="padding-top: 5px;"> <c:out value="${list.ifmmDob }"/> </label>
											</div>
										</div>

										<div class="row mb-3">
											<label for="Name" class="col-md-4 col-lg-3 col-form-label">Email</label>
											<div class="col-md-8 col-lg-9">
												<label for="Name" class="col-lg-9 col-md-8" style="padding-top: 5px;" > <c:out value="${list.ifmmEmail }"/> </label>
											</div>
										</div>
										
										

										<div class="row mb-3">
											<label for="Name" class="col-md-4 col-lg-3 col-form-label">Phone</label>
											<div class="col-md-8 col-lg-9">
												<label for="Name" class="col-lg-9 col-md-8" style="padding-top: 5px;" > <c:out value="${list.ifmmPhone }"/> </label>
											</div>
										</div>

										<div class="row mb-3">
											<label for="Name" class="col-md-4 col-lg-3 col-form-label">Address</label>
											<div class="col-md-8 col-lg-9">
												<label for="Name" class="col-lg-9 col-md-8" style="padding-top: 5px;"> <c:out value="${list.ifmmPostNum }"/> <br><br> <c:out value="${list.ifmmAddress }"/> </label>
											</div>
										</div>

									</div>

									<div class="tab-pane fade profile-edit pt-3" id="profile-edit">

										<!-- Profile Edit Form----------------------------------------- -->
										<form id="form" name="form" method="post">
											
											<div class="row mb-3">
												<label for="profileImage" class="col-md-4 col-lg-3 col-form-label">Profile Image</label>
												<div class="col-md-8 col-lg-9">
													<img src="../resources/assets/images/logo/recruit.png" alt="Profile" class="rounded-circle">
												</div>
											</div>

											<div class="row mb-3">
												<label for="Name" class="col-md-4 col-lg-3 col-form-label">Name</label>
												<div class="col-md-8 col-lg-9">
													<input type="text" class="form-control" name="ifmmName">
												</div>
											</div>

											<div class="row mb-3">
												<label for="Gender" class="col-md-4 col-lg-3 col-form-label">Gender</label>
												<div class="col-md-8 col-lg-9">
													<select class="form-select" name="ifmmGender">
														<option value="1">Male</option>
														<option value="2">Female</option>
														<option value="3">etc</option>
													</select>
												</div>
											</div>

											<div class="row mb-3">
												<label for="date" class="col-md-4 col-lg-3 col-form-label">Date Of Birth</label>
												<div class="col-md-8 col-lg-9">
													<input type="text" class="form-control" id="ifmmDob" name="ifmmDob">
												</div>
											</div>

											<div class="row mb-3">
												<label for="Country" class="col-md-4 col-lg-3 col-form-label">Email</label>
												<div class="col-md-8 col-lg-9">
													<div class="input-group">
														<input type="text" id="Email" name="Email" class="form-control" placeholder="User email"> <span class="input-group-text">@</span> <input type="text" id="Domain" name="Domain" class="form-control" placeholder="Domain"> <select class="form-select" name="ifmmEmailDomain" id="ifmmEmailDomain">
															<option value="11">직접입력</option>
															<option value="8">naver.com</option>
															<option value="9">google.com</option>
															<option value="10">daum.net</option>
														</select>
													</div>
													<input type="text" class="form-control" id="ifmmEmail" name="ifmmEmail">
													<div class="input-group">
														<input class="form-text" type="hidden" name="ifmmMailNy" value="0"> <input class="form-text" type="checkbox" name="ifmmMailNy" value="1"> <label class="form-text" for="ifmmMailNy" style="margin: auto; margin-left: 0;"> E-mail을 통한 소식/정보 수신을 동의하시겠습니까? </label>
													</div>
												</div>
											</div>

											<div class="row mb-3">
												<label for="Address" class="col-md-4 col-lg-3 col-form-label">Phone</label>
												<div class="col-md-8 col-lg-9">
													<input type="hidden" id="inputPhone2AllowedNy" name="inputPhone2AllowedNy" value="0">
													<div class="input-group">
														<select class="form-select" id="ifmmPhoneCarrier" name="ifmmPhoneCarrier">
															<option value="4">SKT</option>
															<option value="5">KT</option>
															<option value="6">LG</option>
															<option value="7">기타</option>
														</select> <select class="form-select" id="inputPhone1" required>
															<option>010</option>
															<option>011</option>
															<option>019</option>
														</select> <span class="input-group-text">-</span> <input type="text" id="inputPhone2" class="form-control" maxlength='4' onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"> <span class="input-group-text">-</span> <input type="text" id="inputPhone3" class="form-control" maxlength='4' onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">

														<!-- <button class="btn btn-outline-secondary" type="button" id="button-addon2">인증번호 요청</button> -->
													</div>
													<div class="invalid-feedback" id="inputPhone2ChkFeedback"></div>
													<input type="text" id="ifmmPhone" name="ifmmPhone" class="form-control">
													<div class="input-group">
														<input class="form-text" type="hidden" name="ifmmSmsNy" value="0"> <input class="form-text" type="checkbox" name="ifmmSmsNy" value="1"> <label class="form-text" for="ifmmSmsNy" style="margin: auto; margin-left: 0;"> SMS을 통한 소식/정보 수신을 동의하시겠습니까? </label>
													</div>
												</div>
											</div>

											<div class="row mb-3">
												<label for="Address" class="col-md-4 col-lg-3 col-form-label">Address</label>
												<div class="col-md-8 col-lg-9">
													<div class="input-group">
														<div class="col-6">
															<div class="input-group">
																<input type="text" id="ifmmPostNum" name="ifmmPostNum" class="form-control" placeholder="우편번호" aria-label="Recipient's username" aria-describedby="button-addon2" required>
																<button class="btn btn-outline-secondary" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
																	<i class="fa-solid fa-magnifying-glass"></i>
																</button>
																<button class="btn btn-outline-secondary" type="button" id="btnAddressClear" value="리셋하기">
																	<i class="fa-solid fa-xmark"></i>
																</button>
															</div>
														</div>
														<div class="input-group" style="padding-top: 5px;">
															<input type="text" class="form-control" id="ifmmResidence" name="ifmmResidence" placeholder="주소" aria-label="Recipient's username" aria-describedby="button-addon2" required>
														</div>
														<div class="input-group" style="padding-top: 5px;">
															<input type="text" class="form-control" id="ifmmDetailedAddress" name="ifmmDetailedAddress" placeholder="상세주소" aria-label="Recipient's username" aria-describedby="button-addon2" required> <input type="text" class="form-control" id="ifmmReference" name="ifmmReference" placeholder="참고항목" aria-label="Recipient's username" aria-describedby="button-addon2" required>
														</div>
														<input type="text" class="form-control" id="ifmmAddress" name="ifmmAddress">
													</div>
												</div>
											</div>

											<div class="text-center">
												<button type="submit" class="btn btn-primary">Save Changes</button>
											</div>
										</form>
										<!-- End Profile Edit Form -->
									</div>
									<div class="tab-pane fade pt-3" id="profile-change-password">
										<!-- Change Password Form ------------------------------- -->
										<form>

											<div class="row mb-3">
												<label for="currentPassword" class="col-md-4 col-lg-3 col-form-label">Current Password</label>
												<div class="col-md-8 col-lg-9">
													<input name="password" type="password" class="form-control" id="currentPassword">
												</div>
											</div>

											<div class="row mb-3">
												<label for="newPassword" class="col-md-4 col-lg-3 col-form-label">New Password</label>
												<div class="col-md-8 col-lg-9">
													<input name="newpassword" type="password" class="form-control" id="newPassword">
												</div>
											</div>

											<div class="row mb-3">
												<label for="renewPassword" class="col-md-4 col-lg-3 col-form-label">Re-enter New Password</label>
												<div class="col-md-8 col-lg-9">
													<input name="renewpassword" type="password" class="form-control" id="renewPassword">
												</div>
											</div>

											<div class="text-center">
												<button type="submit" id="btnSave" class="btn btn-primary">Change Password</button>
											</div>
										</form>
										<!-- End Change Password Form -->

									</div>

								</div>
								<!-- End Bordered Tabs -->

							</div>

						</div>


					</div>
				</div>
			</div>
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
	<!-- 
	<script src="../resources/assets/js/jquery.min.js"></script>
	 -->
	<script src="../resources/assets/js/util.js"></script>
	<script src="../resources/assets/js/breakpoints.min.js"></script>
	<script src="../resources/assets/js/jquery.scrollex.min.js"></script>
	<script src="../resources/assets/js/browser.min.js"></script>
	<script src="../resources/assets/js/jquery.dropotron.min.js"></script>

	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
	<script>
	
	</script>
	<script type="text/javascript">
	
	var goUrlUpdt = "/home/homeUpdt";
	
	var form = $("form[name = form]");
	
	$("#btnSave").on("click", function(){
		if (seq.val() == "0" || seq.val() == ""){
	   		// insert
	   		/* if (validationInst() == false) return false; */
	   		form.attr("action", goUrlInst).submit();
	   	} else {
	   		// update
	   		/* keyName.val(atob(keyName.val())); */
	   		/* if (validationUpdt() == false) return false; */
	   		form.attr("action", goUrlUpdt).submit();
	   	}
	}); 
	</script>

	<script type="text/javascript">
		//이메일
		const Email = document.getElementById('Email');
		const Domain = document.getElementById('Domain');
		const ifmmEmailDomain = document.getElementById('ifmmEmailDomain');

		Email.addEventListener('keyup', callback);
		Domain.addEventListener('keyup', callback);
		ifmmEmailDomain.addEventListener('focusout', callback);

		function callback() {
			if (Domain.value == null || Domain.value == '') {
				let str = Email.value + '@' + ifmmEmailDomain.value;
				document.getElementById('ifmmEmail').value = str;
			} else {
				let str = Email.value + '@' + Domain.value;
				document.getElementById('ifmmEmail').value = str;
			}
		}
	</script>
	<script type="text/javascript">
		// 핸드폰
		const inputPhone1 = document.getElementById('inputPhone1');
		const inputPhone2 = document.getElementById('inputPhone2');
		const inputPhone3 = document.getElementById('inputPhone3');

		inputPhone1.addEventListener('focusout', callback);
		inputPhone2.addEventListener('keyup', callback);
		inputPhone3.addEventListener('keyup', callback);

		function callback() {
			let str = inputPhone1.value + inputPhone2.value + inputPhone3.value;
			document.getElementById('ifmmPhone').value = str;
		}
	</script>
	<script type="text/javascript">
		//우편번호
		const ifmmResidence = document.getElementById('ifmmResidence');
		const ifmmReference = document.getElementById('ifmmReference');
		const ifmmDetailedAddress = document
				.getElementById('ifmmDetailedAddress');

		ifmmResidence.addEventListener('focusout', callback);
		ifmmReference.addEventListener('focusout', callback);
		ifmmDetailedAddress.addEventListener('focusout', callback);

		function callback() {
			let str = ifmmResidence.value + ifmmReference.value + " "
					+ ifmmDetailedAddress.value;
			document.getElementById('ifmmAddress').value = str;
		}
	</script>
	<script type="text/javascript">
		$('#ifmmEmailDomain').change(function() {
			$("#ifmmEmailDomain option:selected").each(function() {

				if ($(this).val() == '11') { //직접입력일 경우
					$("#Domain").val(''); //값 초기화
					$("#Domain").attr("disabled", false); //활성화
				} else { //직접입력이 아닐경우
					$("#Domain").val($(this).text()); //선택값 입력
					$("#Domain").attr("disabled", true); //비활성화
				}
			});
		});
	</script>
	<script type="text/javascript">
		function sample6_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 조합된 참고항목을 해당 필드에 넣는다.
								document.getElementById("ifmmReference").value = extraAddr;

							} else {
								document.getElementById("ifmmReference").value = '';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('ifmmPostNum').value = data.zonecode;
							document.getElementById("ifmmResidence").value = addr;
							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("ifmmDetailedAddress")
									.focus();
						}
					}).open();
		}
	</script>
</body>
</html>