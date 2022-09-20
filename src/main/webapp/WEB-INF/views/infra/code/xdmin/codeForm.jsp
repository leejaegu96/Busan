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
		
		#InputPadding {
			padding-top:20px;
			margin-left:30px;
			margin-right:30px;
		}
		ul li {
			list-style-type:none;
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

                        <li class="sidebar-item  ">
                            <a href="MemberListForm.html" class='sidebar-link'>
                                <i class="bi bi-person-badge-fill"></i>
                                <span>MemberList</span>
                            </a>
                        </li>
                        
                        <li class="sidebar-item">
                            <a href="../codeGroup/codeGroupList" class='sidebar-link'>
                                <i class="bi bi-grid-fill"></i>
                                <span>CodeGroup</span>
                            </a>
                        </li>
                        
                        <li class="sidebar-item active">
                            <a href="codeList" class='sidebar-link'>
                                <i class="bi bi-grid-fill"></i>
                                <span>Code</span>
                            </a>
                        </li>
                        
                        <li class="sidebar-item">
                            <a href="../function/WordList.html" class='sidebar-link'>
                                <i class="fa fa-book"></i>
                                <span>Word</span>
                            </a>
                        </li>
                        
                        <li class="sidebar-item">
                            <a href="../function/TestList.html" class='sidebar-link'>
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
                <h3>CodeForm</h3>
                ifcdSeq =   <c:out value="${vo.ifcdSeq }"/><br>
                shUseNy  =  <c:out value="${vo.shUseNy }"/><br>
                shOptionDate  =  <c:out value="${vo.shOptionDate }"/><br>
                shOption  =  <c:out value="${vo.shOption }"/><br>
                shValue  =  <c:out value="${vo.shValue }"/><br>
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
									<%@include file="codeVo.jsp"%>		<!-- #-> -->
									<!-- *Vo.jsp e -->
										<%-- 
		                            	<input type="hidden" name="ifcdSeq" value="<c:out value="${vo.ifcdSeq }"/>" />
		                            	 --%>
		                                <div class="container-fluid" style="padding-top:30px;">
											<div class="row">
												<div class="col">
													<span style="font-size:25px;">Code</span>
												</div>
											</div>
										</div>
										<div class="container-fluid"> 
											<div class="row" id="InputPadding">
												<div class="col-6">
													<label class="form-label">코드</label>
													<input type="text" class="form-control" id="disabledInput" value="<c:out value="${vo.ifcdSeq }"/>"  disabled="" >
												</div>
												<div class="col-6">
													<label class="form-label">코드 그룹</label>
													<select name="infrCodeGroup_ifcgSeq" class="form-select" >
														<c:forEach items="${list}" var="list" varStatus="status">
															<option value="${list.ifcgSeq }" >${list.ifcgName }</option>
														</c:forEach>
													</select>
												</div>
											</div>
											<div class="row" id="InputPadding">
												<div class="col-6">
													<label class="form-label">코드 이름 (한글)</label>
													<input type="text" class="form-control" name="ifcdName" value="<c:out value="${item.ifcdName }"/>" >
												</div>
												<div class="col-6">
													<label class="form-label">코드 이름 (영문)</label>
													<input type="text" class="form-control" name="ifcdEngName" value="<c:out value="${item.ifcdEngName }"/>" >
												</div>
											</div>
											<div class="row" id="InputPadding">
												<div class="col-6">
													<label class="form-label">사용여부</label>
													<select id="inputState" class="form-select">
														<option selected disabled>:선택:</option>
														<option selected>Y</option>
														<option>N</option>
													</select>
												</div>
												<div class="col-6">
													<label class="form-label">순서</label>
													<input type="text" class="form-control" name="ifcdOrder">
												</div>
											</div>
											<div class="row" id="InputPadding">
												<div class="col-6">
													<label class="form-label">설명</label>
													<textarea class="form-control" rows="2"></textarea>
												</div>
												<div class="col-6">
													<label class="form-label">삭제여부</label>
													<select id="inputState" class="form-select">
														<option selected disabled>:선택:</option>
														<option>Y</option>
														<option selected>N</option>
													</select>
												</div>
											</div>
											<div class="row" id="InputPadding">
												<div class="col-6">
													<label class="form-label">예비1(varchar type)</label>
													<input type="text" class="form-control" placeholder="영문(대소문자), 숫자">
												</div>
												<div class="col-6">
													<label class="form-label">예비2(varchar type)</label>
													<input type="text" class="form-control" placeholder="영문(대소문자), 숫자">
												</div>
											</div>
											<div class="row" id="InputPadding">
												<div class="col-6">
													<label class="form-label">예비3(varchar type)</label>
													<input type="text" class="form-control" placeholder="영문(대소문자), 숫자">
												</div>
											</div>
											<div class="row" id="InputPadding">
												<div class="col-6">
													<label class="form-label">예비1(int type)</label>
													<input type="text" class="form-control" placeholder="숫자">
												</div>
												<div class="col-6">
													<label class="form-label">예비2(int type)</label>
													<input type="text" class="form-control" placeholder="숫자">
												</div>
											</div>
											<div class="row" id="InputPadding">
												<div class="col-6">
													<label class="form-label">예비3(int type)</label>
													<input type="text" class="form-control" placeholder="숫자">
												</div>
											</div>
											<div class="row" id="InputPadding">
												<div class="col-6" style="text-align: left;">
													<button type="button" class="btn btn-secondary" onClick=""><i class="fa-solid fa-bars"></i></button>
													
												</div>
												<div class="col-6" style="text-align: right;">
													<button type="button" id="btnDelete" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa-solid fa-xmark"></i></button>
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
													<button type="button" id="btnUelete" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa-solid fa-trash-can"></i></button>
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
													
													<button type="button" id="btnSave" class="btn btn-success" ><i class="fa-solid fa-bookmark"></i></button>
												</div>
											</div>
										</div>
		                            
									    
								    </form>
								    <form name="formVo" id="formVo" method="post">
									<!-- *Vo.jsp s -->
									<%@include file="codeVo.jsp"%>		<!-- #-> -->
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
                        <p>Crafted with <span class="text-danger"><i class="bi bi-heart"></i></span> by <a
                                href="http://ahmadsaugi.com">A. Saugi</a></p>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <!-- 
    <script src="../resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="../resources/assets/js/bootstrap.bundle.min.js"></script>
    <script src="../resources/assets/vendors/apexcharts/apexcharts.js"></script>
    <script src="../resources/assets/js/pages/dashboard.js"></script>
	 -->
	
	<script src="https://kit.fontawesome.com/20c294a34b.js" crossorigin="anonymous"></script>

    <script src="../resources/assets/js/main.js"></script>
    
    <script type="text/javascript">
    
    var goUrlList = "/code/codeList"; 			/* #-> */
	var goUrlInst = "/code/codeInst"; 			/* #-> */
	var goUrlUpdt = "/code/codeUpdt";				/* #-> */
	var goUrlUele = "/code/codeUele";				/* #-> */
	var goUrlDele = "/code/codeDele";				/* #-> */
	
	var mainKey = $("input:hidden[name=mainKey]");
	
	var seq = $("input:hidden[name=ifcdSeq]");				/* #-> */
	
	var form = $("form[name = form]");
	var formVo = $("form[name=formVo]");
	
	
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
	
	
	
	
	$("#btnDelete").on("click", function(){
		$("input:hidden[name=exDeleteType]").val(2);
		$(".modal-title").text("확 인");
		$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
		$("#btnModalUelete").hide();
		$("#btnModalDelete").show();
	});
	
	$("#btnUelete").on("click", function(){
		$("input:hidden[name=exDeleteType]").val(1);
		$(".modal-title").text("확 인");
		$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
		$("#btnModalUelete").show();
		$("#btnModalDelete").hide();
	});
	
	$("#btnModalDelete").on("click", function(){
		form.attr("action", goUrlDele).submit();
	});
	
	$("#btnModalUelete").on("click", function(){
		form.attr("action", goUrlUele).submit();
	});
    
    /* 
    const reader = new FileReader();

    reader.onload = (readerEvent) => {
        document.querySelector("#img_section").setAttribute("src", readerEvent.target.result);
        //파일을 읽는 이벤트가 발생하면 img_section의 src 속성을 readerEvent의 결과물로 대체함
    };

    document.querySelector("#upload_file").addEventListener("change", (changeEvent) => {
        //upload_file 에 이벤트리스너를 장착

        const imgFile = changeEvent.target.files[0];
        reader.readAsDataURL(imgFile);
        //업로드한 이미지의 URL을 reader에 등록
    })

    const exampleModal = document.getElementById('exampleModal')
    	exampleModal.addEventListener('show.bs.modal', event => {
    	// Button that triggered the modal
    const button = event.relatedTarget
    	// Extract info from data-bs-* attributes
    const recipient = button.getAttribute('data-bs-whatever')
    	// If necessary, you could initiate an AJAX request here
    	// and then do the updating in a callback.
    	//
    	// Update the modal's content.
    const modalTitle = exampleModal.querySelector('.modal-title')
    const modalBodyInput = exampleModal.querySelector('.modal-body input')
    	
    	modalTitle.textContent = `New message to ${recipient}`
    	modalBodyInput.value = recipient
    }) 
    */
    function test() {
    	alert("test")
    }
    
    </script>
    
    
</body>

</html>