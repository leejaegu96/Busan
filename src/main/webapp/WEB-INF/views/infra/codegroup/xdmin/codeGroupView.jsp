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
                <div class="dropdown">
               		<span style="font-size: 24px;">CodeGroup Management</span>
                	<button class="btn" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="float:right">
                		<i class="fa-regular fa-face-laugh"></i>
                	</button>
                	<ul class="dropdown-menu">
					  <li>
		                <a class="dropdown-item" href="#">
		                  <div class="d-flex">
		                    <div class="flex-shrink-0 me-3" >
		                      <div class="avatar">
		                        <img src="../resources/assets/images/faces/1.jpg" alt="" class="w-px-40 h-auto rounded-circle" style="width:40px;">
		                      </div>
		                    </div>
		                    <div class="flex-grow-1">
		                      <span class="fw-semibold d-block">JaeguLee</span>
		                      <small class="text-muted">Admin</small>
		                    </div>
		                  </div>
		                </a>
		              </li>
		              <li>
		                <div class="dropdown-divider"></div>
		              </li>
		              <li>
		                <a class="dropdown-item" href="#">
		                  <i class="bx bx-user me-2"></i>
		                  <span class="align-middle">My Profile</span>
		                </a>
		              </li>
		              <li>
		                <a class="dropdown-item" href="#">
		                  <i class="bx bx-cog me-2"></i>
		                  <span class="align-middle">Settings</span>
		                </a>
		              </li>
		              <li>
		                <a class="dropdown-item" href="#">
		                  <span class="d-flex align-items-center align-middle">
		                    <i class="flex-shrink-0 bx bx-credit-card me-2"></i>
		                    <span class="flex-grow-1 align-middle">Billing</span>
		                    <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
		                  </span>
		                </a>
		              </li>
		              <li>
		                <div class="dropdown-divider"></div>
		              </li>
		              <li>
		                <a class="dropdown-item" href="auth-login-basic.html">
		                  <i class="bx bx-power-off me-2"></i>
		                  <span class="align-middle">Log Out</span>
		                </a>
		              </li>
					</ul>
				</div>
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
		                            <form id="myform" name="form" method ="post">
		                            	<%-- <input type="hidden" name="ifcgSeq" value="<c:out value="${vo.ifcgSeq }"/>" /> --%>
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
													<label class="form-label">???????????? ??????</label>
													<input type="text" class="form-control" name="ifcgSeq"  value="<c:out value="${item.ifcgSeq }"/>">
												</div>
												<div class="col-6">
													<label class="form-label">???????????? ?????? (Another)</label>
													<input type="text" class="form-control" placeholder="??????(????????????), ??????">
												</div>
											</div>
											<div class="row" id="InputPadding">
												<div class="col-6">
													<label class="form-label">???????????? ?????? (??????)</label>
													<input type="text" class="form-control" id="ifcgName" name="ifcgName" value="<c:out value="${item.ifcgName }"/>" >
												</div>
												<div class="col-6">
													<label class="form-label">???????????? ?????? (??????)</label>
													<input type="text" class="form-control" name="ifcgEngName" placeholder="??????(????????????), ??????" value="<c:out value="${item.ifcgEngName }"/>">
												</div>
											</div>
											<div class="row" id="InputPadding">
												<div class="col-6">
													<label class="form-label">????????????</label>
													<select id="UseNy" class="form-select" >
														<option selected disabled>:??????:</option>
														<option value="1">Y</option>
														<option value="2">N</option>
													</select>
												</div>
												<div class="col-6">
													<label class="form-label">??????</label>
													<input type="text" class="form-control" name="ifcgOrder" placeholder="??????">
												</div>
											</div>
											<div class="row" id="InputPadding">
												<div class="col-6">
													<label class="form-label" >??????</label>
													<textarea class="form-control" id="explain" rows="2"></textarea>
												</div>
												<div class="col-6">
													<label class="form-label">????????????</label>
													<select id="inputState" class="form-select">
														<option selected disabled>:??????:</option>
														<option>Y</option>
														<option selected>N</option>
													</select>
												</div>
											</div>
											<div class="row" id="InputPadding">
												<div class="col-6">
													<label class="form-label">??????1(varchar type)</label>
													<input type="text" class="form-control" placeholder="??????(????????????), ??????">
												</div>
												<div class="col-6">
													<label class="form-label">??????2(varchar type)</label>
													<input type="text" class="form-control" placeholder="??????(????????????), ??????">
												</div>
											</div>
											<div class="row" id="InputPadding">
												<div class="col-6">
													<label class="form-label">??????3(varchar type)</label>
													<input type="text" class="form-control" placeholder="??????(????????????), ??????">
												</div>
												<div class="col-6">
													<label class="form-label">????????????</label>
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
													<label class="form-label">??????1(int type)</label>
													<input type="text" class="form-control" placeholder="??????">
												</div>
												<div class="col-6">
													<label class="form-label">??????2(int type)</label>
													<input type="text" class="form-control" placeholder="??????">
												</div>
											</div>
											<div class="row" id="InputPadding">
												<div class="col-6">
													<label class="form-label">??????3(int type)</label>
													<input type="text" class="form-control" placeholder="??????">
												</div>
												<div class="col-6">
													<label class="form-label">???????????????</label>
													<!-- 
													<input type="radio" id="gender1" name="gender" value="1">??????
													<input type="radio" id="gender2" name="gender" value="2">??????
													<input type="radio" id="gender3" name="gender" value="3">??????
													 -->
													<div class="row">
														<div class="col">
															<div class="form-check">
						                                        <input class="form-check-input" type="radio" id="gender1" name="gender" value="1">
						                                        <label class="form-check-label" for="gender1">
						                                            ??????
						                                        </label>
						                                    </div>
						                                </div>
						                                <div class="col">
						                                    <div class="form-check">
						                                        <input class="form-check-input" type="radio" id="gender2" name="gender" value="2">
						                                        <label class="form-check-label" for="gender2">
						                                            ??????
						                                        </label>
						                                    </div>
						                                </div>
						                                <div class="col">
						                                    <div class="form-check">
						                                        <input class="form-check-input" type="radio" id="gender3" name="gender" value="3">
						                                        <label class="form-check-label" for="gender3">
						                                            ??????
						                                        </label>
						                                    </div>
					                                    </div>
				                                   	</div>
												</div>
											</div>
											<div class="row" id="InputPadding">
												<div class="col-3">
													<label class="form-label">???????????????</label>
													<input type="text" class="form-control">
												</div>
												<div class="col-3">
													<label class="form-label">???????????????</label>
													<input type="text" class="form-control">
												</div>
												<div class="col-3">
													<label class="form-label">????????????IP</label>
													<input type="text" class="form-control">
												</div>
												<div class="col-3">
													<label class="form-label">????????????????????????</label>
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="row" id="InputPadding">
												<div class="col-6" style="text-align: left;">
													<button type="button" class="btn btn-secondary" onClick = "test();"><i class="fa-solid fa-bars"></i></button>
													
												</div>
												<div class="col-6" style="text-align: right;">
													<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal2"><i class="fa-solid fa-xmark"></i></button>
													<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
														<div class="modal-dialog">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title" id="exampleModalLabel">??????</h5>
																	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
																</div>
																<div class="modal-body" style="text-align: left;">
																  ?????? ?????????????????????????
																</div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-danger" data-bs-dismiss="modal" onClick="delete_row();">????????????</button>
																	<button type="button" class="btn btn-primary" data-bs-dismiss="modal">????????????</button>
																</div>
															</div>
														</div>
													</div>
													<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa-solid fa-trash-can"></i></button>
													<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
														<div class="modal-dialog">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title" id="exampleModalLabel">??????</h5>
																	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
																</div>
																<div class="modal-body" style="text-align: left;">
																  ?????? ?????????????????????????
																</div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-danger" data-bs-dismiss="modal" onClick="delete_row();">????????????</button>
																	<button type="button" class="btn btn-primary" data-bs-dismiss="modal">????????????</button>
																</div>
															</div>
														</div>
													</div>
													<button type="button" id="btnSave" class="btn btn-success" ><i class="fa-solid fa-bookmark"></i></button>
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
                        <p>Crafted with <span class="text-danger"><i class="bi bi-heart"></i></span> by <a
                                href="http://ahmadsaugi.com">A. Saugi</a></p>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="../resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="../resources/assets/js/bootstrap.bundle.min.js"></script>
	
	
	<script src="https://kit.fontawesome.com/20c294a34b.js" crossorigin="anonymous"></script>
	
    <script src="../resources/assets/vendors/apexcharts/apexcharts.js"></script>
    <script src="../resources/assets/js/pages/dashboard.js"></script>

	

    <script src="../resources/assets/js/main.js"></script>
    
    <script type="text/javascript">
    
    function test() {
    	alert("test");
    	
    	if(document.getElementById("ifcgName").value == '' || document.getElementById("ifcgName").value==null) {
        	alert("????????? ?????????...")
        	document.getElementById("ifcgName").valud= "";
        	document.getElementById("ifcgName").focus();
        	return false;
        } else {
        	alert("?????????????????? : " + document.getElementById('ifcgName').value);
        	alert("?????? : " + document.getElementById('explain').value);
        	alert("???????????? : " + document.getElementById('UseNy').options[document.getElementById('UseNy').selectedIndex].value);
        	alert("?????? : " + document.querySelector("input[name='gender']:checked").value);;
        	  
            for (var i=0; i<document.getElementsByName("checkbox").length; i++) {
                if (document.getElementsByName("checkbox")[i].checked == true) {
                    alert("???????????? : " + document.getElementsByName("checkbox")[i].value);
                }
            }
        	return false;
        }
    	
    }
    
    
    
    
    const reader = new FileReader();

    reader.onload = (readerEvent) => {
        document.querySelector("#img_section").setAttribute("src", readerEvent.target.result);
        //????????? ?????? ???????????? ???????????? img_section??? src ????????? readerEvent??? ???????????? ?????????
    };

    document.querySelector("#upload_file").addEventListener("change", (changeEvent) => {
        //upload_file ??? ????????????????????? ??????

        const imgFile = changeEvent.target.files[0];
        reader.readAsDataURL(imgFile);
        //???????????? ???????????? URL??? reader??? ??????
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
    
    var goUrlList = "/codeGroup/codeGroupList"; 			/* #-> */
	var goUrlInst = "/codeGroup/codeGroupInst"; 			/* #-> */
	var goUrlUpdt = "/codeGroup/codeGroupUpdt";				/* #-> */
	var goUrlUele = "/codeGroup/codeGroupUele";				/* #-> */
	var goUrlDele = "/codeGroup/codeGroupDele";				/* #-> */
	
	var seq = $("input:hidden[name=ifcgSeq]");				/* #-> */
	
	var form = $("form[name=form]");
	var formVo = $("form[name=formVo]");
	
	
	$("#btnSave").on("click", function(){
		if (seq.val() == "0" || seq.val() == ""){
	   		// insert
	   		if (validationInst() == false) return false;
	   		form.attr("action", goUrlInst).submit();
	   	} else {
	   		// update
	   		/* keyName.val(atob(keyName.val())); */
	   		if (validationUpdt() == false) return false;
	   		form.attr("action", goUrlUpdt).submit();
	   	}
	}); 
    
    
    
    </script>
    
    
</body>

</html>