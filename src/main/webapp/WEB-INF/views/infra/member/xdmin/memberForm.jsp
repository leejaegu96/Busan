<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>E-Word Administrator</title>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../resources/assets/css/bootstrap.css">

<link rel="stylesheet" href="../resources/assets/vendors/iconly/bold.css">
<link rel="stylesheet" href="../resources/assets/vendors/simple-datatables/style.css">

<link rel="stylesheet" href="../resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="../resources/assets/vendors/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" href="../resources/assets/css/app.css">
<link rel="shortcut icon" href="../resources/assets/images/favicon.svg" type="image/x-icon">
<style type="text/css">
.addScroll {
	overflow-y: auto;
	height: 200px;
	background-color: #E9ECEF;
	padding-top: 5px;
	padding-left: 5px;
}

.input-file-button {
	padding: 4px 25px;
	background-color: #FF6600;
	border-radius: 4px;
	color: white;
	cursor: pointer;
}

#preview {
	width: 200px;
	height: 200px;
	border-radius: 70%;
	overflow: hidden;
}

#btn-upload {
	width: 150px;
	height: 30px;
	background: #fff;
	border: 1px solid rgb(77, 77, 77);
	border-radius: 10px;
	font-weight: 500;
	cursor: pointer;
	display: flex;
	align-items: center;
	justify-content: center;
	margin: auto; &: hover { background : rgb( 77, 77, 77);
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
	border-radius: 100%;
	overflow: hidden;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script type="text/javascript">
    $(document).ready(function () {
        $.datepicker.setDefaults($.datepicker.regional['ko']); 
        $( "#ifmmDob" ).datepicker({
             changeMonth: true, 
             changeYear: true,
             nextText: '다음 달',
             prevText: '이전 달', 
             dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
             dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
             monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
             monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
             dateFormat: "yy-mm-dd",
             maxDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
             onClose: function( selectedDate ) {    
                  //시작일(startDate) datepicker가 닫힐때
                  //종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
             }    

        });
    });
</script>
</head>

<body>
	<div id="app">
		<div id="sidebar" class="active">
			<div class="sidebar-wrapper active">
				<div class="sidebar-header">
					<div class="d-flex justify-content-between">
						<div class="row" style="text-align: center; width: 300px;">
							<div class="logo">
								<a href="memberList">
									<span style="font-size: 30px;">
										<i class="fa-solid fa-book-open"></i>&nbsp E-Word
									</span>
									<br>
									<span style="font-size: 19px;">Administrator</span>
								</a>
							</div>
						</div>
						<div class="toggler">
							<a href="#" class="sidebar-hide d-xl-none d-block">
								<i class="bi bi-x bi-middle"></i>
							</a>
						</div>
					</div>
				</div>
				<div class="sidebar-menu">
					<ul class="menu">
						<li class="sidebar-title">Menu</li>

						<li class="sidebar-item active "><a href="memberList" class='sidebar-link'>
								<i class="bi bi-person-badge-fill"></i>
								<span>MemberList</span>
							</a></li>

						<li class="sidebar-item"><a href="../codeGroup/codeGroupList" class='sidebar-link'>
								<i class="bi bi-grid-fill"></i>
								<span>CodeGroup</span>
							</a></li>

						<li class="sidebar-item "><a href="../code/codeList" class='sidebar-link'>
								<i class="bi bi-grid-fill"></i>
								<span>Code</span>
							</a></li>

						<li class="sidebar-item"><a href="../word/wordList" class='sidebar-link'>
								<i class="fa fa-book"></i>
								<span>Word</span>
							</a></li>

						<li class="sidebar-item"><a href="../test/testList" class='sidebar-link'>
								<i class="fa fa-chalkboard"></i>
								<span>Test</span>
							</a></li>

						<li class="sidebar-item"><a href="/home/home" class='sidebar-link'>
								<i class="fa-solid fa-house-chimney-user"></i>
								<span>User Home</span>
							</a></li>
					</ul>
				</div>
				<button class="sidebar-toggler btn x">
					<i data-feather="x"></i>
				</button>
			</div>
		</div>

		<!-- =========================================================================================== -->

		<div id="main">
			<header class="mb-3">
				<a href="#" class="burger-btn d-block d-xl-none">
					<i class="bi bi-justify fs-3"></i>
				</a>
			</header>

			<div class="page-heading">
				<h3>Profile</h3>
				ifmmSeq =
				<c:out value="${vo.ifmmSeq }" />
				<br> shUseNy =
				<c:out value="${vo.shUseNy }" />
				<br> shOptionDate =
				<c:out value="${vo.shOptionDate }" />
				<br> shOption =
				<c:out value="${vo.shOption }" />
				<br> shValue =
				<c:out value="${vo.shValue }" />
				<br>
			</div>
			<div class="page-content">
				<section class="row">
					<div class="col-12">
						<div class="row">
							<section class="section">
								<div class="card">

									<div class="card-body">

										<form id="form" name="form" method="post" enctype="multipart/form-data">
											<!-- *Vo.jsp s -->
											<%@include file="memberVo.jsp"%>
											<!-- #-> -->
											<!-- *Vo.jsp e -->
											<%-- 
											<input type="hidden" name="ifmmSeq" value="<c:out value="${vo.ifmmSeq }"/>" />
											 --%>
											<div class="row mb-3">
												<label for="about" class="col-md-4 col-lg-3 col-form-label">Profile</label>
												<div class="col-md-8 col-lg-9 text-center">
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
													<label for="ifmmUploadedProfileImage">
														<span id="btn-upload" style="text-align: center; margin: auto;">UPLOAD</span>
													</label>
													<input class="form-control form-control-sm" id="ifmmUploadedProfileImage" name="ifmmUploadedProfileImage" type="file" multiple="multiple" style="display: none;" onChange="upload('ifmmUploadedProfileImage', 0, 1, 1, 0, 0, 3);">
												</div>
											</div>

											<div class="row mb-3">
												<label for="ifmmId" class="col-md-4 col-lg-3 col-form-label">Id</label>
												<input type="hidden" id="ifmmIdAllowedNy" name="ifmmIdAllowedNy" value="0">
												<div class="col-md-8 col-lg-9">
													<input type="text" class="form-control" id="ifmmId" name="ifmmId" value="<c:out value="${item.ifmmId}"/>" maxlength="20" placeholder="영대소문자,숫자,특수문자(-_.),4~20자리" <c:if test="${not empty item.ifmmId }"> readonly</c:if>>
													<div class="invalid-feedback" id="ifmmIdFeedback"></div>

													<c:if test="${item.ifmmSeq eq 0 || item.ifmmSeq eq null }">
														<input type="button" id="idcheck" value="아이디 중복확인" style="margin-top: 10px;">
													</c:if>

												</div>
											</div>

											<c:if test="${item.ifmmSeq eq 0 || item.ifmmSeq eq null }">
												<div class="row mb-3">
													<label for="Name" class="col-md-4 col-lg-3 col-form-label">Password</label>
													<div class="col-md-8 col-lg-9">
														<input type="hidden" id="ifmmPasswordAllowedNy" name="ifmmPasswordAllowedNy" value="0">
														<input type="password" class="form-control" id="ifmmPassword" name="ifmmPassword" value="<c:out value="${item.ifmmPassword }"/>">
														<div class="invalid-feedback" id="ifmmPasswordFeedback"></div>
													</div>
												</div>
											</c:if>

											<div class="row mb-3">
												<label for="Name" class="col-md-4 col-lg-3 col-form-label">Name</label>
												<div class="col-md-8 col-lg-9">
													<input type="text" class="form-control" id="ifmmName" name="ifmmName" value="<c:out value="${item.ifmmName }"/>">
												</div>
											</div>



											<div class="row mb-3">
												<label for="Gender" class="col-md-4 col-lg-3 col-form-label">Gender</label>
												<div class="col-md-8 col-lg-9">
													<select class="form-select" id="ifmmGender" name="ifmmGender">
														<option value="1" <c:if test="${item.ifmmGender eq 1 }">selected</c:if>>Male</option>
														<option value="2" <c:if test="${item.ifmmGender eq 2 }">selected</c:if>>Female</option>
														<option value="3" <c:if test="${item.ifmmGender eq 3 }">selected</c:if>>etc..</option>
													</select>
												</div>
											</div>

											<div class="row mb-3">
												<label for="date" class="col-md-4 col-lg-3 col-form-label">Date Of Birth</label>
												<div class="col-md-8 col-lg-9">
													<input type="text" class="form-control" id="ifmmDob" name="ifmmDob" value="${item.ifmmDob }">
												</div>
											</div>

											<div class="row mb-3">
												<label for="Country" class="col-md-4 col-lg-3 col-form-label">Email</label>
												<div class="col-md-8 col-lg-9">
													<div class="input-group">
														<input type="text" id="Email" name="Email" class="form-control" placeholder="User email" value="${fn:split(item.ifmmEmail,'@')[0]}">
														<span class="input-group-text">@</span>
														<input type="text" id="Domain" name="Domain" class="form-control" placeholder="Domain" value="${fn:split(item.ifmmEmail,'@')[1]}">
														<select class="form-select" name="ifmmEmailDomain" id="ifmmEmailDomain">
															<option value="8" <c:if test="${item.ifmmEmailDomain eq 8 }">selected</c:if>>naver.com</option>
															<option value="9" <c:if test="${item.ifmmEmailDomain eq 9 }">selected</c:if>>google.com</option>
															<option value="10" <c:if test="${item.ifmmEmailDomain eq 10 }">selected</c:if>>hanmail.net</option>
															<option value="11" <c:if test="${item.ifmmEmailDomain eq 11 }">selected</c:if>>직접입력</option>
														</select>

													</div>
													<input type="hidden" class="form-control" id="ifmmEmail" name="ifmmEmail" value="<c:out value="${item.ifmmEmail }"/>">
													<div class="input-group">
														<input class="form-text" type="hidden" name="ifmmMailNy" value="0" >
														<input class="form-text" type="checkbox" name="ifmmMailNy" value="1" <c:if test="${item.ifmmMailNy eq 1 }"> checked </c:if>>
														<label class="form-text" style="margin: auto; margin-left: 0;"> E-mail을 통한 소식/정보 수신을 동의하시겠습니까? </label>
													</div>
												</div>
											</div>

											<div class="row mb-3">
												<label for="Address" class="col-md-4 col-lg-3 col-form-label">Phone</label>
												<div class="col-md-8 col-lg-9">
													<div class="input-group">
														<select class="form-select" id="ifmmPhoneCarrier" name="ifmmPhoneCarrier">
															<option value="4" <c:if test="${item.ifmmPhoneCarrier eq 4 }">selected</c:if> >SKT</option>
															<option value="5" <c:if test="${item.ifmmPhoneCarrier eq 5 }">selected</c:if> >KT</option>
															<option value="6" <c:if test="${item.ifmmPhoneCarrier eq 6 }">selected</c:if> >LG</option>
														</select>
														<select class="form-select" id="inputPhone1" value="${fn:substring(list.ifmmPhone,0,3)}" required>
															<option value="010" <c:if test="${fn:substring(item.ifmmPhone,0,3) eq 010 }">selected</c:if> >010</option>
															<option value="011" <c:if test="${fn:substring(item.ifmmPhone,0,3) eq 011 }">selected</c:if> >011</option>
															<option value="019" <c:if test="${fn:substring(item.ifmmPhone,0,3) eq 019 }">selected</c:if> >019</option>
														</select>
														<span class="input-group-text">-</span>
														<input type="text" id="inputPhone2" class="form-control" maxlength='4' onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" value="${fn:substring(item.ifmmPhone,3,7)}">
														<span class="input-group-text">-</span>
														<input type="text" id="inputPhone3" class="form-control" maxlength='4' onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" value="${fn:substring(item.ifmmPhone,7,11)}">
													</div>
													<input type="hidden" id="ifmmPhone" name="ifmmPhone" class="form-control" value="<c:out value="${list.ifmmPhone }"/>">
													<div class="input-group">
														<input class="form-text" type="hidden" name="ifmmSmsNy" value="0" >
														<input class="form-text" type="checkbox" name="ifmmSmsNy" value="1" <c:if test="${list.ifmmSmsNy eq 1 }"> checked </c:if>>
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
																<input type="text" id="ifmmPostNum" name="ifmmPostNum" value="<c:out value="${item.ifmmPostNum }"/>" class="form-control" placeholder="우편번호" aria-label="Recipient's username" aria-describedby="button-addon2" required>
																<button class="btn btn-outline-secondary" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
																	<i class="fa-solid fa-magnifying-glass"></i>
																</button>
																<button class="btn btn-outline-secondary" type="button" id="btnAddressClear" value="리셋하기">
																	<i class="fa-solid fa-xmark"></i>
																</button>
															</div>
														</div>
														<div class="input-group" style="padding-top: 5px;">
															<input type="text" class="form-control" id="ifmmResidence" name="ifmmResidence" value="<c:out value="${item.ifmmResidence }"/>" placeholder="주소" aria-label="Recipient's username" aria-describedby="button-addon2" required>
														</div>
														<div class="input-group" style="padding-top: 5px;">
															<input type="text" class="form-control" id="ifmmDetailedAddress" name="ifmmDetailedAddress" value="<c:out value="${item.ifmmDetailedAddress }"/>" placeholder="상세주소" aria-label="Recipient's username" aria-describedby="button-addon2" required>
															<input type="text" class="form-control" id="ifmmReference" name="ifmmReference" value="<c:out value="${item.ifmmReference }"/>" placeholder="참고항목" aria-label="Recipient's username" aria-describedby="button-addon2" required>
														</div>
														<input type="hidden" class="form-control" id="ifmmAddress" name="ifmmAddress" value="<c:out value="${item.ifmmAddress }"/>">
														<input type="hidden" class="form-control" id="ifmaLatArray0" name="ifmaLatArray0" value="<c:out value="${item.ifmaLatArray0 }"/>">
														<input type="hidden" class="form-control" id="ifmaLngArray0" name="ifmaLngArray0" value="<c:out value="${item.ifmaLngArray0 }"/>">
													</div>
													<p id="result"></p>
													<div id="map" style="width: 500px; height: 400px;"></div>
												</div>

											</div>
											<div class="row" id="InputPadding">
												<div class="col-6" style="text-align: left;">
													<button type="button" class="btn btn-secondary" id="btnList">
														<i class="fa-solid fa-bars"></i>
													</button>

												</div>
												<div class="col-6" style="text-align: right;">
													<button type="button" id="btnDelete" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#exampleModal">
														<i class="fa-solid fa-xmark"></i>
													</button>
													<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
														<div class="modal-dialog">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title"></h5>
																	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
																</div>
																<div class="modal-body" style="text-align: left;"></div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-danger" id="btnModalUelete">삭제하기</button>
																	<button type="button" class="btn btn-warning" id="btnModalDelete">삭제하기</button>
																	<button type="button" class="btn btn-primary" id="">취소하기</button>
																</div>
															</div>
														</div>
													</div>
													<button type="button" id="btnUelete" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
														<i class="fa-solid fa-trash-can"></i>
													</button>
													<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
														<div class="modal-dialog">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title"></h5>
																	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
																</div>
																<div class="modal-body" style="text-align: left;"></div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-danger" id="btnModalUelete">삭제하기</button>
																	<button type="button" class="btn btn-warning" id="btnModalDelete">삭제하기</button>
																	<button type="button" class="btn btn-primary" id="">취소하기</button>
																</div>
															</div>
														</div>
													</div>

													<button type="button" id="btnSave" class="btn btn-success">
														<i class="fa-solid fa-bookmark"></i>
													</button>
												</div>
											</div>



										</form>

										<form name="formVo" id="formVo" method="post">
											<!-- *Vo.jsp s -->
											<%@include file="memberVo.jsp"%>
											<!-- #-> -->
											<!-- *Vo.jsp e -->
										</form>
									</div>
								</div>

							</section>
						</div>

					</div>

				</section>
			</div>

			<footer>
				<div class="footer clearfix mb-0 text-muted">
					<div class="float-start">
						<p>2021 &copy; Mazer</p>
					</div>
					<div class="float-end">
						<p>
							Crafted with
							<span class="text-danger">
								<i class="bi bi-heart"></i>
							</span>
							by
							<a href="http://ahmadsaugi.com">A. Saugi</a>
						</p>
					</div>
				</div>
			</footer>
		</div>
	</div>


	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

	<script src="https://kit.fontawesome.com/20c294a34b.js" crossorigin="anonymous"></script>
	<script src="../resources/assets/js/main.js"></script>

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b47c27c3c9651fa1057b04c48b7117fe&libraries=services"></script>

	<script type="text/javascript">
	$("#idcheck").on("click", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/checkId"
			/* ,data : $("#formLogin").serialize() */
			,data : { "ifmmId" : $("#ifmmId").val() }
			
			,success: function(response) {
				if(response.rt == "success") {
					document.getElementById("ifmmId").classList.add('is-valid');
					document.getElementById("ifmmId").classList.remove('is-invalid');
					document.getElementById("ifmmIdFeedback").classList.remove('invalid-feedback');
					document.getElementById("ifmmIdFeedback").classList.add('valid-feedback');
					document.getElementById("ifmmIdFeedback").innerText = "사용 가능 합니다.";
					
					document.getElementById("ifmmIdAllowedNy").value = 1;
					
				} else {
					document.getElementById("ifmmId").classList.add('is-invalid');
					
					document.getElementById("ifmmIdFeedback").classList.remove('valid-feedback');
					document.getElementById("ifmmIdFeedback").classList.add('invalid-feedback');
					document.getElementById("ifmmIdFeedback").innerText = "사용 불가능 합니다";
					
					document.getElementById("ifmmIdAllowedNy").value = 0;
					
				}
			}
			
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
			
		});
	});
	</script>

	<script type="text/javascript">
	//파일 체크하는 버튼
	/* 
	validationInst = function() {
		var obj = document.getElementById("img").files;
		var obj1 = document.getElementById("img1").files;
		var a = 0;
		for(var i=0; i<obj.length; i++) {
			a += obj[i].size;
		}
		
		// ext
		alert(obj);
		
		
		// 갯수
		alert(obj.length);
		
		// 용량 개별
		for(var i=0; i<obj.length; i++) {
			alert(obj[i].name + " : " + obj[i].size);
		}
		
		// 용량 전체
		if(a > (20*1024) ){
			alert("파일 용량 10MB를 초과하였습니다.");
			return false;
		} else {
			alert("obj 전체 사이즈 값 :" + a);
		}
		
		/* 
		for(var i=0; i<obj.length; i++) {
			alert(obj[i].name + " : " + obj[i].size);
		}
		alert(obj1);
		alert(obj1.length);
		
		for(var i=0; i<obj1.length; i++) {
			alert(obj1[i].name + " : " + obj1[i].size);
		}
		 */
		
	
	</script>

	<script>
	//파일 미리보기
	function handleFileSelect(event) {
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
	} );
	</script>

	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div
		mapOption = {
			center : new kakao.maps.LatLng(33.4502228270572, 126.570142146152), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		
		// 지도가 이동, 확대, 축소로 인해 중심좌표가 변경되면 마지막 파라미터로 넘어온 함수를 호출하도록 이벤트를 등록합니다
		/* 
		kakao.maps.event.addListener(map, 'center_changed', function() {
			// 지도의  레벨을 얻어옵니다
			var level = map.getLevel();
			// 지도의 중심좌표를 얻어옵니다 
			var latlng = map.getCenter();
			var message = '<p>지도 레벨은 ' + level + ' 이고</p>';
			message += '<p>중심 좌표는 위도 ' + latlng.getLat() + ', 경도 '
					+ latlng.getLng() + '입니다</p>';
			var resultDiv = document.getElementById('result');
			resultDiv.innerHTML = message;
		});
		 */
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
							/* lat and lng from address s */
							// 주소-좌표 변환 객체를 생성
							var geocoder = new daum.maps.services.Geocoder();
							console.log(geocoder);
							var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

							// 주소로 좌표를 검색
							geocoder.addressSearch(addr,function(result, status) {
												// 정상적으로 검색이 완료됐으면,
												if (status == daum.maps.services.Status.OK) {
													document.getElementById("ifmaLatArray0").value = result[0].y;
													document.getElementById("ifmaLngArray0").value = result[0].x;
													console.log(result[0].y)
													console.log(result[0].x)
													const coords = new kakao.maps.LatLng(result[0].y, result[0].x);
													// 결과값으로 받은 위치를 마커로 표시합니다
													const marker = new kakao.maps.Marker({
									                  map: map,
									                  position: coords
									              	});

										              // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
										              map.setCenter(coords);
												}
											});
							/* lat and lng from address e */
							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("ifmmDetailedAddress")
									.focus();
						}
					}).open();
		}
	</script>

	<script type="text/javascript">
		var goUrlList = "/member/memberList"; /* #-> */
		var goUrlInst = "/member/memberInst"; /* #-> */
		var goUrlUpdt = "/member/memberUpdt"; /* #-> */
		var goUrlUele = "/member/memberUele"; /* #-> */
		var goUrlDele = "/member/memberDele"; /* #-> */
		var mainKey = $("input:hidden[name=mainKey]");
		var seq = $("input:hidden[name=ifmmSeq]"); /* #-> */
		var form = $("form[name = form]");
		var formVo = $("form[name=formVo]");
		$("#btnSave").on("click", function() {
			if (seq.val() == "0" || seq.val() == "") {
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
		$("#btnList").on("click", function() {
			formVo.attr("action", goUrlList).submit();
		});
		$("#btnDelete").on("click", function() {
			$("input:hidden[name=exDeleteType]").val(2);
			$(".modal-title").text("확 인");
			$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
			$("#btnModalUelete").hide();
			$("#btnModalDelete").show();
		});
		$("#btnUelete").on("click", function() {
			$("input:hidden[name=exDeleteType]").val(1);
			$(".modal-title").text("확 인");
			$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
			$("#btnModalUelete").show();
			$("#btnModalDelete").hide();
		});
		$("#btnModalDelete").on("click", function() {
			form.attr("action", goUrlDele).submit();
		});
		$("#btnModalUelete").on("click", function() {
			form.attr("action", goUrlUele).submit();
		});
		$("#btnAddressClear").on("click", function() {
			$("#sample6_postcode").val('');
			$("#sample6_address").val('');
			$("#sample6_detailAddress").val('');
			$("#sample6_extraAddress").val('');
			$("#ifmaLatArray0").val('');
			$("#ifmaLngArray0").val('');
		});
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
	
	
	addUploadLi = function (seq, index, name){
		
		var ul_list = $("#ulFile0");
		
		li = '<li id="li_'+seq+'_'+index+'" class="list-group-item d-flex justify-content-between align-items-center">';
		li = li + name;
		li = li + '<span class="badge bg-danger rounded-pill" onClick="delLi('+ seq +','+ index +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
		li = li + '</li>';
		
		$("#ulFile"+seq).append(li);
	}
	
	
	delLi = function(seq, index) {
		$("#li_"+seq+"_"+index).remove();
	}
	</script>
	<script type="text/javascript">
// 패스워드 확인
	$("#ifmmPassword").on("focusout", function(){
		var pw = $("#ifmmPassword").val();
		var num = pw.search(/[0-9]/g);
		var eng = pw.search(/[a-z]/ig);
		var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
		
		if(pw.length < 10 || pw.length > 20){
			document.getElementById("ifmmPassword").classList.add('is-invalid');
			document.getElementById("ifmmPasswordFeedback").classList.remove('valid-feedback');
			document.getElementById("ifmmPasswordFeedback").classList.add('invalid-feedback');
			document.getElementById("ifmmPasswordFeedback").innerText = "10자리 ~ 20자리 이내로 입력해주세요.";
			document.getElementById("ifmmPasswordAllowedNy").value = 0;
			return false;
		}else if(pw.search(/\s/) != -1){
			document.getElementById("ifmmPassword").classList.add('is-invalid');
			document.getElementById("ifmmPasswordFeedback").classList.remove('valid-feedback');
			document.getElementById("ifmmPasswordFeedback").classList.add('invalid-feedback');
			document.getElementById("ifmmPasswordFeedback").innerText = "비밀번호는 공백 없이 입력해주세요.";
			document.getElementById("ifmmPasswordAllowedNy").value = 0;
			return false;
		}else if( (num < 0 && eng < 0) || (eng < 0 && spe < 0) || (spe < 0 && num < 0) ){
			document.getElementById("ifmmPassword").classList.add('is-invalid');
			document.getElementById("ifmmPasswordFeedback").classList.remove('valid-feedback');
			document.getElementById("ifmmPasswordFeedback").classList.add('invalid-feedback');
			document.getElementById("ifmmPasswordFeedback").innerText = "영문,숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.";
			document.getElementById("ifmmPasswordAllowedNy").value = 0;
			return false;
		}else {
			document.getElementById("ifmmPassword").classList.add('is-valid');
			document.getElementById("ifmmPassword").classList.remove('is-invalid');
			document.getElementById("ifmmPasswordFeedback").classList.remove('invalid-feedback');
			document.getElementById("ifmmPasswordFeedback").classList.add('valid-feedback');
			document.getElementById("ifmmPasswordFeedback").innerText = "사용 가능 합니다.";
			document.getElementById("ifmmPasswordAllowedNy").value = 1;
		}
	});
	$("#ifmmPasswordChk").on("focusout", function(){
		if($('#ifmmPassword').val() != $('#ifmmPasswordChk').val()){
			document.getElementById("ifmmPasswordChk").classList.add('is-invalid');
			document.getElementById("ifmmPasswordChkFeedback").classList.remove('valid-feedback');
			document.getElementById("ifmmPasswordChkFeedback").classList.add('invalid-feedback');
			document.getElementById("ifmmPasswordChkFeedback").innerText = "비밀번호가 일치하지 않습니다.";
			document.getElementById("ifmmPasswordChkAllowedNy").value = 0;
        } else{
        	document.getElementById("ifmmPasswordChk").classList.add('is-valid');
			document.getElementById("ifmmPasswordChk").classList.remove('is-invalid');
			document.getElementById("ifmmPasswordChkFeedback").classList.remove('invalid-feedback');
			document.getElementById("ifmmPasswordChkFeedback").classList.add('valid-feedback');
			document.getElementById("ifmmPasswordChkFeedback").innerText = "비밀번호가 일치합니다.";
			document.getElementById("ifmmPasswordChkAllowedNy").value = 1;
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

</body>

</html>