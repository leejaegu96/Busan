<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

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
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="../resources/assets/css/main.css" />

	
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
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
	height:48px;
}
</style>

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
</head>
<body class="is-preload">
	<div id="page-wrapper">

		<!-- Header -->

		<header id="header">
			<h3
				style="color: white; font-size: 20px; margin-top: 15px; margin-left: 20px; height: 52px; cursor: pointer;"
				onClick="location.href='../Main/HomeForm.html'">
				<i class="fa-solid fa-book-open"></i>&nbsp;E-WORD
			</h3>
			<nav id="nav">
				<ul>
					<li><a href="home">Home</a></li>
					<li><a href="#" class="icon solid fa-angle-down">Contents</a>
						<ul>
							<li><a href="test">Exam</a></li>
							<li><a href="rank">Ranking</a></li>
							<li><a href="mypage">Mypage</a></li>
							<li><a href="translate">Translate</a></li>
						</ul></li>
					<c:choose>
						<c:when test="${sessSeq eq null}">
							<!--로그인 전 화면  -->
							<li><a href="#" class="button"
								onClick="location.href='../login/signUp'"
								style="cursor: pointer;">Sign Up</a></li>
							<li><a href="#" class="button"
								onClick="location.href='../login/login'"
								style="cursor: pointer;">Login</a></li>
						</c:when>
						<c:when test="${sessSeq eq 144}">
							<!--관리자 로그인 후 화면  -->
							<li><a href="mypage">Mypage</a></li>
							<li><a href="/member/memberList">Admin</a></li>
							<li><a href="#" class="button" id="btnLogout"
								style="cursor: pointer;">Logout</a></li>
						</c:when>
						<c:otherwise>
							<!--로그인 후 화면  -->
							<li><a href="mypage">Mypage</a></li>
							<li><a href="#" class="button" id="btnLogout"
								style="cursor: pointer;">Logout</a></li>
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
							<div
								class="card-body profile-card pt-4 d-flex flex-column align-items-center">

								<img src="../resources/assets/images/logo/recruit.png"
									alt="Profile" class="rounded-circle">
								<h2>Lee Jaegu</h2>
								<h3>Student</h3>
								<div class="social-links mt-2">
									<a href="#" class="twitter"><i class="bi bi-twitter"></i></a> <a
										href="#" class="facebook"><i class="bi bi-facebook"></i></a> <a
										href="#" class="instagram"><i class="bi bi-instagram"></i></a>
									<a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
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
										<button class="nav-link active" data-bs-toggle="tab"
											data-bs-target="#profile-overview">Overview</button>
									</li>

									<li class="nav-item">
										<button class="nav-link" data-bs-toggle="tab"
											data-bs-target="#profile-edit">Edit Profile</button>
									</li>

									<li class="nav-item">
										<button class="nav-link" data-bs-toggle="tab"
											data-bs-target="#profile-change-password">Change
											Password</button>
									</li>

								</ul>
								<div class="tab-content pt-2">

									<div class="tab-pane fade show active profile-overview"	id="profile-overview">

										<h5 class="card-title">Profile Details</h5>

										<div class="row mb-3">
											<label for="Name" class="col-md-4 col-lg-3 col-form-label">Name</label>
											<div class="col-md-8 col-lg-9">
												<label for="Name" class="col-lg-9 col-md-8" style="padding-top:5px;">이재구</label>
											</div>
										</div>
										
										<div class="row mb-3">
											<label for="Name" class="col-md-4 col-lg-3 col-form-label">Gender</label>
											<div class="col-md-8 col-lg-9">
												<label for="Name" class="col-lg-9 col-md-8" style="padding-top:5px;">Male</label>
											</div>
										</div>

										<div class="row mb-3">
											<label for="Name" class="col-md-4 col-lg-3 col-form-label">Date Of Birth</label>
											<div class="col-md-8 col-lg-9">
												<label for="Name" class="col-lg-9 col-md-8" style="padding-top:5px;">1996-12-11</label>
											</div>
										</div>

										<div class="row mb-3">
											<label for="Name" class="col-md-4 col-lg-3 col-form-label">Email</label>
											<div class="col-md-8 col-lg-9">
												<label for="Name" class="col-lg-9 col-md-8" style="padding-top:5px;">worncjfrn@naver.com</label>
											</div>
										</div>

										<div class="row mb-3">
											<label for="Name" class="col-md-4 col-lg-3 col-form-label">Phone</label>
											<div class="col-md-8 col-lg-9">
												<label for="Name" class="col-lg-9 col-md-8" style="padding-top:5px;">010-3505-0443</label>
											</div>
										</div>

										<div class="row mb-3">
											<label for="Name" class="col-md-4 col-lg-3 col-form-label">Address</label>
											<div class="col-md-8 col-lg-9">
												<label for="Name" class="col-lg-9 col-md-8" style="padding-top:5px;">04990<br>30, Neungdong-ro 26-gil, Gwangjin-gu, Seoul,
												Republic of Korea</label>
											</div>
										</div>

									</div>

									<div class="tab-pane fade profile-edit pt-3" id="profile-edit">

										<!-- Profile Edit Form----------------------------------------- -->
										<form>
											<div class="row mb-3">
												<label for="profileImage"
													class="col-md-4 col-lg-3 col-form-label">Profile
													Image</label>
												<div class="col-md-8 col-lg-9">
													<img src="../resources/assets/images/logo/recruit.png"
														alt="Profile" class="rounded-circle">
													<!-- 
													<div class="pt-2">
													  <a href="#" class="btn btn-primary btn-sm" title="Upload new profile image"><i class="bi bi-upload"></i></a>
													  <a href="#" class="btn btn-danger btn-sm" title="Remove my profile image"><i class="bi bi-trash"></i></a>
													</div>
													 -->
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
												<label for="date" class="col-md-4 col-lg-3 col-form-label">Date
													Of Birth</label>
												<div class="col-md-8 col-lg-9">
													<input type="text" class="form-control" id="ifmmDob"
														name="ifmmDob">
												</div>
											</div>

											<div class="row mb-3">
												<label for="Country"
													class="col-md-4 col-lg-3 col-form-label">Email</label>
												<div class="col-md-8 col-lg-9">
													<div class="input-group">
														<input type="text" id="Email" name="Email"
															class="form-control" placeholder="User email"> <span
															class="input-group-text">@</span> <input type="text"
															id="Domain" name="Domain" class="form-control"
															placeholder="Domain"> <select class="form-select"
															name="ifmmEmailDomain" id="ifmmEmailDomain">
															<option value="11">직접입력</option>
															<option value="8">naver.com</option>
															<option value="9">google.com</option>
															<option value="10">daum.net</option>
														</select>
													</div>
													<input type="text" class="form-control" id="ifmmEmail"
														name="ifmmEmail"> <input class="form-text"
														type="checkbox" name="ifmmMailNy" value="1"> <input
														class="form-text" type="hidden" name="ifmmMailNy"
														value="0"> <label class="form-text"
														for="ifmmMailNy"> E-mail을 통한 소식/정보 수신을 동의하시겠습니까? </label>
												</div>
											</div>

											<div class="row mb-3">
												<label for="Address"
													class="col-md-4 col-lg-3 col-form-label">Phone</label>
												<div class="col-md-8 col-lg-9">
													<input type="hidden" id="inputPhone2AllowedNy"
														name="inputPhone2AllowedNy" value="0">
													<div class="input-group">
														<select class="form-select" id="ifmmPhoneCarrier"
															name="ifmmPhoneCarrier">
															<option value="4">SKT</option>
															<option value="5">KT</option>
															<option value="6">LG</option>
															<option value="7">기타</option>
														</select> <select class="form-select" id="inputPhone1" required>
															<option>010</option>
															<option>011</option>
															<option>019</option>
														</select> <span class="input-group-text">-</span> <input
															type="text" id="inputPhone2" class="form-control"
															maxlength='4'
															onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
														<span class="input-group-text">-</span> <input type="text"
															id="inputPhone3" class="form-control" maxlength='4'
															onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
														
														<!-- <button class="btn btn-outline-secondary" type="button" id="button-addon2">인증번호 요청</button> -->
													</div>
													<div class="invalid-feedback" id="inputPhone2ChkFeedback"></div>
													<input type="text" id="ifmmPhone" name="ifmmPhone"
														class="form-control">
													<!-- 
											<div class="col-6">
												<div class="input-group md-3" style="padding-top: 5px;">
													<input type="text" class="form-control" placeholder="Code Number" aria-label="Recipient's username" aria-describedby="button-addon2" required>
													<button class="btn btn-outline-secondary" type="button" id="button-addon2">인증번호 확인</button>
												</div>
											</div>
											 -->
													<input class="form-text" type="checkbox" name="ifmmSmsNy"
														value="1"> <input class="form-text" type="hidden"
														name="ifmmSmsNy" value="0"> <label
														class="form-text" for="ifmmSmsNy"> SMS을 통한 소식/정보
														수신을 동의하시겠습니까? </label>
												</div>
											</div>

											<div class="row mb-3">
												<label for="Address"
													class="col-md-4 col-lg-3 col-form-label">Address</label>
												<div class="col-md-8 col-lg-9">
													<div class="input-group">
														<div class="col-6">
															<div class="input-group">
																<input type="text" id="sample6_postcode"
																	class="form-control" placeholder="우편번호"
																	aria-label="Recipient's username"
																	aria-describedby="button-addon2" required>
																<button class="btn btn-outline-secondary" type="button"
																	onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
																	<i class="fa-solid fa-magnifying-glass"></i>
																</button>
																<button class="btn btn-outline-secondary" type="button"
																	id="btnAddressClear" value="리셋하기">
																	<i class="fa-solid fa-xmark"></i>
																</button>
															</div>
														</div>
														<div class="input-group" style="padding-top: 5px;">
															<input type="text" class="form-control"
																id="sample6_address" placeholder="주소"
																aria-label="Recipient's username"
																aria-describedby="button-addon2" required>
														</div>
														<div class="input-group" style="padding-top: 5px;">
															<input type="text" class="form-control"
																id="sample6_detailAddress" placeholder="상세주소"
																aria-label="Recipient's username"
																aria-describedby="button-addon2" required> <input
																type="text" class="form-control"
																id="sample6_extraAddress" placeholder="참고항목"
																aria-label="Recipient's username"
																aria-describedby="button-addon2" required>
														</div>
														<input type="text" class="form-control" id="ifmmAddress"
															name="ifmmAddress">
													</div>
												</div>
											</div>
											<div class="text-center">
												<button type="submit" class="btn btn-primary">Save
													Changes</button>
											</div>
										</form>
										<!-- End Profile Edit Form -->
									</div>
									<div class="tab-pane fade pt-3" id="profile-change-password">
										<!-- Change Password Form ------------------------------- -->
										<form>

											<div class="row mb-3">
												<label for="currentPassword"
													class="col-md-4 col-lg-3 col-form-label">Current
													Password</label>
												<div class="col-md-8 col-lg-9">
													<input name="password" type="password" class="form-control"
														id="currentPassword">
												</div>
											</div>

											<div class="row mb-3">
												<label for="newPassword"
													class="col-md-4 col-lg-3 col-form-label">New
													Password</label>
												<div class="col-md-8 col-lg-9">
													<input name="newpassword" type="password"
														class="form-control" id="newPassword">
												</div>
											</div>

											<div class="row mb-3">
												<label for="renewPassword"
													class="col-md-4 col-lg-3 col-form-label">Re-enter
													New Password</label>
												<div class="col-md-8 col-lg-9">
													<input name="renewpassword" type="password"
														class="form-control" id="renewPassword">
												</div>
											</div>

											<div class="text-center">
												<button type="submit" class="btn btn-primary">Change
													Password</button>
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
				<li><a href="#" class="icon brands fa-twitter"><span
						class="label">Twitter</span></a></li>
				<li><a href="#" class="icon brands fa-facebook-f"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon brands fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon brands fa-github"><span
						class="label">Github</span></a></li>
				<li><a href="#" class="icon brands fa-dribbble"><span
						class="label">Dribbble</span></a></li>
				<li><a href="#" class="icon brands fa-google-plus"><span
						class="label">Google+</span></a></li>
			</ul>
			<ul class="copyright">
				<li>&copy; Untitled. All rights reserved.</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
		</footer>

	</div>

	<!-- Scripts -->
	<!-- 
		<script src="../assets/js/jquery.min.js"></script>
		<script src="../assets/js/jquery.dropotron.min.js"></script>
		<script src="../assets/js/jquery.scrollex.min.js"></script>
		<script src="../assets/js/browser.min.js"></script>
		<script src="../assets/js/breakpoints.min.js"></script>
		<script src="../assets/js/util.js"></script>
		<script src="../assets/js/main.js"></script>
		<script src="https://kit.fontawesome.com/20c294a34b.js" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
		 -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/20c294a34b.js" crossorigin="anonymous"></script>
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

</body>
</html>