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

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script type="text/javascript">
    $(document).ready(function() {
        $.datepicker.setDefaults($.datepicker.regional['ko']);
        $("#shDateStart").datepicker({
            changeMonth : true,
            changeYear : true,
            nextText : '다음 달',
            prevText : '이전 달',
            dayNames : [ '일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일' ],
            dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
            monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ],
            monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ],
            dateFormat : "yymmdd",
            maxDate : 0, // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
            onClose : function(selectedDate) {
                //시작일(startDate) datepicker가 닫힐때
                //종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                $("#shDateEnd").datepicker("option", "minDate", selectedDate);
            }

        });
        $("#shDateEnd").datepicker({
            changeMonth : true,
            changeYear : true,
            nextText : '다음 달',
            prevText : '이전 달',
            dayNames : [ '일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일' ],
            dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
            monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ],
            monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ],
            dateFormat : "yymmdd",
            maxDate : 0, // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가)
            onClose : function(selectedDate) {
                // 종료일(endDate) datepicker가 닫힐때
                // 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
                $("#shDateStart").datepicker("option", "maxDate", selectedDate);
            }

        });
    });
</script>

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

						<li class="sidebar-item "><a href="../member/memberList" class='sidebar-link'>
								<i class="bi bi-person-badge-fill"></i> <span>MemberList</span>
							</a></li>

						<li class="sidebar-item"><a href="../codeGroup/codeGroupList" class='sidebar-link'>
								<i class="bi bi-grid-fill"></i> <span>CodeGroup</span>
							</a></li>

						<li class="sidebar-item"><a href="../code/codeList" class='sidebar-link'>
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
				<div class="btn-group" style="float: right;">
					<button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" data-bs-display="static" aria-expanded="false">
						<i class="fa-regular fa-face-laugh"></i>
					</button>
					<ul class="dropdown-menu dropdown-menu-end dropdown-menu-start">
						<li><a class="dropdown-item" href="#">
								<div class="d-flex">
									<div class="flex-shrink-0 me-3">
										<div class="avatar">
											<img src="../resources/assets/images/faces/1.jpg" alt="" class="w-px-40 h-auto rounded-circle" style="width: 40px;">
										</div>
									</div>
									<div class="flex-grow-1">
										<span class="fw-semibold d-block">JaeguLee</span> <small class="text-muted">Admin</small>
									</div>
								</div>
							</a></li>
						<li>
							<div class="dropdown-divider"></div>
						</li>
						<li><a class="dropdown-item" href="">
								<i class="bx bx-user me-2"></i> <span class="align-middle">My Profile</span>
							</a></li>
						<li><a class="dropdown-item" href="">
								<i class="bx bx-cog me-2"></i> <span class="align-middle">Settings</span>
							</a></li>
						<li><a class="dropdown-item" href="">
								<span class="d-flex align-items-center align-middle"> <i class="flex-shrink-0 bx bx-credit-card me-2"></i> <span class="flex-grow-1 align-middle">Billing</span> <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
								</span>
							</a></li>
						<li>
							<div class="dropdown-divider"></div>
						</li>
						<li><a class="dropdown-item" id="btnLogout" href="">
								<i class="bx bx-power-off me-2"></i> <span class="align-middle">Log Out</span>
							</a></li>
					</ul>
				</div>
			</header>

			<div class="page-heading">
				<h3>Word Management</h3>
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
										<form method="post" name="formList" id="formList" >

											<span>Total: ${vo.totalRows }</span>
											<input type="hidden" name="sdwSeq">
											<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
											<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }"/>">
											<input type="hidden" name="checkboxSeqArray">

											<div class="row gx-3 gy-2">
												<div class="col-3">
													<select id="shUseNy" name="shUseNy" class="form-select">
														<option value="" <c:if test="${empty vo.shUseNy}">selected</c:if>>사용여부</option>
														<option value="0" <c:if test="${vo.shUseNy eq 0}">selected</c:if>>N</option>
														<option value="1" <c:if test="${vo.shUseNy eq 1}">selected</c:if>>Y</option>
													</select>
												</div>
												<div class="col-3">
													<select id="shOptionDate" name="shOptionDate" class="form-select">
														<option value="" <c:if test="${empty vo.shOptionDate}">selected</c:if>>날짜</option>
														<option value="1" <c:if test="${vo.shOptionDate eq 1}">selected</c:if>>등록일</option>
														<option value="2" <c:if test="${vo.shOptionDate eq 2}">selected</c:if>>수정일</option>
														<option value="3" <c:if test="${vo.shOptionDate eq 3}">selected</c:if>>생일</option>
													</select>
												</div>
												<div class="col-3">
													<fmt:parseDate var="shDateStart" value="${vo.shDateStart}" pattern="yyyy-MM-dd HH:mm:ss" />
													<input type="text" class="form-control" id="shDateStart" placeholder="시작일" <fmt:formatDate  value="${vo.shDateStart}" />>
												</div>
												<div class="col-3">
													<fmt:parseDate var="shDateEnd" value="${vo.shDateEnd}" pattern="yyyy-MM-dd HH:mm:ss" />
													<input type="text" class="form-control" id="shDateEnd" placeholder="종료일" <fmt:formatDate  value="${vo.shDateEnd}" pattern="yyyy-MM-dd HH:mm:ss"/>>
												</div>
												<div class="col-3">
													<select id="shOption" name="shOption" class="form-select" aria-label="Default select example">
														<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>검색구분</option>
														<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>코드</option>
														<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>코드 이름 (한글)</option>
														<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>코드 이름 (영문)</option>
													</select>
												</div>
												<div class="col-3">
													<input class="form-control" type="text" placeholder="검색어" id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>">
												</div>
												<div class="col-3">
													<button class="btn btn-outline-primary" type="submit" style="margin-right: 5px;">
														<i class="fa-solid fa-magnifying-glass"></i>
													</button>
													<button class="btn btn-outline-danger" type="submit">
														<i class="fa-solid fa-arrow-rotate-left"></i>
													</button>
												</div>
											</div>
										</form>

										<div class="dataTable-wrapper dataTable-loading no-footer sortable searchable fixed-columns">

											<div class="dataTable-container">
												<table class="table table-striped" id="table1">
													<thead>
														<tr>
															<th>
																<div class="form-check" id="">
																	<input type="checkbox" id="checkboxAll" name="" value="" class="form-check-input">
																</div>
															</th>
															<th>#</th>
															<th style="width: 5%;">단어</th>
															<th style="width: 25%;">뜻</th>
															<th style="width: 35%;">예시</th>
															<th style="width: 10%;">날짜</th>
															<th>등록일</th>
															<th>수정일</th>
														</tr>
													</thead>
													<tbody id="my_tbody"> 
														<c:choose>
															<c:when test="${fn:length(list) eq 0}">
																<tr>
																	<td class="" colspan="8" style="text-align: center;">There is no data!</td>
																</tr>
															</c:when>
															<c:otherwise>

																<c:forEach items="${list}" var="list" varStatus="status">
																	<tr>
																		<td>
																			<div class="form-check">
																				<input type="checkbox" id="checkboxSeq" name="checkboxSeq" value="<c:out value="${list.sdwSeq }"/>" class="form-check-input">
																			</div>
																		</td>
																		<td>
																			<c:out value="${vo.totalRows - ((vo.thisPage -1) * vo.rowNumToShowMypage + status.index) }" />
																		</td>
																		<td>
																			<a href="javascript:goForm(<c:out value="${list.sdwSeq }"/>)" class="text-decoration-none">
																				<c:out value="${list.sdwWord }" /> 
																			</a>
																		</td>
																		<td>
																			<c:forEach items="${item}" var="item" varStatus="status">
																				<c:if test="${list.sdwWord == item.sdwWord }">
																					<div class="ask">
																						<span class="content" style="font-weight: bold;" value="${list.sdwSeq }">${item.sdwmNum}. &nbsp;${item.sdwmPartOfSpeech}</span> <span class="content" value="${list.sdwSeq }">&nbsp;${item.sdwmContents}</span> <br>
																					</div>
																				</c:if>
																			</c:forEach>
																		</td>
																		<td>
																			<c:forEach items="${item}" var="item" varStatus="status">
																				<c:if test="${list.sdwWord == item.sdwWord }">
																					<div class="ask1">
																						<span class="content" style="font-weight: bold;">${item.sdwmNum}.&nbsp;</span> <span class="content" value="${list.sdwSeq }">${item.sdweContents}</span> <br> <span class="content" value="${list.sdwSeq }">&nbsp;&nbsp;&nbsp;&nbsp;${item.sdweTranslate}</span> <br>
																					</div>
																				</c:if>
																			</c:forEach>
																		</td>
																		<td>${list.sddDateChoice }</td>
																		<td></td>
																		<td></td>
																	</tr>
																</c:forEach>
															</c:otherwise>
														</c:choose>
													</tbody>
												</table>
											</div>

											<div class="row">

												<div class="col">

													<!-- pagination s -->
													<div class="container-fluid px-0 mt-2">
														<div class="row">
															<div class="col">
																<!-- <ul class="pagination pagination-sm justify-content-center mb-0"> -->
																<ul class="pagination justify-content-center mb-0">
																	<!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-left"></i></a></li> -->
																	<c:if test="${vo.startPage gt vo.pageNumToShow}">
																		<li class="page-item"><a class="page-link" href="javascript:goList(${vo.startPage - 1})">
																				<i class="fa-solid fa-angle-left"></i>
																			</a></li>
																	</c:if>
																	<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
																		<c:choose>
																			<c:when test="${i.index eq vo.thisPage}">
																				<li class="page-item active"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
																			</c:when>
																			<c:otherwise>
																				<li class="page-item"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
																			</c:otherwise>
																		</c:choose>
																	</c:forEach>
																	<c:if test="${vo.endPage ne vo.totalPages}">
																		<li class="page-item"><a class="page-link" href="javascript:goList(${vo.endPage + 1})">
																				<i class="fa-solid fa-angle-right"></i>
																			</a></li>
																	</c:if>
																	<!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-right"></i></a></li> -->
																</ul>
															</div>
														</div>
													</div>
													<!-- pagination e -->
												</div>
												<div class="row">
													<div class="col-6" style="text-align: left;">
														<button type="button" class="btn btn-danger" name="" id="btnDelete">
															<i class="fa-solid fa-x"></i>
														</button>
														<button type="button" class="btn btn-danger" name="" id="btnUelete">
															<i class="far fa-trash-alt"></i>
														</button>
														<div class="modal fade" id="modalConfirm" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
															<div class="modal-dialog modal-dialog-centered">
																<div class="modal-content">
																	<div class="modal-header">
																		<h5 class="modal-title" id="staticBackdropLabel">title</h5>
																		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
																	</div>
																	<div class="modal-body">body</div>
																	<div class="modal-footer">
																		<button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">
																			<i class="fa-solid fa-angle-left"></i>
																		</button>
																		<button type="button" class="btn btn-danger btn-sm" name="" id="btnModalDelete">
																			<i class="fa-solid fa-x"></i>
																		</button>
																		<button type="button" class="btn btn-danger btn-sm" name="" id="btnModalUelete">
																			<i class="far fa-trash-alt"></i>
																		</button>
																	</div>
																</div>
															</div>
														</div>
														<div class="modal fade" id="modalAlert" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
															<div class="modal-dialog modal-dialog-centered">
																<div class="modal-content">
																	<div class="modal-header">
																		<h5 class="modal-title" id="staticBackdropLabel">title</h5>
																		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
																	</div>
																	<div class="modal-body">body</div>
																	<div class="modal-footer">
																		<button type="button" class="btn btn-primary btn-sm" data-bs-dismiss="modal">
																			<i class="fa-solid fa-check"></i>
																		</button>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="col-6" style="text-align: right;">
														<button type="button" class="btn btn-success" id="btnExcel">
															<i class="fa-solid fa-file-csv"></i>
														</button>
														<button type="button" class="btn btn-primary" id="btnForm">
															<i class="fa-solid fa-square-plus"></i>
														</button>
													</div>
												</div>
											</div>

										</div>
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
	<script src="../resources/assets/vendors/simple-datatables/simple-datatables.js"></script>
	<script src="../resources/assets/vendors/apexcharts/apexcharts.js"></script>
    <script src="../resources/assets/js/pages/dashboard.js"></script>
    <script src="../resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="../resources/assets/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	 -->

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/20c294a34b.js" crossorigin="anonymous"></script>
	<script src="../resources/assets/js/main.js"></script>

	<script type="text/javascript">
        var goUrlList = "/word/wordList";
        var goUrlForm = "/word/wordForm";
        var excelUri = "/word/excelDownload";
        var goUrlMultiUele = "/word/wordMultiUele"; /* #-> */
        var goUrlMultiDele = "/word/wordMultiDele";

        var form = $("form[name=formList]");

        var seq = $("input:hidden[name=sdwSeq]");

        var checkboxSeqArray = [];

        $('#btnForm').on("click", function() {
            goForm(0);
        });

        $("#btnExcel").click(function() {
            form.attr("action", excelUri).submit();
        });

        goForm = function(keyValue) {
            /* if(keyValue != 0) seq.val(btoa(keyValue)); */
            seq.val(keyValue);
            form.attr("action", goUrlForm).submit();
        }

        goList = function(thisPage) {
            $("input:hidden[name=thisPage]").val(thisPage);
            form.attr("action", goUrlList).submit();
        }

        $("btnReset").on("click", function() {
            $(location).attr("href", goUrlList)
        })

        $("#checkboxAll").click(function() {
            if ($("#checkboxAll").is(":checked"))
                $("input[name=checkboxSeq]").prop("checked", true);
            else
                $("input[name=checkboxSeq]").prop("checked", false);
        });

        $("input[name=checkboxSeq]").click(function() {
            var total = $("input[name=checkboxSeq]").length;
            var checked = $("input[name=checkboxSeq]:checked").length;

            if (total != checked)
                $("#checkboxAll").prop("checked", false);
            else
                $("#checkboxAll").prop("checked", true);
        });

        $("#btnUelete").on("click", function() {
            if ($("input[name=checkboxSeq]:checked").length > 0) {
                $("input:hidden[name=exDeleteType]").val(1);
                $(".modal-title").text("확 인");
                $(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
                $("#btnModalUelete").show();
                $("#btnModalDelete").hide();
                $("#modalConfirm").modal("show");
            } else {
                $(".modal-title").text("확 인");
                $(".modal-body").text("데이터를 선택해 주세요!");
                $("#modalAlert").modal("show");
            }
        });

        $("#btnDelete").on("click", function() {
            if ($("input[name=checkboxSeq]:checked").length > 0) {
                $("input:hidden[name=exDeleteType]").val(2);
                $(".modal-title").text("확 인");
                $(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
                $("#btnModalUelete").hide();
                $("#btnModalDelete").show();
                $("#modalConfirm").modal("show");
            } else {
                $(".modal-title").text("확 인");
                $(".modal-body").text("데이터를 선택해 주세요!");
                $("#modalAlert").modal("show");
            }
        });

        $("#btnModalUelete").on("click", function() {
            $("input[name=checkboxSeq]:checked").each(function() {
                checkboxSeqArray.push($(this).val());
            });

            $("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);

            $("#modalConfirm").modal("hide");

            form.attr("action", goUrlMultiUele).submit();
        });

        $("#btnModalDelete").on("click", function() {
            $("input[name=checkboxSeq]:checked").each(function() {
                checkboxSeqArray.push($(this).val());
            });

            $("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);

            $("#modalConfirm").modal("hide");

            form.attr("action", goUrlMultiDele).submit();
        });
    </script>

	<script>
        // Simple Datatable
        let table1 = document.querySelector('#table1');
        /* let dataTable = new simpleDatatables.DataTable(table1); */

        function allcheck() {
            var chk_box = document.getElementsByName("chk_box");
            var checkItem = "";
            for (var i = 0; i < chk_box.length; i++) {
                if (chk_box[0].checked == true) {
                    chk_box[i].checked = true;
                } else {
                    chk_box[i].checked = false;
                }
            }
        }
        function check() {
            var chk_box = document.getElementsByName("chk_box");
            var checkItem = "";
            for (var i = 0; i < chk_box.length; i++) {
                if (chk_box[i].checked == false) {
                    checkItem = false;
                }
            }
            chk_box[0].checked = checkItem;
        }
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
                        location.href = "/login/login";
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





</body>

</html>