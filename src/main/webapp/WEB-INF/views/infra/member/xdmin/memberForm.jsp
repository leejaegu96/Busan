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
</head>

<body>
	<div id="app">
		<div id="sidebar" class="active">
			<div class="sidebar-wrapper active">
				<div class="sidebar-header">
					<div class="d-flex justify-content-between">
						<div class="row" style="text-align: center; width: 300px;">
							<div class="logo">
								<a href="MemberListForm.html"><span style="font-size: 30px;"><i class="fa-solid fa-book-open"></i>&nbsp E-Word</span><br> <span style="font-size: 19px;">Administrator</span></a>
							</div>
						</div>
						<div class="toggler">
							<a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
						</div>
					</div>
				</div>
				<div class="sidebar-menu">
					<ul class="menu">
						<li class="sidebar-title">Menu</li>

						<li class="sidebar-item active "><a href="memberList" class='sidebar-link'> <i class="bi bi-person-badge-fill"></i> <span>MemberList</span>
						</a></li>

						<li class="sidebar-item"><a href="../codeGroup/codeGroupList" class='sidebar-link'> <i class="bi bi-grid-fill"></i> <span>CodeGroup</span>
						</a></li>

						<li class="sidebar-item "><a href="../code/codeList" class='sidebar-link'> <i class="bi bi-grid-fill"></i> <span>Code</span>
						</a></li>

						<li class="sidebar-item"><a href="" class='sidebar-link'> <i class="fa fa-book"></i> <span>Word</span>
						</a></li>

						<li class="sidebar-item"><a href="" class='sidebar-link'> <i class="fa fa-chalkboard"></i> <span>Test</span>
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
				<a href="#" class="burger-btn d-block d-xl-none"> <i class="bi bi-justify fs-3"></i>
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

										<form id="form" name="form" method="post">
											<!-- *Vo.jsp s -->
											<%@include file="memberVo.jsp"%>
											<!-- #-> -->
											<!-- *Vo.jsp e -->
											<%-- 
											<input type="hidden" name="ifmmSeq" value="<c:out value="${vo.ifmmSeq }"/>" />
											 --%>
											<div class="row mb-3">
												<label for="profileImage" class="col-md-4 col-lg-3 col-form-label">Profile Image</label>
												<div class="col-md-8 col-lg-9">
													<div class="row" style="padding: 5px;">
														<div class="col-9">
															<input type="file" class="form-control" id="upload_file" accept="image/*" required=true>
														</div>
														<div class="d-gird col-3 ">
															<button type="button" class="btn btn-primary " data-bs-toggle="modal" data-bs-target="#exampleModal">미리보기</button>
														</div>
													</div>

												</div>
											</div>

											<div class="row mb-3">
												<label for="about" class="col-md-4 col-lg-3 col-form-label">About</label>
												<div class="col-md-8 col-lg-9">
													<textarea name="about" class="form-control" id="about" style="height: 100px"></textarea>
												</div>
											</div>

											<div class="row mb-3">
												<label for="ifmmId" class="col-md-4 col-lg-3 col-form-label">Id</label> 
												<input type="hidden" id="ifmmIdAllowedNy" name="ifmmIdAllowedNy" value="0">
												<div class="col-md-8 col-lg-9">
													<input type="text" class="form-control" id="ifmmId" name="ifmmId" value="<c:out value="${item.ifmmId}"/>" maxlength="20" placeholder="영대소문자,숫자,특수문자(-_.),4~20자리" <c:if test="${not empty item.ifmmId }"> readonly</c:if>>
													<div class="invalid-feedback" id="ifmmIdFeedback"></div>
													
									                <c:if test="${item.ifmmSeq eq 0 || item.ifmmSeq eq null }">
												    	<input type="button" id= "idcheck" value="아이디 중복확인" style="margin-top: 10px;">
												    </c:if>
											    	
												</div>
											</div>

											<div class="row mb-3">
												<label for="Name" class="col-md-4 col-lg-3 col-form-label">Name</label>
												<div class="col-md-8 col-lg-9">
													<input type="text" class="form-control" id="ifmmName" name="ifmmName" value="<c:out value="${item.ifmmName }"/>">
												</div>
											</div>

											<div class="row mb-3">
												<label for="Gender" class="col-md-4 col-lg-3 col-form-label">Gender</label>
												<div class="col-md-8 col-lg-9">
													<select class="form-select" id="basicSelect">
														<option>Male</option>
														<option>Female</option>
														<option>etc..</option>
													</select>
												</div>
											</div>

											<div class="row mb-3">
												<label for="date" class="col-md-4 col-lg-3 col-form-label">Date Of Birth</label>
												<div class="col-md-8 col-lg-9">
													<input type="date" class="form-control" id="date" value="">
												</div>
											</div>

											<div class="row mb-3">
												<label for="Country" class="col-md-4 col-lg-3 col-form-label">Email</label>
												<div class="col-md-8 col-lg-9">
													<div class="input-group">
														<input type="text" id="inputEmail" class="form-control" value="" aria-label="Username" required=""> <span class="input-group-text">@</span> <select class="form-select" id="validationCustom04">
															<option selected="" value="">naver.com</option>
															<option>google.com</option>
															<option>hanmail.net</option>
														</select>
													</div>
												</div>
											</div>

											<div class="row mb-3">
												<label for="Address" class="col-md-4 col-lg-3 col-form-label">Phone</label>
												<div class="col-md-8 col-lg-9">
													<div class="input-group">
														<select class="form-select" name="category" id="category">
															<option selected value="">SKT</option>
															<option><span>KT</span>
															</option>
															<option><span>LG</span>
															</option>
														</select> <select class="form-select" name="category" id="category">
															<option selected value="">010</option>
															<option><span>011</span>
															</option>
															<option><span>019</span>
															</option>
														</select> <span class="input-group-text">-</span> <input type="text" id="inputPhone" class="form-control" value="" required> <span class="input-group-text">-</span> <input type="text" id="inputPhone" class="form-control" value="" required>
													</div>
												</div>
											</div>

											<div class="row mb-3">
												<label for="Address" class="col-md-4 col-lg-3 col-form-label">Address</label>
												<div class="col-md-8 col-lg-9">
													<div class="input-group">
														<div class="col-6">
															<div class="input-group">
																<input type="text" id="sample6_postcode" class="form-control" placeholder="우편번호" disabled>
																<button class="btn btn-outline-secondary" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
																	<i class="fa-solid fa-magnifying-glass"></i>
																</button>
																<button class="btn btn-outline-secondary" type="button" id="btnAddressClear" value="리셋하기">
																	<i class="fa-solid fa-xmark"></i>
																</button>
															</div>
														</div>
														<div class="input-group" style="padding-top: 5px;">
															<input type="text" class="form-control" id="sample6_address" placeholder="주소" disabled>
														</div>
														<div class="input-group" style="padding-top: 5px;">
															<input type="text" class="form-control" id="sample6_detailAddress" placeholder="상세주소" required> <input type="text" class="form-control" id="sample6_extraAddress" placeholder="참고항목" disabled>
														</div>
														<div class="input-group" style="padding-top: 5px; padding-bottom: 5px;">
															<input type="text" class="form-control" id="ifmaLatArray0" placeholder="위도" disabled> <input type="text" class="form-control" id="ifmaLngArray0" placeholder="경도" disabled>
														</div>
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
							Crafted with <span class="text-danger"><i class="bi bi-heart"></i></span> by <a href="http://ahmadsaugi.com">A. Saugi</a>
						</p>
					</div>
				</div>
			</footer>
		</div>
	</div>


	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
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

	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 지도가 이동, 확대, 축소로 인해 중심좌표가 변경되면 마지막 파라미터로 넘어온 함수를 호출하도록 이벤트를 등록합니다
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
								document.getElementById("sample6_extraAddress").value = extraAddr;

							} else {
								document.getElementById("sample6_extraAddress").value = '';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('sample6_postcode').value = data.zonecode;
							document.getElementById("sample6_address").value = addr;

							/* lat and lng from address s */

							// 주소-좌표 변환 객체를 생성
							var geocoder = new daum.maps.services.Geocoder();

							// 주소로 좌표를 검색
							geocoder
									.addressSearch(
											addr,
											function(result, status) {

												// 정상적으로 검색이 완료됐으면,
												if (status == daum.maps.services.Status.OK) {

													document
															.getElementById("ifmaLatArray0").value = result[0].y;
													document
															.getElementById("ifmaLngArray0").value = result[0].x;
												}
											});
							/* lat and lng from address e */

							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("sample6_detailAddress")
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



</body>

</html>