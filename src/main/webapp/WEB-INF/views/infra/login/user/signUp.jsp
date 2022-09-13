<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V2</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
    <link rel="stylesheet" href="../resources/assets/css/login.css">

<style type="text/css">

</style>

</head>


<body>
	
	<div class="limiter">
		<div class="container-login150">
			<div class="wrap-login150">
				<h4 class="mb-3">Create your learner account</h4>
		          <form class="needs-validation" novalidate>
		            <div class="row">
		              <div class="col-md-6 mb-3">
		                <label for="username">Name</label>
		                <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
		                <div class="invalid-feedback">
		                  Valid name is required.
		                </div>
		              </div>
		              <div class="col-md-6 mb-3">
		                <label for="user_nickname">Nickname</label>
		                <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
		                <div class="invalid-feedback">
		                  Valid last nickname is required.
		                </div>
		              </div>
		            </div>
					
					<div class="row">
		              <div class="col-md-6 mb-3">
		                <label for="username">Password</label>
		                <input type="password" class="form-control" id="Password" placeholder="" value="" required>
		                <div class="invalid-feedback">
		                  Valid password is required.
		                </div>
		              </div>
		              <div class="col-md-6 mb-3">
		                <label for="username">Password Check</label>
		                <input type="password" class="form-control" id="Password" placeholder="" value="" required>
		                <div class="invalid-feedback">
		                  Valid password is required.
		                </div>
		              </div>
					</div>
					
					<div class="row">
		              <div class="col-md-6 mb-3">
		                <label for="username">Gender</label>
		                <select class="form-select" id="validationCustom04">
							<option selected value="">Male</option>
							<option>
								<span>Female</span>
							</option>
							<option>
								<span>etc..</span>
							</option>
						</select>
		                <div class="invalid-feedback">
		                  Valid password is required.
		                </div>
		              </div>
		              <div class="col-md-6 mb-3">
		                <label for="username">Date Of Birth</label>
		                <input type="date" class="form-control" id="Password" placeholder="" value="" required>
		                <div class="invalid-feedback">
		                  Valid password is required.
		                </div>
		              </div>
					</div>
					
					
		            <div class="mb-3">
		              <label for="user_email">User email</label>
		              <div class="input-group">
		                <input type="text" id="inputEmail" class="form-control" placeholder="User email" aria-label="Username" required>
						<span class="input-group-text">@</span>
						<select class="form-select" id="validationCustom04">
							<option selected value="">naver.com</option>
							<option>
								<span>google.com</span>
							</option>
							<option>
								<span>hanmail.net</span>
							</option>
						</select>
		              </div>
		              <input class="form-text" type="checkbox" id="autoSizingCheck_1">
					  <label class="form-text" for="autoSizingCheck_1">
						E-mail을 통한 소식/정보 수신을 동의하시겠습니까? 
					  </label>
		            </div>
		
<!-- 
		            <div class="mb-3">
		              <label for="email">Email <span class="text-muted">(Optional)</span></label>
		              <input type="email" class="form-control" id="email" placeholder="you@example.com">
		              <div class="invalid-feedback">
		                Please enter a valid email address for shipping updates.
		              </div>
		            </div>
 -->
		            
		            <div class="mb-3">
		            	<label for="user_email">User Phone</label>
			            <div class="input-group">
			            	<select class="form-select" id="inputPhone" required>
								<option selected value="">SKT</option>
								<option>
									<span>KT</span>
								</option>
								<option>
									<span>LG</span>
								</option>
							</select>
							<select class="form-select" id="inputPhone" required>
								<option selected value="">010</option>
								<option>
									<span>011</span>
								</option>
								<option>
									<span>019</span>
								</option>
							</select>
							<span class="input-group-text">-</span>
							<input type="text" id="inputPhone" class="form-control"  required>
							<span class="input-group-text">-</span>
							<input type="text" id="inputPhone" class="form-control"  required>
							<button class="btn btn-outline-secondary" type="button" id="button-addon2">인증번호 요청</button>
						</div>
						<div class="col-6">
							<div class="input-group md-3" style="padding-top: 5px;">
								<input type="text" class="form-control" placeholder="Code Number" aria-label="Recipient's username" aria-describedby="button-addon2" required>
								<button class="btn btn-outline-secondary" type="button" id="button-addon2">인증번호 확인</button>
							</div>
						</div>
						<input class="form-text" type="checkbox" id="autoSizingCheck_1">
					    <label class="form-text" for="autoSizingCheck_1">
					  	  SMS을 통한 소식/정보 수신을 동의하시겠습니까? 
					    </label>
					</div>
		
		            <div class="mb-3">
		              <label for="address">Address</label>
		              <div class="input-group">
						<div class="col-6">
							<div class="input-group">
								<input type="text" id="inputAdress" class="form-control" placeholder="Zip code" aria-label="Recipient's username" aria-describedby="button-addon2" required>
								<button class="btn btn-outline-secondary" type="button" id="button-addon2">Search</button>
							</div>
						</div>
						<div class="input-group" style="padding-top: 5px;">
							<input type="text" class="form-control" placeholder="Detailed Address" aria-label="Recipient's username" aria-describedby="button-addon2" required>
						</div>
						<div class="input-group" style="padding-top: 5px;">
							<input type="text" class="form-control" placeholder="Detailed Address" aria-label="Recipient's username" aria-describedby="button-addon2" required>
						</div>
				  	  </div>
		              <div class="invalid-feedback">
		                Please enter your shipping address.
		              </div>
		            </div>
		            
		            <div class="mb-3">
		              <label for="address">Profile</label>
		              <div class="row">
			              <div class="col-10">
				              <div class="input-group mb-3">
								  <input type="file" class="form-control" id="upload_file" accept="image/*" required=true>
								  <label class="input-group-text" for="inputGroupFile02">Upload</label>
							  </div>
						  </div>
						  <div class="col-2">
						  	<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" >미리보기 </button>
						  </div>
					  </div>
					  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-body">
									<form>
										<div class="mb-3" style="text-align:center;">
											<img src="" id="img_section" style="width: 300px; height: 350px;">
									    </div>
									</form>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					  </div>
		              <div class="invalid-feedback">
		                Please enter your shipping address.
		              </div>
		            </div>
		
		            <hr class="mb-4">
   					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn" type="button" onClick="location.href='login'">								
								Continue to checkout
							</button>
						</div>
					</div>
		            
		            <!-- <button class="btn btn-primary btn-lg btn-block" type="submit" onClick="location.href='../Main/HomeForm.html'">Continue to checkout</button> -->
				</form>
			</div>
		</div>
	</div>


</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/20c294a34b.js" crossorigin="anonymous"></script>
<script type="text/javascript">
//Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';

  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');

    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();

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
</html>