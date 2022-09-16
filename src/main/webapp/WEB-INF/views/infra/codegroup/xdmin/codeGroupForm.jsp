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
		
		.modal {
    overflow-y: auto !important;
}
		
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
	                            <a href="MemberList.html"><span style="font-size: 30px;"><i class="fa-solid fa-book-open"></i>&nbsp E-Word</span><br><span style="font-size: 19px;">Administrator</span></a>
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
                        
                        <li class="sidebar-item active">
                            <a href="codeGroupList" class='sidebar-link'>
                                <i class="bi bi-grid-fill"></i>
                                <span>CodeGroup</span>
                            </a>
                        </li>
                        
                        <li class="sidebar-item ">
                            <a href="../code/codeList" class='sidebar-link'>
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
                <h3>CodeGroupForm</h3>
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
									<%@include file="codeGroupVo.jsp"%>		<!-- #-> -->
									<!-- *Vo.jsp e -->
		                            	<%-- 
		                            	<input type="hidden" name="ifcgSeq" value="<c:out value="${vo.ifcgSeq }"/>" />
		                            	 --%>
		                                <div class="container-fluid" style="padding-top:30px;">
											<div class="row">
												<div class="col">
													<span style="font-size:25px;">CodeGroup</span>
												</div>
											</div>
										</div>
										<div class="container-fluid">
											<div class="row" id="InputPadding">
												<div class="col-6">
													<label class="form-label">코드그룹 코드</label>
													<input type="text" class="form-control" id="ifcgSeq" value="<c:out value="${item.ifcgSeq }"/>" >
												</div>
												<div class="col-6">
													<label class="form-label">코드그룹 코드 (Another)</label>
													<input type="text" class="form-control" placeholder="영문(대소문자), 숫자">
												</div>
											</div>
											<div class="row" id="InputPadding">
												<div class="col-6">
													<label class="form-label">코드그룹 이름 (한글)</label>
													<input type="text" class="form-control" id="ifcgName" name="ifcgName" value="<c:out value="${item.ifcgName }"/>" >
												</div>
												<div class="col-6">
													<label class="form-label">코드그룹 이름 (영문)</label>
													<input type="text" class="form-control" name="ifcgEngName" placeholder="영문(대소문자), 숫자" value="<c:out value="${item.ifcgEngName }"/>">
												</div>
											</div>
											<div class="row" id="InputPadding">
												<div class="col-6">
													<label class="form-label">사용여부</label>
													<select id="UseNy" class="form-select" >
														<option selected disabled>:선택:</option>
														<option value="1">Y</option>
														<option value="2">N</option>
													</select>
												</div>
												<div class="col-6">
													<label class="form-label">순서</label>
													<input type="text" class="form-control" name="ifcgOrder" placeholder="숫자">
												</div>
											</div>
											<div class="row" id="InputPadding">
												<div class="col-6">
													<label class="form-label" >설명</label>
													<textarea class="form-control" id="explain" rows="2"></textarea>
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
												<div class="col-6">
													<label class="form-label">체크박스</label>
	                                                <div class="form-check">
	                                                    <div class="checkbox">
	                                                        <input type="checkbox" id="checkbox1" name="checkbox" value="one" class="form-check-input" >
	                                                        <label for="checkbox1">One</label>
	                                                    </div>
	                                                    <div class="checkbox">
	                                                        <input type="checkbox" id="checkbox2" name="checkbox" value="two" class="form-check-input">
	                                                        <label for="checkbox2">Two</label>
	                                                    </div>
	                                                </div>
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
												<div class="col-6">
													<label class="form-label">라디오박스</label>
													<!-- 
													<input type="radio" id="gender1" name="gender" value="1">남성
													<input type="radio" id="gender2" name="gender" value="2">여성
													<input type="radio" id="gender3" name="gender" value="3">기타
													 -->
													<div class="row">
														<div class="col">
															<div class="form-check">
						                                        <input class="form-check-input" type="radio" id="gender1" name="gender" value="1">
						                                        <label class="form-check-label" for="gender1">
						                                            남자
						                                        </label>
						                                    </div>
						                                </div>
						                                <div class="col">
						                                    <div class="form-check">
						                                        <input class="form-check-input" type="radio" id="gender2" name="gender" value="2">
						                                        <label class="form-check-label" for="gender2">
						                                            여자
						                                        </label>
						                                    </div>
						                                </div>
						                                <div class="col">
						                                    <div class="form-check">
						                                        <input class="form-check-input" type="radio" id="gender3" name="gender" value="3">
						                                        <label class="form-check-label" for="gender3">
						                                            기타
						                                        </label>
						                                    </div>
					                                    </div>
				                                   	</div>
												</div>
											</div>
											<div class="row" id="InputPadding">
												<div class="col-3">
													<label class="form-label">최초등록자</label>
													<input type="text" class="form-control">
												</div>
												<div class="col-3">
													<label class="form-label">최초등록일</label>
													<input type="text" class="form-control">
												</div>
												<div class="col-3">
													<label class="form-label">최초등록IP</label>
													<input type="text" class="form-control">
												</div>
												<div class="col-3">
													<label class="form-label">최초등록디바이스</label>
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="row" id="InputPadding">
												<div class="col-6" style="text-align: left;">
													<button type="button" class="btn btn-secondary" id="btnList"><i class="fa-solid fa-bars"></i></button>
													
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
									<%@include file="codeGroupVo.jsp"%>		<!-- #-> -->
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
    <!-- 
    <script src="../resources/assets/vendors/apexcharts/apexcharts.js"></script>
    <script src="../resources/assets/js/pages/dashboard.js"></script>
     -->
	
	
	<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	
    <script src="../resources/assets/js/bootstrap.bundle.min.js"></script>
	<script src="../resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script src="../resources/assets/js/main.js"></script>
	
	<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script> -->
	<!--  -->
    
    <script type="text/javascript"> 
     
    var goUrlList = "/codeGroup/codeGroupList"; 			/* #-> */
	var goUrlInst = "/codeGroup/codeGroupInst"; 			/* #-> */
	var goUrlUpdt = "/codeGroup/codeGroupUpdt";				/* #-> */
	var goUrlUele = "/codeGroup/codeGroupUele";				/* #-> */
	var goUrlDele = "/codeGroup/codeGroupDele";				/* #-> */
	
	var mainKey = $("input:hidden[name=mainKey]");
	
	var seq = $("input:hidden[name=ifcgSeq]");				/* #-> */
	
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
	
	$("#btnList").on("click", function(){
		formVo.attr("action", goUrlList).submit();
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
	
	
	</script>
    
    <!-- 
	<script type="text/javascript"> 
	
	
    function test() {
    	alert("test");
    	
    	if(document.getElementById("ifcgName").value == '' || document.getElementById("ifcgName").value==null) {
        	alert("입력해 주세요...")
        	document.getElementById("ifcgName").valud= "";
        	document.getElementById("ifcgName").focus();
        	return false;
        } else {
        	alert("코드그룹이름 : " + document.getElementById('ifcgName').value);
        	alert("설명 : " + document.getElementById('explain').value);
        	alert("사용여부 : " + document.getElementById('UseNy').options[document.getElementById('UseNy').selectedIndex].value);
        	alert("성별 : " + document.querySelector("input[name='gender']:checked").value);;
        	  
            for (var i=0; i<document.getElementsByName("checkbox").length; i++) {
                if (document.getElementsByName("checkbox")[i].checked == true) {
                    alert("체크박스 : " + document.getElementsByName("checkbox")[i].value);
                }
            }
        	return false;
        }
    	
    }
    
    
    
    
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
    
    
    </script>
     -->
    
    <script src="https://kit.fontawesome.com/20c294a34b.js" crossorigin="anonymous"></script>
    
    
    
</body>

</html>