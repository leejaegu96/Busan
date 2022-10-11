<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<jsp:useBean id="CodeServiceImpl" class="com.decemelev.infra.modules.code.CodeServiceImpl" />



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
<style type="text/css">
img, svg {
	vertical-align: middle;
}
table {
	text-align: center;
}

input-group-text {
	height: 48px;
}

#btn-upload {
  width: 150px;
  height: 30px;
  background: #fff;
  border: 1px solid rgb(77,77,77);
  border-radius: 10px;
  font-weight: 500;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  margin: auto;
  &:hover {
    background: rgb(77,77,77);
    color: #fff;
  }
}

#file {
  display: none;
}
#preview {
    width: 150px;
    height: 150px; 
    border-radius: 70%;
    overflow: hidden;
}

.rounded-circle {
    width: 150px;
    height: 150px; 
    border-radius: 50%;
    overflow: hidden;
}


.thumb {
    width: 100%;
    height: 100%;
    object-fit: cover;
}
.remove_img_preview {
    position:relative;
    top:-25px;
    right:5px;
    background:black;
    color:white;
    border-radius:50px;
    font-size:0.9em;
    padding: 0 0.3em 0;
    text-align:center;
    cursor:pointer;
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
								
<!-- 프로필 사진--------------------------------------------------------------------------------------- -->
								<!-- 
								<img src="../resources/assets/images/logo/recruit.png" alt="Profile" class="rounded-circle">
								 -->
								
								<c:choose>
									<c:when test="${fn:length(listUploaded) eq 0 }">
										<img id="imgProfile" src="/resources/assets/images/faces/default_100_100.png" class="rounded-circle mx-auto d-block" width="100" height="100">
									</c:when>
									<c:otherwise>
										<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
											<c:if test="${listUploaded.type eq '1' }">
												<img id="imgProfile" src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded-circle mx-auto d-block" width="100" height="100">
											</c:if>
										</c:forEach>
									</c:otherwise>
								</c:choose>
								
								<h2><c:out value="${list.ifmmName }"/></h2>
								<h3>
									<c:choose>
										<c:when test="${sessSeq eq 144}"> ADMIN </c:when> 
										<c:otherwise> USER </c:otherwise>
									</c:choose>
								</h3>
								<span><c:out value="${list.ifmmSeq }"/></span>
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
										<button class="nav-link active" data-bs-toggle="tab" data-bs-target="#My-Word">My-Word</button>
									</li>
									
									<li class="nav-item">
										<button class="nav-link " data-bs-toggle="tab" data-bs-target="#profile-overview">Overview</button>
									</li>
									
									<li class="nav-item">
										<button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">Edit Profile</button>
									</li>
									
									<li class="nav-item">
										<button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-change-password">Change Password</button>
									</li>

								</ul>
								<div class="tab-content pt-2">
									
<!-- 오늘의 단어--------------------------------------------------------------------------- -->
									
									<div class="tab-pane fade show active My-Word pt-3" id="My-Word">
										<form>
											
											<div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
											  <div class="carousel-inner">
											  	<h3>Today's Word</h3><br>
											  	
											  	<div class="carousel-item active" data-bs-interval="1000000">
											      <div style="max-width:450px; width:100%; height:500px; height:100%; text-align:left; margin:auto; text-align:center; background-color: #666666;">
												    <img alt="" src="../resources/assets/images/samples/study.jpg" style="height:200px; width:400px; padding:10px;">
												    
													  <input type="text" class="form-control" id="datepicker" placeholder="Choice Date!!" style="text-align:center; color:black;">
												  </div>
											    </div>
											  	
											  	<c:forEach items="${list1}" var="list1" varStatus="status">
											  	
											    <div class="carousel-item" data-bs-interval="10000">
											      <div style="max-width:450px; width:100%; height:500px; height:100%; text-align:left; margin:auto; background-color: #666666;">
												    
												    <h4>
												    	<input type="hidden" id="sdwSeq" name="sdwSeq">
											    		<c:out value="${list1.sdwWord }"/> &nbsp; <i class="fa-solid fa-volume-high"></i>
												    </h4><br>
												    
												    <c:forEach items="${item}" var="item" varStatus="status">
												    <span style="line-height:200%;">
												    	<c:if test="${list1.sdwWord == item.sdwWord }">
												    	<span style="color:Blue; font-style: italic;" value="${list1.sdwSeq }">${item.sdwmPartOfSpeech}</span> &nbsp; <span style="color:white;"value="${list1.sdwSeq }">${item.sdwmContents}</span> <br>
												    	<span value="${list1.sdwSeq }">${item.sdweContents}</span> <br> <span value="${list1.sdwSeq }">${item.sdweTranslate}</span><br>
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
											
										</form>
									</div>
									<!-- 두번째 폼 끝--------------------------------------------------------------------------- -->

									<div class="tab-pane fade profile-overview" id="profile-overview">
<!-- 미리보기---------------------------------------------------------------------------------------------------- -->
										<h3 class="card-title">Profile Details</h3>
										<br>
										<form>
											<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('1')}" />
											
											<input type="hidden" name="ifmmSeq" value="<c:out value="${list.ifmmSeq }"/>" />
											
											<div class="row mb-3">
												<label for="Name" class="col-md-4 col-lg-3 col-form-label">Name</label>
												<div class="col-md-8 col-lg-9">
													<label for="Name" class="col-lg-9 col-md-8" style="padding-top: 5px;" name="ifmmName"> <c:out value="${list.ifmmName }"/> </label>
												</div>
											</div>
											
											<div class="row mb-3">
												<label for="Name" class="col-md-4 col-lg-3 col-form-label">Gender</label>
												<div class="col-md-8 col-lg-9">
													<label for="Name" class="col-lg-9 col-md-8" style="padding-top: 5px;"> 
														<%-- <c:if test="${list.ifmmGender eq listGender.ifcdSeq }"> <c:out value="${listGender.ifcdName }" /> </c:if> --%>
														<c:out value="${ listCodeGender[list.ifmmGender-1].ifcdName }"/>
													</label>
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
													<label for="Name" class="col-lg-9 col-md-8" style="padding-top: 5px;"> 
													<c:out value="${list.ifmmPostNum }"/> <br><br> 
													<c:out value="${list.ifmmAddress }"/> </label>
												</div>
											</div>
										</form>

									</div>
									
									
									
									<div class="tab-pane fade profile-edit pt-3" id="profile-edit">

<!-- 수정폼---------------------------------------------------------------------------------------------------- -->
										<form id="form" name="form" method="post" enctype="multipart/form-data">
										
											<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('1')}" />
											<c:set var="listCodeCarrier" value="${CodeServiceImpl.selectListCachedCode('2')}" />
											<c:set var="listCodeDomain" value="${CodeServiceImpl.selectListCachedCode('3')}" />
											
											<input type="hidden" name="ifmmSeq" value="<c:out value="${list.ifmmSeq }"/>" />
											
											<div class="row mb-3">
												<label for="profileImage" class="col-md-4 col-lg-3 col-form-label">Profile Image</label>
												<div class="col-md-8 col-lg-9 text-center" >
<!-- 프로필------------------------------------------------------------------------------------------------- -->
													<c:choose>
														<c:when test="${fn:length(listUploaded) eq 0 }">
															<img id="imgProfile" src="/resources/assets/images/faces/default_100_100.png" class="rounded-circle mx-auto d-block" width="100" height="100">
														</c:when>
														<c:otherwise>
															<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
																<c:if test="${listUploaded.type eq '1' }">
																	<img id="imgProfile" src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded-circle mx-auto d-block" width="100" height="100">
																</c:if>
															</c:forEach>
														</c:otherwise>
													</c:choose>
													<br>
													<label for="ifmmUploadedProfileImage" >
														<span id="btn-upload" style="text-align:center; margin:auto;">UPLOAD</span>
													</label>
													<input class="form-control form-control-sm" id="ifmmUploadedProfileImage" name="ifmmUploadedProfileImage" type="file" multiple="multiple" style="display: none;" onChange="upload('ifmmUploadedProfileImage', 0, 1, 1, 0, 0, 3);">
												</div>
											</div>

											<div class="row mb-3">
												<label for="Name" class="col-md-4 col-lg-3 col-form-label">Name</label>
												<div class="col-md-8 col-lg-9">
													<input type="text" class="form-control" name="ifmmName" value="<c:out value="${list.ifmmName }"/>" >
												</div>
											</div>

											<div class="row mb-3">
												<label for="Gender" class="col-md-4 col-lg-3 col-form-label">Gender</label>
												<div class="col-md-8 col-lg-9">
													<select class="form-select" name="ifmmGender" value="<c:out value="${list.ifmmGender }"/>" >
														
														<c:forEach items="${listCodeGender}" var="listGender" varStatus="status">
															<option value = "${listGender.ifcdSeq }" <c:if test="${list.ifmmGender eq listGender.ifcdSeq }"> selected </c:if> > 
																<c:out value="${listGender.ifcdName }" />
															</option>
														</c:forEach>
														<!-- 
														<option value="1">Male</option>
														<option value="2">Female</option>
														<option value="3">etc</option>
														 -->
													</select>
												</div>
											</div>

											<div class="row mb-3">
												<label for="date" class="col-md-4 col-lg-3 col-form-label">Date Of Birth</label>
												<div class="col-md-8 col-lg-9">
													<input type="text" class="form-control" id="ifmmDob" name="ifmmDob" value="<c:out value="${list.ifmmDob }"/>" >
												</div>
											</div>

											<div class="row mb-3">
												<label for="Country" class="col-md-4 col-lg-3 col-form-label">Email</label>
												<div class="col-md-8 col-lg-9">
													<div class="input-group">
														<input type="text" id="Email" name="Email" class="form-control" placeholder="User email"  value="${fn:split(list.ifmmEmail,'@')[0]}"> 
														<span class="input-group-text">@</span> 
														
														<input type="text" id="Domain" name="Domain" class="form-control" placeholder="Domain" value="${fn:split(list.ifmmEmail,'@')[1]}" >
														<%-- <input type="text" id="Domain" name="Domain" class="form-control" placeholder="Domain" value="${fn:split(list.ifmmEmail,'@')[1]}" > --%>
														
														<select class="form-select" name="ifmmEmailDomain" id="ifmmEmailDomain" >
															<%-- 
															<c:forEach items="${listCodeDomain}" var="listDomain" varStatus="status">
																<option value = "${listDomain.ifcdSeq }" <c:if test="${list.ifmmEmailDomain eq listDomain.ifcdSeq }"> selected </c:if> > 
																	<c:out value="${listDomain.ifcdName }" />
																</option>
															</c:forEach>
															 --%>
															<option value="11">직접입력</option>
															<option value="8">naver.com</option>
															<option value="9">google.com</option>
															<option value="10">daum.net</option>
														</select>
													</div>
													
													<input type="hidden" class="form-control" id="ifmmEmail" name="ifmmEmail" value="<c:out value="${list.ifmmEmail }"/>" >
													<div class="input-group">
														<input class="form-text" type="hidden" name="ifmmMailNy" value="0" <c:if test="${list.ifmmMailNy eq 0 }"> </c:if> > 
														<input class="form-text" type="checkbox" name="ifmmMailNy" value="1" <c:if test="${list.ifmmMailNy eq 1 }"> checked </c:if> > 
														<label class="form-text" style="margin: auto; margin-left: 0;"> E-mail을 통한 소식/정보 수신을 동의하시겠습니까? </label>
													</div>
												</div>
											</div>

											<div class="row mb-3">
												<label for="Address" class="col-md-4 col-lg-3 col-form-label">Phone</label>
												<div class="col-md-8 col-lg-9">
													<input type="hidden" id="inputPhone2AllowedNy" name="inputPhone2AllowedNy" value="0">
													<div class="input-group">
														<select class="form-select" id="ifmmPhoneCarrier" name="ifmmPhoneCarrier" >
															<c:forEach items="${listCodeCarrier}" var="listCarrier" varStatus="statusGender">
																<option value = "${list.ifmmPhoneCarrier }" <c:if test="${list.ifmmPhoneCarrier eq listCarrier.ifcdSeq }"> selected </c:if> > 
																	<c:out value="${listCarrier.ifcdName }" />
																</option>
															</c:forEach>
														</select> 
														<select class="form-select" id="inputPhone1"  value="${fn:substring(list.ifmmPhone,0,3)}" required>
															<option value="010" <c:if test="${fn:substring(list.ifmmPhone,0,3) eq 010 }"> selected </c:if>>010</option>
															<option value="011" <c:if test="${fn:substring(list.ifmmPhone,0,3) eq 011 }"> selected </c:if>>011</option>
															<option value="019" <c:if test="${fn:substring(list.ifmmPhone,0,3) eq 019 }"> selected </c:if>>019</option>
														</select> <span class="input-group-text">-</span> 
														<input type="text" id="inputPhone2" class="form-control" maxlength='4' onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" value="${fn:substring(list.ifmmPhone,3,7)}"> 
														<span class="input-group-text">-</span> 
														<input type="text" id="inputPhone3" class="form-control" maxlength='4' onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" value="${fn:substring(list.ifmmPhone,7,11)}">

														<!-- <button class="btn btn-outline-secondary" type="button" id="button-addon2">인증번호 요청</button> -->
													</div>
													<div class="invalid-feedback" id="inputPhone2ChkFeedback"></div>
													<input type="hidden" id="ifmmPhone" name="ifmmPhone" class="form-control" value="<c:out value="${list.ifmmPhone }"/>" >
													
													<div class="input-group">
														<input class="form-text" type="hidden" name="ifmmSmsNy" value="0" <c:if test="${list.ifmmSmsNy eq 0 }"> </c:if> > 
														<input class="form-text" type="checkbox" name="ifmmSmsNy" value="1" <c:if test="${list.ifmmSmsNy eq 1 }"> checked </c:if> > 
														<label class="form-text" for="ifmmSmsNy" style="margin: auto; margin-left: 0;"> SMS을 통한 소식/정보 수신을 동의하시겠습니까? </label>
													</div>
												</div>
											</div>

											<div class="row mb-3">
												<label for="Address" class="col-md-4 col-lg-3 col-form-label">Address</label>
												<div class="col-md-8 col-lg-9">
													<div class="input-group">
														<div class="col-6">
															<div class="input-group">
																<input type="text" id="ifmmPostNum" name="ifmmPostNum" value="<c:out value="${list.ifmmPostNum }"/>" class="form-control" placeholder="우편번호"   aria-label="Recipient's username" aria-describedby="button-addon2" required>
																<button class="btn btn-outline-secondary" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
																	<i class="fa-solid fa-magnifying-glass"></i>
																</button>
																<button class="btn btn-outline-secondary" type="button" id="btnAddressClear" value="리셋하기">
																	<i class="fa-solid fa-xmark"></i>
																</button>
															</div>
														</div>
														<div class="input-group" style="padding-top: 5px;">
															<input type="text" class="form-control" id="ifmmResidence" name="ifmmResidence" value="<c:out value="${list.ifmmResidence }"/>"  placeholder="주소" aria-label="Recipient's username" aria-describedby="button-addon2" required>
														</div>
														<div class="input-group" style="padding-top: 5px;">
															<input type="text" class="form-control" id="ifmmDetailedAddress" name="ifmmDetailedAddress" value="<c:out value="${list.ifmmDetailedAddress }"/>"  placeholder="상세주소" aria-label="Recipient's username" aria-describedby="button-addon2" required> 
															<input type="text" class="form-control" id="ifmmReference" name="ifmmReference" value="<c:out value="${list.ifmmReference }"/>" placeholder="참고항목" aria-label="Recipient's username" aria-describedby="button-addon2" required>
														</div>
														<input type="hidden" class="form-control" id="ifmmAddress" name="ifmmAddress" value="<c:out value="${list.ifmmAddress }"/>" >
													</div>
												</div>
											</div>

											<div class="text-center">
												<button type="button" id="btnSave" class="btn btn-success" >Save Changes</button>
											</div>
										</form>
										<!-- End Profile Edit Form -->
									</div>
<!-- 화면 비밀번호 변경------------------------------------------------------ ------------------------------- -->
									<div class="tab-pane fade pt-3" id="profile-change-password">
										<form id="pwdForm" name="pwdForm" method="post">
											
											<input type="hidden" name="ifmmSeq" value="<c:out value="${list.ifmmSeq }"/>" />
											
											<div class="row mb-3">
												<label for="currentPassword" class="col-md-4 col-lg-3 col-form-label">Current Password</label>
												<div class="col-md-8 col-lg-9">
													<input type="hidden" id="ifmmPwdAllowedNy" name="ifmmPwdAllowedNy" value="0">
													<input type="password" class="form-control" id="ifmmPassword">
													<div class="invalid-feedback" id="ifmmPwdFeedback"></div>
												</div>
											</div>

											<div class="row mb-3">
												<label for="newPassword" class="col-md-4 col-lg-3 col-form-label">New Password</label>
												<div class="col-md-8 col-lg-9">
													<input type="hidden" id="newPwdAllowedNy" name="newPwdAllowedNy" value="0">
													<input name="ifmmPassword" type="password" class="form-control" id="newPassword">
													<div class="invalid-feedback" id="newPwdFeedback"></div>
												</div>
											</div>

											<div class="row mb-3">
												<label for="renewPassword" class="col-md-4 col-lg-3 col-form-label">Re-enter New Password</label>
												<div class="col-md-8 col-lg-9">
													<input type="hidden" id="renewPwdAllowedNy" name="renewPwdAllowedNy" value="0">
													<input name="ifmmPasswordCheck" type="password" class="form-control" id="renewPassword">
													<div class="invalid-feedback" id="renewPwdFeedback"></div>
												</div>
											</div>

											<div class="text-center">
												<button type="button" id="btnPwdSave" class="btn btn-success" >Change Password</button>
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
	<script type="text/javascript">
	$("#ifmmPassword").on("focusout", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/home/checkPwd"
			/* ,data : $("#formLogin").serialize() */
			,data : { "ifmmPassword" : $("#ifmmPassword").val() }
			,success: function(response) {
				if(response.rt == "success") {
					document.getElementById("ifmmPassword").classList.add('is-valid');
					document.getElementById("ifmmPassword").classList.remove('is-invalid');
					document.getElementById("ifmmPwdFeedback").classList.remove('invalid-feedback');
					document.getElementById("ifmmPwdFeedback").classList.add('valid-feedback');
					document.getElementById("ifmmPwdFeedback").innerText = "현재 비밀번호와 동일합니다.";
					
					document.getElementById("ifmmPwdAllowedNy").value = 1;
					
				} else {
					document.getElementById("ifmmPassword").classList.add('is-invalid');
					
					document.getElementById("ifmmPwdFeedback").classList.remove('valid-feedback');
					document.getElementById("ifmmPwdFeedback").classList.add('invalid-feedback');
					document.getElementById("ifmmPwdFeedback").innerText = "현재 비밀번호와 다릅니다.";
					
					document.getElementById("ifmmPwdAllowedNy").value = 0;
					
				}
			}
			
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
			
		});
	});
	
	</script>
	<script type="text/javascript">
	// 패스워드 확인
		$("#newPassword").on("focusout", function(){
			var pw = $("#newPassword").val();
			var num = pw.search(/[0-9]/g);
			var eng = pw.search(/[a-z]/ig);
			var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
			
			
			
			if(pw.length < 10 || pw.length > 20){
				document.getElementById("newPassword").classList.add('is-invalid');
				document.getElementById("newPwdFeedback").classList.remove('valid-feedback');
				document.getElementById("newPwdFeedback").classList.add('invalid-feedback');
				document.getElementById("newPwdFeedback").innerText = "10자리 ~ 20자리 이내로 입력해주세요.";
				document.getElementById("newPwdAllowedNy").value = 0;
				return false;
			}else if(pw.search(/\s/) != -1){
				document.getElementById("newPassword").classList.add('is-invalid');
				document.getElementById("newPwdFeedback").classList.remove('valid-feedback');
				document.getElementById("newPwdFeedback").classList.add('invalid-feedback');
				document.getElementById("newPwdFeedback").innerText = "비밀번호는 공백 없이 입력해주세요.";
				document.getElementById("newPwdAllowedNy").value = 0;
				return false;
			}else if( (num < 0 && eng < 0) || (eng < 0 && spe < 0) || (spe < 0 && num < 0) ){
				document.getElementById("newPassword").classList.add('is-invalid');
				document.getElementById("newPwdFeedback").classList.remove('valid-feedback');
				document.getElementById("newPwdFeedback").classList.add('invalid-feedback');
				document.getElementById("newPwdFeedback").innerText = "영문,숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.";
				document.getElementById("newPwdAllowedNy").value = 0;
				return false;
			} else if($('#newPassword').val() == $('#ifmmPassword').val()){
				document.getElementById("newPassword").classList.add('is-invalid');
				document.getElementById("newPwdFeedback").classList.remove('valid-feedback');
				document.getElementById("newPwdFeedback").classList.add('invalid-feedback');
				document.getElementById("newPwdFeedback").innerText = "이전 비밀번호와 동일합니다.";
				document.getElementById("newPwdAllowedNy").value = 0;
				return false;
	        } else {
				document.getElementById("newPassword").classList.add('is-valid');
				document.getElementById("newPassword").classList.remove('is-invalid');
				document.getElementById("newPwdFeedback").classList.remove('invalid-feedback');
				document.getElementById("newPwdFeedback").classList.add('valid-feedback');
				document.getElementById("newPwdFeedback").innerText = "사용 가능 합니다.";
				document.getElementById("newPwdAllowedNy").value = 1;
			}
		});
		$("#renewPassword").on("focusout", function(){
			if($('#renewPassword').val() != $('#newPassword').val()){
				document.getElementById("renewPassword").classList.add('is-invalid');
				document.getElementById("renewPwdFeedback").classList.remove('valid-feedback');
				document.getElementById("renewPwdFeedback").classList.add('invalid-feedback');
				document.getElementById("renewPwdFeedback").innerText = "비밀번호가 일치하지 않습니다.";
				document.getElementById("renewPwdAllowedNy").value = 0;
	        } else{
	        	document.getElementById("renewPassword").classList.add('is-valid');
				document.getElementById("renewPassword").classList.remove('is-invalid');
				document.getElementById("renewPwdFeedback").classList.remove('invalid-feedback');
				document.getElementById("renewPwdFeedback").classList.add('valid-feedback');
				document.getElementById("renewPwdFeedback").innerText = "비밀번호가 일치합니다.";
				document.getElementById("renewPwdAllowedNy").value = 1;
	        }
		});
	</script>
	
	<script>
	//파일 미리보기
	/* function handleFileSelect(event) {
    var input = this;
    console.log(input.files)
    if (input.files && input.files.length) {
        var reader = new FileReader();
        this.enabled = false
        reader.onload = (function (e) {
        console.log(e)
            $("#preview").html(['<img class="thumb" src="', e.target.result, '" title="', escape(e.name), '"/>'].join(''))
        });
        reader.readAsDataURL(input.files[0]);
    }
	}
	$('#file').change(handleFileSelect);
	$('.file-edit-icon').on('click', '.preview-de', function () {
	    $("#preview").empty()
	    $("#file").val("");
	});
	$('.preview-edit').click( function() {
	  $("#file").click();
	} ); */
	</script>
	
	<script type="text/javascript">
	
	var goUrlUpdt = "/home/homeUpdt";
	var goPwdUrlUpdt = "/home/homePwdUpdt";
	
	var form = $("form[name = form]");
	var pwdForm = $("form[name = pwdForm]");
	
	$("#btnSave").on("click", function(){
   		form.attr("action", goUrlUpdt).submit();
	}); 
	$("#btnPwdSave").on("click", function(){
		pwdForm.attr("action", goPwdUrlUpdt).submit();
	}); 
	
	
	$("#btnAddressClear").on("click", function() {
		$("#ifmmPostNum").val('');
		$("#ifmmResidence").val('');
		$("#ifmmDetailedAddress").val('');
		$("#ifmmReference").val('');
		$("#ifmaLatArray0").val('');
		$("#ifmaLngArray0").val('');
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
			if (Domain.value == null && Domain.value == '') {
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
	<script type="text/javascript">
	upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
//		objName 과 seq 는 jsp 내에서 유일 하여야 함.
//		memberProfileImage: 1
//		memberImage: 2
//		memberFile : 3
		
		const MAX_EACH_FILE_SIZE = 5 * 1024 * 1024;		//	5M
		const MAX_TOTAL_FILE_SIZE = 25 * 1024 * 1024;	//	25M
		const MAX_TOTAL_FILE_NUMBER = 5;
		
		var extArray1 = new Array();
		extArray1 = ["jpg","gif","png","jpeg","bmp","tif"];

		// 문서관련
		var extArray2 = new Array();
		extArray2 = ["txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		// 이하는 커스텀
		var extArray3 = new Array();
		extArray3 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		var extArray4 = new Array();
		extArray4 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		var extArray5 = new Array();
		extArray5 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		var extArray6 = new Array();
		extArray6 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		var extArray7 = new Array();
		extArray7 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		var extArray8 = new Array();
		extArray8 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		var extArray9 = new Array();
		extArray9 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		
		var totalFileSize = 0;
		var obj = $("#" + objName +"")[0].files;	
		var fileCount = obj.length;
		
		allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
		allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
		allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
		
		checkUploadedTotalFileNumber = function(obj, allowedMaxTotalFileNumber, fileCount) {
			if(allowedMaxTotalFileNumber < fileCount){
				alert("전체 파일 갯수는 "+ allowedMaxTotalFileNumber +"개 까지 허용됩니다.");
//				$("#file"+seq).val("");
//				obj.val("");
				return false;
			}
		}


		checkUploadedExt = function(objName, seq, div) {
			var ext = objName.split('.').pop().toLowerCase();
			var extArray = eval("extArray" + div);
			
			if(extArray.indexOf(ext) == -1) {
				alert("허용된 확장자가 아닙니다.");
//				$("#file"+seq).val("");
				return false;
			}
		}


		checkUploadedEachFileSize = function(obj, seq, allowedEachFileSize) {

			if(obj.size > allowedEachFileSize){
				alert("각 첨부 파일 사이즈는 "+kbToMb(allowedEachFileSize)+"MB 이내로 등록 가능합니다.");
				$("#file"+seq).val("");
				return false;
			}
		}


		checkUploadedTotalFileSize = function(seq, totalSize, allowedTotalFileSize) {
			if(totalSize > allowedTotalFileSize){
				alert("전체 용량은 "+kbToMb(allowedTotalFileSize)+"M를 넘을 수 없습니다.");
				$("#file"+seq).val("");
				return false;
			}
		}
		
		if(checkUploadedTotalFileNumber(obj, allowedMaxTotalFileNumber, fileCount) == false) { return false; }

		for (var i = 0 ; i < fileCount ; i++) {
			if(checkUploadedExt($("#" + objName +"")[0].files[i].name, seq, allowedExtdiv) == false) { return false; }
			if(checkUploadedEachFileSize($("#" + objName +"")[0].files[i], seq, allowedEachFileSize) == false) { return false; }
			totalFileSize += $("#" + objName +"")[0].files[i].size;
		}
		if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
		
		if (uiType == 1) {

			for (var i = 0 ; i < fileCount ; i++) {
				
	 			var divImage = "";
	 			divImage += '<div style="display: inline-block; height: 95px;">';
				/* divImage += '	<img src="/resources/common/image/default_111.jpg" class="rounded" width= "85px" height="85px">'; */
				divImage += '	<img id="aaa'+i+'" src="" class="rounded" width= "85px" height="85px">';
				divImage += '	<div style="position: relative; top:-85px; left:5px"><span style="color: red;">X</span></div>';
				divImage += '</div> ';
				
				$("#ifmmUploadedImage1View").append(divImage);
				
				var fileReader = new FileReader();
				 fileReader.readAsDataURL($("#" + objName +"")[0].files[i]);
				alert($("#" + objName +"")[0].files[i]);
				 fileReader.onload = function () {
				 /* alert(i + " : " + fileReader.result); */
				 alert($("#aaa"+i+""));
				 
				 if(i == 0) {
					 $("#aaa0").attr("src", fileReader.result);		/* #-> */
				 } else if (i == 1) {
					 $("#aaa0").attr("src", fileReader.result);		/* #-> */
				 } else {
					 
				 }
					 /* $("#aaa"+i+"").attr("src", fileReader.result);	 */	/* #-> */
					 /* $("#aaa1").attr("src", fileReader.result); */		/* #-> */ 
				 }
			}			
 			
		} else if(uiType == 2) {
			$("#ulFile" + seq).children().remove();
			
			for (var i = 0 ; i < fileCount ; i++) {
				addUploadLi(seq, i, $("#" + objName +"")[0].files[i].name);
			}
		} else if (uiType == 3) {
			var fileReader = new FileReader();
			 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
			
			 fileReader.onload = function () {
				 $("#imgProfile").attr("src", fileReader.result);		/* #-> */
			 }		
		} else {
			return false;
		}
		return false;
	}
	</script>
</body>
</html>