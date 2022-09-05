<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Word Administrator</title>
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

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
                        <div class="row" style="text-align: center; width:300px;">
	                        <div class="logo">
	                            <a href="MemberListForm.html"><span style="font-size: 30px;"><i class="fa-solid fa-book-open"></i>&nbsp E-Word</span><br><span style="font-size: 19px;">Administrator</span></a>
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

                        <li class="sidebar-item ">
                            <a href="MemberListForm.html" class='sidebar-link'>
                                <i class="bi bi-person-badge-fill"></i>
                                <span>MemberList</span>
                            </a>
                        </li>
                        
                        <li class="sidebar-item active ">
                            <a href="CodeList.html" class='sidebar-link'>
                                <i class="bi bi-grid-fill"></i>
                                <span>Code</span>
                            </a>
                        </li>
                        
                        <li class="sidebar-item">
                            <a href="CodeGroupList.html" class='sidebar-link'>
                                <i class="bi bi-grid-fill"></i>
                                <span>CodeGroup</span>
                            </a>
                        </li>
                        
                        <li class="sidebar-item">
                            <a href="index.html" class='sidebar-link'>
                                <i class="fa fa-book"></i>
                                <span>Word</span>
                            </a>
                        </li>
                        
                        <li class="sidebar-item">
                            <a href="index.html" class='sidebar-link'>
                                <i class="fa fa-chalkboard"></i>
                                <span>Test</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
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
                <h3>Code Management</h3>
            </div>
            <div class="page-content">
                <section class="row">
                    <div class="col-12">
                        <div class="row">
                         <section class="section">
		                    <div class="card">
		                        <div class="card-body">
		                            
		                            <div class="row gx-3 gy-2">
										<div class="col-3">
											<select id="shUseNy" name="shUseNy" class="form-select">
												<option value="" <c:if test="${empty vo.shSelect}">selected</c:if>>사용여부</option>
												<option value="0" <c:if test="${vo.shSelect eq 0}">selected</c:if>>N</option>
												<option value="1" <c:if test="${vo.shSelect eq 1}">selected</c:if>>Y</option>
											</select>
										</div>
										<div class="col-3">
											<select class="form-select" aria-label="Default select example">
												<option selected>수정일</option>
												<option value="1"></option>
												<option value="2"></option>
												<option value="3"></option>
												<option value="4"></option>
											</select>
										</div>
										<div class="col-3">
											<input type="text" name="startDate" id="startDate" class="form-control" placeholder="시작일">
										</div>
										<div class="col-3">
											<input type="text" name="endDate" id="endDate" class="form-control" placeholder="종료일">
										</div>
										<div class="col-3">
											<select id="shOption" name="shOption" class="form-select" aria-label="Default select example" >
												<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>검색구분</option>
												<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>코드그룹 코드</option>
												<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>코드그룹 이름 (한글)</option>
												<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>코드그룹 이름 (영문)</option>
											</select>
										</div>
										<div class="col-3">
											<form class="d-flex" role="search">
												<input class="form-control" type="text" id="searchInput" placeholder="검색어" onkeyup="myFunction()" title="Type in a name">
											</form>
										</div>
										<div class="col-3">
											<form class="d-flex" role="search">
												<button class="btn btn-outline-primary" type="submit" style="margin-right:5px;"><i class="fa-solid fa-magnifying-glass"></i></button>
												<button class="btn btn-outline-danger" type="submit" ><i class="fa-solid fa-arrow-rotate-left"></i></button>
											</form>
										</div>
									</div>
		                            
		                            <div class="dataTable-wrapper dataTable-loading no-footer sortable searchable fixed-columns">
		                            	
		                            	<div class="dataTable-container">
		                            		<table class="table table-striped" id="table1">
				                                <thead>
				                                    <tr>
				                                    	<th>
															<div class="form-check" id="">
										  						<input class="form-check-input" type="checkbox" name="chk_box" onclick="allcheck();" value="" id="flexCheckDefault">
										  					</div>
														</th>
														<th>#</th>
				                                        <th>코드그룹 코드</th>
				                                        <th>코드그룹 이름(한글)</th>
				                                        <th>코드</th>
				                                        <th>대체코드</th>
				                                        <th>코드 이름(한글)</th>
				                                        <th>코드 이름(영문)</th>
				                                        <th>사용</th>
				                                        <th>순서</th>
				                                        <th>등록일</th>
				                                        <th>수정일</th>
				                                    </tr>
				                                </thead>
				                                <tbody id="my_tbody">
				                                    <c:forEach items="${list}" var="list" varStatus="status">
													<tr>
														<td>
															<div class="form-check">
										  						<input class="form-check-input" type="checkbox" name="chk_box" onclick="check();" value="" id="flexCheckDefault">
										  					</div>
														</td>
														<td>
															${status.count }
														</td>
														<td>
															<c:out value="${list.infrCodeGroup_ifcgSeq }"/>
														</td>
														<td>
															<c:out value="${list.ifcgName }"/>
														</td>
														<td>
															<c:out value="${list.ifcdSeq }"/>
														</td>
														<td>
														</td>
														<td>
															<c:out value="${list.ifcdName }"/>
														</td>
														<td>
															<c:out value="${list.ifcdEngName }"/>
														</td>
															
														<td>
															<c:out value="${list.ifcdUseNy }"/>
														</td>
														<td>
															<c:out value="${list.ifcdOrder }"/>
														</td>
														<td>
														
														</td>
														<td>
														
														</td>
																												
													</tr>
													</c:forEach>
				                                </tbody>
				                            </table>
                            			</div>
                            			
                            			<div class="row">
											
											<div class="col-6" style="text-align:left;">
												<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa-solid fa-square-minus"></i></button>
												<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal2"><i class="fa-solid fa-xmark"></i></button>
												<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
													<div class="modal-dialog">
														<div class="modal-content">
															<div class="modal-header">
																<h5 class="modal-title" id="exampleModalLabel2">삭제</h5>
																<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
															</div>
															<div class="modal-body">
															  정말 삭제하시겠습니까?
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-danger" data-bs-dismiss="modal" onClick="delete_row();">삭제하기</button>
																<button type="button" class="btn btn-primary" data-bs-dismiss="modal">취소하기</button>
															</div>
														</div>
													</div>
												</div>
												<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
													<div class="modal-dialog">
														<div class="modal-content">
															<div class="modal-header">
																<h5 class="modal-title" id="exampleModalLabel">삭제</h5>
																<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
															</div>
															<div class="modal-body">
															  정말 삭제하시겠습니까?
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-danger" data-bs-dismiss="modal" onClick="delete_row();">삭제하기</button>
																<button type="button" class="btn btn-primary" data-bs-dismiss="modal">취소하기</button>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="col-6" style="text-align:right;">
												<button type="button" class="btn btn-success"><i class="fa-solid fa-file-csv"></i></button>
												<button type="button" class="btn btn-primary" onClick="location.href='CodeForm.html'"><i class="fa-solid fa-square-plus"></i></button>
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
                        <p>Crafted with <span class="text-danger"><i class="bi bi-heart"></i></span> by <a
                                href="http://ahmadsaugi.com">A. Saugi</a></p>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="../resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="../resources/assets/js/bootstrap.bundle.min.js"></script>
	
	<script src="../resources/assets/vendors/simple-datatables/simple-datatables.js"></script>
	
	<script src="https://kit.fontawesome.com/20c294a34b.js" crossorigin="anonymous"></script>
	
    <script src="../resources/assets/vendors/apexcharts/apexcharts.js"></script>
    <script src="../resources/assets/js/pages/dashboard.js"></script>

	
	<script>
        // Simple Datatable
        let table1 = document.querySelector('#table1');
        let dataTable = new simpleDatatables.DataTable(table1);
        
        function allcheck(){
    	    var chk_box = document.getElementsByName("chk_box");
    	    var checkItem="";
    	    for(var i = 0; i < chk_box.length; i++){
    	       if(chk_box[0].checked == true){
    	    	   chk_box[i].checked = true;
    	       } else {
    	    	   chk_box[i].checked = false;
    	       }
    	    }
    	 }
    	function check(){
    	    var chk_box = document.getElementsByName("chk_box");
    	    var checkItem="";
    		    for(var i = 0 ; i < chk_box.length; i++){
    		       if(chk_box[i].checked == false){
    		          checkItem = false;
    	       }
    	    }
    	    chk_box[0].checked = checkItem;
     	}
    	$(document).ready(function () {
            $.datepicker.setDefaults($.datepicker.regional['ko']); 
            $( "#startDate" ).datepicker({
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
                     $("#endDate").datepicker( "option", "minDate", selectedDate );
                 }    
 
            });
            $( "#endDate" ).datepicker({
                 changeMonth: true, 
                 changeYear: true,
                 nextText: '다음 달',
                 prevText: '이전 달', 
                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 dateFormat: "yy-mm-dd",
                 maxDate: 0,                       // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가)
                 onClose: function( selectedDate ) {    
                     // 종료일(endDate) datepicker가 닫힐때
                     // 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
                     $("#startDate").datepicker( "option", "maxDate", selectedDate );
                 }    
 
            });
    	});
    </script>

    <script src="../resources/assets/js/main.js"></script>
    
    
    
</body>

</html>