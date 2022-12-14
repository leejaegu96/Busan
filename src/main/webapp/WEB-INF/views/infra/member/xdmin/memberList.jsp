<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<jsp:useBean id="CodeServiceImpl" class="com.decemelev.infra.modules.code.CodeServiceImpl" />



<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


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

<script type="text/javascript">
    $(document).ready(function() {
        $.datepicker.setDefaults($.datepicker.regional['ko']);
        $("#shDateStart").datepicker({
            changeMonth : true,
            changeYear : true,
            nextText : '?????? ???',
            prevText : '?????? ???',
            dayNames : [ '?????????', '?????????', '?????????', '?????????', '?????????', '?????????', '?????????' ],
            dayNamesMin : [ '???', '???', '???', '???', '???', '???', '???' ],
            monthNamesShort : [ '1???', '2???', '3???', '4???', '5???', '6???', '7???', '8???', '9???', '10???', '11???', '12???' ],
            monthNames : [ '1???', '2???', '3???', '4???', '5???', '6???', '7???', '8???', '9???', '10???', '11???', '12???' ],
            dateFormat : "yymmdd",
            maxDate : 0, // ?????????????????? ????????????, ( 0 : ?????? ?????? ?????? ?????? ??????)
            onClose : function(selectedDate) {
                //?????????(startDate) datepicker??? ?????????
                //?????????(endDate)??? ?????????????????? ?????? ??????(minDate)??? ????????? ???????????? ??????
                $("#shDateEnd").datepicker("option", "minDate", selectedDate);
            }

        });
        $("#shDateEnd").datepicker({
            changeMonth : true,
            changeYear : true,
            nextText : '?????? ???',
            prevText : '?????? ???',
            dayNames : [ '?????????', '?????????', '?????????', '?????????', '?????????', '?????????', '?????????' ],
            dayNamesMin : [ '???', '???', '???', '???', '???', '???', '???' ],
            monthNamesShort : [ '1???', '2???', '3???', '4???', '5???', '6???', '7???', '8???', '9???', '10???', '11???', '12???' ],
            monthNames : [ '1???', '2???', '3???', '4???', '5???', '6???', '7???', '8???', '9???', '10???', '11???', '12???' ],
            dateFormat : "yymmdd",
            maxDate : 0, // ?????????????????? ????????????, ( 0 : ?????? ?????? ?????? ?????? ??????)
            onClose : function(selectedDate) {
                // ?????????(endDate) datepicker??? ?????????
                // ?????????(startDate)??? ?????????????????? ?????? ??????(maxDate)??? ????????? ???????????? ??????
                $("#shDateStart").datepicker("option", "maxDate", selectedDate);
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
									<span style="font-size: 30px;"><i class="fa-solid fa-book-open"></i>&nbsp E-Word</span><br> <span style="font-size: 19px;">Administrator</span>
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
				
				<%@include file="../../../common/user/includeV1/header.jsp"%>
				
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
				<h3>Profile Statistics</h3>
			</div>
			<div class="page-content">
				<section class="row">
					<div class="col-12">
						<div class="row">

							<div class="col-6 col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body px-3 py-4-5">
										<div class="row">
											<div class="col-md-4">
												<div class="avatar avatar-xl" id="image-icon">
													<img src="../resources/assets/images/faces/1.jpg" alt="Face 1" style="width: 50px; height: 50px;">
												</div>
											</div>
											<div class="col-md-8">
												<h6 class="text-muted font-semibold">Administrator</h6>
												<h6 class="font-extrabold mb-0">@JaeguLee</h6>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="col-6 col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body px-3 py-4-5">
										<div class="row">
											<div class="col-md-4">
												<div class="stats-icon purple">
													<i class="iconly-boldShow"></i>
												</div>
											</div>
											<div class="col-md-8">
												<h6 class="text-muted font-semibold">Number Of Visitors</h6>
												<h6 class="font-extrabold mb-0">-</h6>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-6 col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body px-3 py-4-5">
										<div class="row">
											<div class="col-md-4">
												<div class="stats-icon blue">
													<i class="iconly-boldProfile"></i>
												</div>
											</div>
											<div class="col-md-8">
												<h6 class="text-muted font-semibold">Number Of Tests</h6>
												<h6 class="font-extrabold mb-0">-</h6>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-6 col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body px-3 py-4-5">
										<div class="row">
											<div class="col-md-4">
												<div class="stats-icon green">
													<i class="iconly-boldAdd-User"></i>
												</div>
											</div>
											<div class="col-md-8">
												<h6 class="text-muted font-semibold">Number Of Likes</h6>
												<h6 class="font-extrabold mb-0">-</h6>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
						<div class="row">
							<section class="section">
								<div class="card">
									<div class="card-header">
										<h3>Member Management</h3>
										<%-- 
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
										 --%>
									</div>
									<div class="card-body">
										<form method="post" name="formList" id="formList">
											<span>Total: ${vo.totalRows }</span>
											<input type="hidden" name="ifmmSeq">
											<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
											<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }"/>">
											<input type="hidden" name="checkboxSeqArray">

											<div class="row gx-3 gy-2">
												<div class="col-3">
													<select id="shDelNy" name="shDelNy" class="form-select">
														<option value="" <c:if test="${empty vo.shDelNy}">selected</c:if>>????????????</option>
														<option value="1" <c:if test="${vo.shDelNy eq 0}">selected</c:if>>Y</option>
														<option value="0" <c:if test="${vo.shDelNy eq 1}">selected</c:if>>N</option>
													</select>
												</div>
												<div class="col-3">
													<select id="shOptionDate" name="shOptionDate" class="form-select">
														<option value="" <c:if test="${empty vo.shOptionDate}">selected</c:if>>??????</option>
														<option value="1" <c:if test="${vo.shOptionDate eq 1}">selected</c:if>>?????????</option>
														<option value="2" <c:if test="${vo.shOptionDate eq 2}">selected</c:if>>?????????</option>
														<option value="3" <c:if test="${vo.shOptionDate eq 3}">selected</c:if>>??????</option>
													</select>
												</div>
												<div class="col-3">
													<fmt:parseDate var="shDateStart" value="${vo.shDateStart}" pattern="yyyy-MM-dd HH:mm:ss" />
													<input type="text" class="form-control" id="shDateStart" placeholder="?????????" <fmt:formatDate  value="${vo.shDateStart}" />>
												</div>
												<div class="col-3">
													<fmt:parseDate var="shDateEnd" value="${vo.shDateEnd}" pattern="yyyy-MM-dd HH:mm:ss" />
													<input type="text" class="form-control" id="shDateEnd" placeholder="?????????" <fmt:formatDate  value="${vo.shDateEnd}" pattern="yyyy-MM-dd HH:mm:ss"/>>
												</div>
												<div class="col-3">
													<select id="shOption" name="shOption" class="form-select" aria-label="Default select example">
														<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>????????????</option>
														<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>Seq</option>
														<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>??????</option>
														<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>ID</option>
													</select>
												</div>
												<div class="col-3">
													<input class="form-control" type="text" placeholder="?????????" id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>">
												</div>
												<div class="col-3">
													<button class="btn btn-outline-primary" type="submit" style="margin-right: 5px;">
														<i class="fa-solid fa-magnifying-glass"></i>
													</button>
													<button class="btn btn-outline-danger" type="button" id="btnReset">
														<i class="fa-solid fa-arrow-rotate-left"></i>
													</button>
												</div>
											</div>

											<div class="dataTable-wrapper dataTable-loading no-footer sortable searchable fixed-columns">

												<div class="dataTable-container">
													<table class="table table-striped" id="table1">
														<thead>
															<tr>
																<th>
																	<div class="form-check" id="">
																		<!-- <input class="form-check-input" type="checkbox" name="chk_box" onclick="allcheck();" value="" id="flexCheckDefault"> -->
																		<input type="checkbox" id="checkboxAll" name="" value="" class="form-check-input">
																	</div>
																</th>
																<th>#</th>
																<th>Seq</th>
																<th style="width: 10%;">Id</th>
																<th>Name</th>
																<th>Email</th>
																<th>EmailDomail</th>
																<th>Gender</th>
																<th>Dob</th>
																<th>PhoneCarrier</th>
																<th>PhoneNumber</th>
																<th>MailNY</th>
																<th>SmsNY</th>
															</tr>
														</thead>
														<tbody>
															<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('1')}" />
															<c:set var="listCodeCarrier" value="${CodeServiceImpl.selectListCachedCode('2')}" />
															<c:set var="listCodeDomain" value="${CodeServiceImpl.selectListCachedCode('3')}" />
															<c:choose>
																<c:when test="${fn:length(list) eq 0}">
																	<tr>
																		<td class="" colspan="13" style="text-align: center;">There is no data!</td>
																	</tr>
																</c:when>
																<c:otherwise>
																	<c:forEach items="${list}" var="list" varStatus="status">
																		<%-- <tr style="cursor: pointer;" onclick="location.href='/member/memberForm?ifmmSeq=<c:out value="${list.ifmmSeq }"/>'"> --%>

																		<td>
																			<div class="form-check">
																				<input type="checkbox" id="checkboxSeq" name="checkboxSeq" value="<c:out value="${list.ifmmSeq }"/>" class="form-check-input">
																				<!-- <input class="form-check-input" type="checkbox" name="chk_box" onclick="check();" value="" id="flexCheckDefault"> -->
																			</div>
																		</td>
																		<td>
																			<c:out value="${vo.totalRows - ((vo.thisPage -1) * vo.rowNumToShow + status.index) }" />
																		</td>
																		<td>
																			<c:out value="${list.ifmmSeq }" />
																		</td>
																		<td>
																			<c:out value="${list.ifmmId }" />
																		</td>
																		<td>
																			<a href="javascript:goForm(<c:out value="${list.ifmmSeq }"/>)" class="text-decoration-none">
																				<c:out value="${list.ifmmName }" />
																			</a>
																			<%-- <c:out value="${list.ifmmName }"/> --%>
																		</td>
																		<td>
																			<c:out value="${list.ifmmEmail }" />
																		</td>
																		<td>
																			<c:forEach items="${listCodeDomain}" var="listDomain" varStatus="statusDomain">
																				<c:if test="${list.ifmmEmailDomain eq listDomain.ifcdSeq}">
																					<c:out value="${listDomain.ifcdName }" />
																				</c:if>
																			</c:forEach>
																		</td>
																		<td>
																			<c:forEach items="${listCodeGender}" var="listGender" varStatus="statusGender">
																				<c:if test="${list.ifmmGender eq listGender.ifcdSeq}">
																					<c:out value="${listGender.ifcdName }" />
																				</c:if>
																			</c:forEach>
																		</td>
																		<td>
																			${list.ifmmDob }
																			<%-- <fmt:formatDate value="${list.ifmmDob }" pattern="yyyy-MM-dd" /> --%>
																		</td>
																		<td>
																			<c:forEach items="${listCodeCarrier}" var="listCarrier" varStatus="statusGender">
																				<c:if test="${list.ifmmPhoneCarrier eq listCarrier.ifcdSeq}">
																					<c:out value="${listCarrier.ifcdName }" />
																				</c:if>
																			</c:forEach>
																		</td>
																		<td>
																			<c:out value="${list.ifmmPhone }" />
																		</td>
																		<td>
																			<c:out value="${list.ifmmMailNy }" />
																		</td>
																		<td>
																			<c:out value="${list.ifmmSmsNy }" />
																		</td>
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
														<%@include file="../../../common/xdmin/includeV1/pagination.jsp"%>
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
															<!-- 
														<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
															<div class="modal-dialog">
																<div class="modal-content">
																	<div class="modal-header">
																		<h5 class="modal-title" id="exampleModalLabel2">??????</h5>
																		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
																	</div>
																	<div class="modal-body">?????? ?????????????????????????</div>
																	<div class="modal-footer">
																		<button type="button" class="btn btn-danger" data-bs-dismiss="modal" onClick="delete_row();">????????????</button>
																		<button type="button" class="btn btn-primary" data-bs-dismiss="modal">????????????</button>
																	</div>
																</div>
															</div>
														</div>
														
														<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
															<div class="modal-dialog">
																<div class="modal-content">
																	<div class="modal-header">
																		<h5 class="modal-title" id="exampleModalLabel">??????</h5>
																		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
																	</div>
																	<div class="modal-body">?????? ?????????????????????????</div>
																	<div class="modal-footer">
																		<button type="button" class="btn btn-danger" data-bs-dismiss="modal" onClick="delete_row();">????????????</button>
																		<button type="button" class="btn btn-primary" data-bs-dismiss="modal">????????????</button>
																	</div>
																</div>
															</div>
														</div>
													 -->
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
							Crafted with <span class="text-danger"><i class="bi bi-heart"></i></span> by
							<a href="http://ahmadsaugi.com">A. Saugi</a>
						</p>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script src="https://kit.fontawesome.com/20c294a34b.js" crossorigin="anonymous"></script>
	<script src="../resources/assets/js/main.js"></script>


	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

	<script type="text/javascript">
        
    </script>
	<script>
        var goUrlList = "/member/memberList";
        var goUrlForm = "/member/memberForm";
        var excelUri = "/member/excelDownload";
        var goUrlMultiUele = "/member/memberMultiUele"; /* #-> */
        var goUrlMultiDele = "/member/memberMultiDele";

        var seq = $("input:hidden[name=ifmmSeq]");

        var form = $("form[name=formList]");

        var checkboxSeqArray = [];

        $('#btnForm').on("click", function() {
            goForm(0);
        });

        goForm = function(keyValue) {
            /* if(keyValue != 0) seq.val(btoa(keyValue)); */
            seq.val(keyValue);
            form.attr("action", goUrlForm).submit();
        }

        $("#btnExcel").click(function() {
            form.attr("action", excelUri).submit();
        });

        goList = function(thisPage) {
            $("input:hidden[name=thisPage]").val(thisPage);
            form.attr("action", goUrlList).submit();
        }

        $("btnReset").on("click", function() {
            $(location).attr("href", goUrlList)
        })

        /* 
        // Simple Datatable
        let table1 = document.querySelector('#table1');
        let dataTable = new simpleDatatables.DataTable(table1);
         */

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
                $(".modal-title").text("??? ???");
                $(".modal-body").text("?????? ???????????? ???????????????????????? ?");
                $("#btnModalUelete").show();
                $("#btnModalDelete").hide();
                $("#modalConfirm").modal("show");
            } else {
                $(".modal-title").text("??? ???");
                $(".modal-body").text("???????????? ????????? ?????????!");
                $("#modalAlert").modal("show");
            }
        });

        $("#btnDelete").on("click", function() {
            if ($("input[name=checkboxSeq]:checked").length > 0) {
                $("input:hidden[name=exDeleteType]").val(2);
                $(".modal-title").text("??? ???");
                $(".modal-body").text("?????? ???????????? ???????????????????????? ?");
                $("#btnModalUelete").hide();
                $("#btnModalDelete").show();
                $("#modalConfirm").modal("show");
            } else {
                $(".modal-title").text("??? ???");
                $(".modal-body").text("???????????? ????????? ?????????!");
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