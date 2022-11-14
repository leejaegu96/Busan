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
            maxDate : new Date('2022-07-28'),
            // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
            onClose : function(selectedDate) {
            }

        });
    });
</script>

<style type="text/css">
#InputPadding {
	padding-top: 20px;
	margin-left: 30px;
	margin-right: 30px;
}

ul li {
	list-style-type: none;
	margin: 0px 10px;
}
</style>

</head>

<body>
	<div id="app">
		<div id="sidebar" class="active">
			<div class="sidebar-wrapper active">
				<div class="sidebar-header">
					<div class="d-flex justify-content-between">
						<div class="row" style="text-align: center; width: 300px;">
							<div class="logo">
								<a href="../member/memberList">
									<span style="font-size: 30px;"> <i class="fa-solid fa-book-open"></i>&nbsp E-Word
									</span> <br> <span style="font-size: 19px;">Administrator</span>
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

						<li class="sidebar-item  "><a href="../member/memberList" class='sidebar-link'>
								<i class="bi bi-person-badge-fill"></i> <span>MemberList</span>
							</a></li>

						<li class="sidebar-item"><a href="../codeGroup/codeGroupList" class='sidebar-link'>
								<i class="bi bi-grid-fill"></i> <span>CodeGroup</span>
							</a></li>

						<li class="sidebar-item "><a href="../code/codeList" class='sidebar-link'>
								<i class="bi bi-grid-fill"></i> <span>Code</span>
							</a></li>

						<li class="sidebar-item active"><a href="../word/wordList" class='sidebar-link'>
								<i class="fa fa-book"></i> <span>Word</span>
							</a></li>

						<li class="sidebar-item"><a href="../test/testList" class='sidebar-link'>
								<i class="fa fa-chalkboard"></i> <span>Test</span>
							</a></li>
						<li class="sidebar-item"><a href="/home/home" class='sidebar-link'>
								<i class="fa-solid fa-house-chimney-user"></i> <span>User Home</span>
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
				<h3>WordForm</h3>
				sdwSeq =
				<c:out value="${vo.sdwSeq }" />
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
											<%@include file="wordVo.jsp"%>
											<!-- #-> -->
											<!-- *Vo.jsp e -->
											<%-- 
		                            	<input type="hidden" name="ifcdSeq" value="<c:out value="${vo.ifcdSeq }"/>" />
		                            	 --%>
											<div class="container-fluid" style="padding-top: 30px;">
												<div class="row">
													<div class="col">
														<span style="font-size: 25px;">Word</span>
													</div>
												</div>
											</div>
											<div class="container-fluid">
												<div class="row" id="InputPadding">
													<div class="col-6">
														<label class="form-label">단어</label>
														<div class="row">
															<div class="col-3">
																<select id="inputState" name="sdwNum" value="<c:out value="${item.sdwNum }"/>" class="form-select">
																	<option selected disabled>#</option>
																	<option value="1" <c:if test="${item.sdwNum eq 1 }">selected</c:if>>1</option>
																	<option value="2" <c:if test="${item.sdwNum eq 2 }">selected</c:if>>2</option>
																	<option value="3" <c:if test="${item.sdwNum eq 3 }">selected</c:if>>3</option>
																	<option value="4" <c:if test="${item.sdwNum eq 4 }">selected</c:if>>4</option>
																	<option value="5" <c:if test="${item.sdwNum eq 5 }">selected</c:if>>5</option>
																</select>
															</div>
															<div class="col-9">
																<input type="text" class="form-control" id="disabledInput" value="<c:out value="${item.sdwWord }"/>">
															</div>
														</div>
													</div>
													<div class="col-6">
														<label class="form-label">날짜</label>
														<input type="text" class="form-control" id="datepicker" value="<c:out value="${item.sddDateChoice }"/>">
													</div>
												</div>
												<c:choose>
													<c:when test="${vo.sdwSeq eq 0 }">
														<div id="workPoint">
															<div class="row" id="InputPadding">
																<div class="col-6">
																	<label class="form-label">정의</label>
																	<div class="form-check form-switch">
																		<input class="form-check-input" type="checkbox" role="switch" name="sdweDefaultNy" id="sdweDefaultNy" value="1" checked>
																		<label class="form-check-label">Default value</label>
																	</div>
																	<div class="row">
																		<div class="col-2" style="padding-right: 0;">
																			<select id="sdwmNum" name="sdwmNum" class="form-select">
																				<option selected disabled>#</option>
																				<option value="1">1</option>
																				<option value="2">2</option>
																				<option value="3">3</option>
																			</select>
																		</div>
																		<div class="col-3" style="padding-right: 0;">
																			<select id="sdwmPartOfSpeech" name="sdwmPartOfSpeech" class="form-select">
																				<option selected disabled>형태소</option>
																				<option value="형용사">형용사</option>
																				<option value="명사">명사</option>
																				<option value="동사">동사</option>
																			</select>
																		</div>
																		<div class="col-7">
																			<input type="text" class="form-control" name="sdwmContents" >
																		</div>
																	</div>
																</div>
																<div class="col-6">
																	<label class="form-label">예시</label>
																	<div class="row">
																		<div class="col-10">
																			<div class="input-group mb-3">
																				<span class="input-group-text" id="basic-addon1">영문</span>
																				<input type="text" class="form-control" name="sdweContents" >
																			</div>
																			<div class="input-group mb-3">
																				<span class="input-group-text" id="basic-addon1">해석</span>
																				<input type="text" class="form-control" name="sdweTranslate" >
																			</div>
																		</div>
																		<div class="col-2">
																			<button type="button" class="regFrombutton1" onclick="addWork()">
																				<i class="fa-solid fa-plus"></i>
																			</button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</c:when>
													<c:otherwise>
														<c:forEach items="${list}" var="list" varStatus="status">
															<c:choose>
																<c:when test="${list.sdwmNum eq 1 }">
																	<div id="workPoint">
																</c:when>
																<c:otherwise>
																	<div id="careerDelete">
																</c:otherwise>
															</c:choose>
															<div class="row" id="InputPadding">
																<div class="col-6">
																	<label class="form-label">정의</label>
																	<c:choose>
																		<c:when test="${list.sdwmNum eq 1 }">
																			<div class="form-check form-switch">
																				<input class="form-check-input" type="checkbox" role="switch" name="sdweDefaultNy" id="sdweDefaultNy" value="1" checked>
																				<label class="form-check-label">Default value</label>
																			</div>
																		</c:when>
																		<c:otherwise>
																			<div class="form-check form-switch">
																				<input class="form-check-input" type="checkbox" role="switch" name="sdweDefaultNy" id="sdweDefaultNy" value="0">
																				<label class="form-check-label">Default value</label>
																			</div>
																		</c:otherwise>
																	</c:choose>

																	<div class="row">
																		<div class="col-2" style="padding-right: 0;">
																			<select id="sdwmNum" name="sdwmNum" value="<c:out value="${list.sdwmNum }"/>" class="form-select">
																				<option selected disabled>#</option>
																				<option value="1" <c:if test="${list.sdwmNum eq 1 }">selected</c:if>>1</option>
																				<option value="2" <c:if test="${list.sdwmNum eq 2 }">selected</c:if>>2</option>
																				<option value="3" <c:if test="${list.sdwmNum eq 3 }">selected</c:if>>3</option>
																			</select>
																		</div>
																		<div class="col-3" style="padding-right: 0;">
																			<select id="sdwmPartOfSpeech" name="sdwmPartOfSpeech" value="<c:out value="${list.sdwmPartOfSpeech }"/>" class="form-select">
																				<option selected disabled>형태소</option>
																				<option value="형용사">형용사</option>
																				<option value="명사">명사</option>
																				<option value="동사">동사</option>
																			</select>
																		</div>
																		<div class="col-7">
																			<input type="text" class="form-control" name="sdwmContents" value="<c:out value="${list.sdwmContents }"/>">
																		</div>
																	</div>
																</div>
																<div class="col-6">
																	<label class="form-label">예시</label>
																	<div class="row">
																		<div class="col-10">
																			<div class="input-group mb-3">
																				<span class="input-group-text" id="basic-addon1">영문</span>
																				<input type="text" class="form-control" name="sdweContents" value="<c:out value="${list.sdweContents }"/>">
																			</div>
																			<div class="input-group mb-3">
																				<span class="input-group-text" id="basic-addon1">해석</span>
																				<input type="text" class="form-control" name="sdweTranslate" value="<c:out value="${list.sdweTranslate }"/>">
																			</div>
																		</div>
																		<div class="col-2">
																			<c:choose>
																				<c:when test="${list.sdwmNum eq 1 }">
																					<button type="button" class="regFrombutton1" onclick="addWork()">
																						<i class="fa-solid fa-plus"></i>
																					</button>
																				</c:when>
																				<c:otherwise>
																					<button type="button" class="regFrombutton1" onclick="remove(careerDelete)">
																						<i class="fa-solid fa-minus"></i>
																					</button>
																				</c:otherwise>
																			</c:choose>
																		</div>
																	</div>
																</div>
															</div>
														</c:forEach>
													</c:otherwise>
												</c:choose>
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
									</div>


									</form>
									<form name="formVo" id="formVo" method="post">
										<!-- *Vo.jsp s -->
										<%@include file="wordVo.jsp"%>
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
					Crafted with <span class="text-danger"> <i class="bi bi-heart"></i>
					</span> by
					<a href="http://ahmadsaugi.com">A. Saugi</a>
				</p>
			</div>
		</div>
	</footer>
	</div>
	</div>
	<!-- 
	<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	 -->
	<!-- 
    <script src="../resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="../resources/assets/js/bootstrap.bundle.min.js"></script>
    <script src="../resources/assets/vendors/apexcharts/apexcharts.js"></script>
    <script src="../resources/assets/js/pages/dashboard.js"></script>
	 -->

	<script src="https://kit.fontawesome.com/20c294a34b.js" crossorigin="anonymous"></script>

	<script src="../resources/assets/js/main.js"></script>

	<script>
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
    </script>

	<script type="text/javascript">
        var goUrlList = "/word/wordList"; /* #-> */
        var goUrlInst = "/code/codeInst"; /* #-> */
        var goUrlUpdt = "/code/codeUpdt"; /* #-> */
        var goUrlUele = "/code/codeUele"; /* #-> */
        var goUrlDele = "/code/codeDele"; /* #-> */

        var mainKey = $("input:hidden[name=mainKey]");

        var seq = $("input:hidden[name=ifcdSeq]"); /* #-> */

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
    </script>
	<script>
        var count_career = 0;
        function addWork() {
            var listHTML = "";
            listHTML += '';
            listHTML += '<div id="careerDelete'+ count_career +'">';
            listHTML += '<div class="row" id="InputPadding">';
            listHTML += '<div class="col-6">';
            listHTML += '<label class="form-label">정의</label>';
            listHTML += '<div class="form-check form-switch">';
            listHTML += '<input class="form-check-input" type="checkbox" role="switch" name="sdweDefaultNy" id="sdweDefaultNy" value="0">';
            listHTML += '<label class="form-check-label">Default value</label>';
            listHTML += '</div>';
            listHTML += '<div class="row">';
            listHTML += '<div class="col-2" style="padding-right:0;">';
            listHTML += '<select id="inputState" name="sdwmNum" class="form-select">';
            listHTML += '<option selected disabled>#</option>';
            listHTML += '<option value="1">1</option>';
            listHTML += '<option value="2">2</option>';
            listHTML += '<option value="3">3</option>';
            listHTML += '</select>';
            listHTML += '</div>';
            listHTML += '<div class="col-3" style="padding-right:0;">';
            listHTML += '<select id="inputState" name="sdwmPartOfSpeech" class="form-select">';
            listHTML += '<option selected disabled>형태소</option>';
            listHTML += '<option value="형용사">형용사</option>';
            listHTML += '<option value="명사">명사</option>';
            listHTML += '<option value="동사">동사</option>';
            listHTML += '</select>';
            listHTML += '</div>';
            listHTML += '<div class="col-7">';
            listHTML += '<input type="text" class="form-control" name="sdwmContents">';
            listHTML += '</div>';
            listHTML += '</div>';
            listHTML += '</div>';
            listHTML += '<div class="col-6">';
            listHTML += '<label class="form-label">예시</label>';
            listHTML += '<div class="row">';
            listHTML += '<div class="col-10">';
            listHTML += '<div class="input-group mb-3">';
            listHTML += '<span class="input-group-text" id="basic-addon1">영문</span>';
            listHTML += '<input type="text" class="form-control" name="sdweContents" >';
            listHTML += '</div>';
            listHTML += '<div class="input-group mb-3">';
            listHTML += '<span class="input-group-text" id="basic-addon1">해석</span>';
            listHTML += '<input type="text" class="form-control" name="sdweTranslate" >';
            listHTML += '</div>';
            listHTML += '</div>';
            listHTML += '<div class="col-2">';
            listHTML += '<button type="button" class="regFrombutton1" onclick="remove(careerDelete' + count_career + ')">';
            listHTML += '<i class="fa-solid fa-minus"></i>';
            listHTML += '</button>';
            listHTML += '</div>';
            listHTML += '</div>';
            listHTML += '</div>';
            listHTML += '</div>';
            listHTML += '</div>';

            count_career += 1;

            $("#workPoint").append(listHTML);
        }
        function remove(id) {

            $(id).remove();
        }
    </script>
</body>

</html>