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
	<div class="limiter">
		<div class="container-login150">
			<div class="wrap-login150">
				<h4 class="mb-3">Create your learner account</h4>
		          <form id="form" name="form" method="post">
		            <div class="row">
		              <div class="col-md-6 mb-3">
		                <label for="ifmmId">Id</label>
		                <input type="hidden" id="ifmmIdAllowedNy" name="ifmmIdAllowedNy" value="0">
		                <input type="text" class="form-control" id="ifmmId" name="ifmmId" value="<c:out value="${item.ifmmId}"/>" maxlength="20" placeholder="영문,숫자,4~15자리">
		                <div class="invalid-feedback" id="ifmmIdFeedback"></div>
		              </div>
		              <div class="col-md-6 mb-3">
		                <label for="ifmmName">Name</label>
		                <input type="text" class="form-control" name="ifmmName" >
		              </div>
		            </div>
					
					<div class="row">
		              <div class="col-md-6 mb-3">
		                <label for="ifmmPassword">Password</label>
		                <input type="hidden" id="ifmmPasswordAllowedNy" name="ifmmPasswordAllowedNy" value="0">
		                <input type="password" class="form-control" name="ifmmPassword" id="ifmmPassword" placeholder="" value="" required>
		                <div class="invalid-feedback" id="ifmmPasswordFeedback"></div>
		              </div>
		              <div class="col-md-6 mb-3">
		                <label for="ifmmPasswordChk">Password Check</label>
		                <input type="hidden" id="ifmmPasswordAllowedNy" name="ifmmPasswordAllowedNy" value="0">
		                <input type="password" class="form-control" name="ifmmPasswordChk" id="ifmmPasswordChk" placeholder="" value="" required>
		                <div class="invalid-feedback" id="ifmmPasswordChkFeedback"></div>
		              </div>
					</div>
					
					<div class="row">
		              <div class="col-md-6 mb-3">
		                <label for="username">Gender</label>
		                <select class="form-select" name="ifmmGender">
							<option value="1">Male</option>
							<option value="2">Female</option>
							<option value="3">etc</option>
						</select>
		              </div>
		              <div class="col-md-6 mb-3">
		                <label for="ifmmDob">Date Of Birth</label>
						<input type="text" class="form-control" id="ifmmDob" name="ifmmDob">
		              </div>
					</div>
					
					
		            <div class="mb-3">
		              <label for="user_email">User email</label>
		              <div class="input-group">
		                <input type="text" id="Email" name="Email" class="form-control" placeholder="User email">
						<span class="input-group-text">@</span>
						<input type="text" id="Domain" name="Domain" class="form-control" placeholder="Domain" >
						<select class="form-select" name="ifmmEmailDomain" id="ifmmEmailDomain">
							<option value="11" >직접입력</option>
							<option value="8" >naver.com</option>
							<option value="9" >google.com</option>
							<option value="10" >daum.net</option>
						</select>
		              </div>
		              <input type="text" class="form-control" id="ifmmEmail" name="ifmmEmail" >
		              <input class="form-text" type="checkbox" name="ifmmMailNy" value="1" >
		              <input class="form-text" type="hidden" name="ifmmMailNy" value="0" >
					  <label class="form-text" for="ifmmMailNy" >
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
		            	<input type="hidden" id="inputPhone2AllowedNy" name="inputPhone2AllowedNy" value="0">
			            <div class="input-group">
			            	<select class="form-select" id="ifmmPhoneCarrier" name="ifmmPhoneCarrier" >
								<option value="4">SKT</option>
								<option value="5">KT</option>
								<option value="6">LG</option>
								<option value="7">기타</option>
							</select>
							<select class="form-select" id="inputPhone1" required>
								<option>010</option>
								<option>011</option>
								<option>019</option>
							</select>
							<span class="input-group-text">-</span>
							<input type="text" id="inputPhone2" class="form-control" maxlength='4' onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
							<span class="input-group-text">-</span>
							<input type="text" id="inputPhone3" class="form-control" maxlength='4' onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
							
							<!-- <button class="btn btn-outline-secondary" type="button" id="button-addon2">인증번호 요청</button> -->
						</div>
						<div class="invalid-feedback" id="inputPhone2ChkFeedback"></div>
						<input type="text" id="ifmmPhone" name="ifmmPhone" class="form-control" >
						<!-- 
						<div class="col-6">
							<div class="input-group md-3" style="padding-top: 5px;">
								<input type="text" class="form-control" placeholder="Code Number" aria-label="Recipient's username" aria-describedby="button-addon2" required>
								<button class="btn btn-outline-secondary" type="button" id="button-addon2">인증번호 확인</button>
							</div>
						</div>
						 -->
						<input class="form-text" type="checkbox" name="ifmmSmsNy" value="1" >
						<input class="form-text" type="hidden" name="ifmmSmsNy" value="0" >
					    <label class="form-text" for="ifmmSmsNy">
					  	  SMS을 통한 소식/정보 수신을 동의하시겠습니까? 
					    </label>
					</div>
		
		            <div class="mb-3">
		              <label for="address">Address</label>
		              <div class="input-group">
						<div class="col-6">
							<div class="input-group">
								<input type="text" id="sample6_postcode" class="form-control" placeholder="우편번호" aria-label="Recipient's username" aria-describedby="button-addon2" required>
								<button class="btn btn-outline-secondary" type="button"  onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
									<i class="fa-solid fa-magnifying-glass"></i>
								</button>
								<button class="btn btn-outline-secondary" type="button" id="btnAddressClear" value="리셋하기">
									<i class="fa-solid fa-xmark"></i>
								</button>
							</div>
						</div>
						<div class="input-group" style="padding-top: 5px;">
							<input type="text" class="form-control" id="sample6_address" placeholder="주소" aria-label="Recipient's username" aria-describedby="button-addon2" required>
						</div>
						<div class="input-group" style="padding-top: 5px;">
							<input type="text" class="form-control" id="sample6_detailAddress" placeholder="상세주소" aria-label="Recipient's username" aria-describedby="button-addon2" required>
							<input type="text" class="form-control" id="sample6_extraAddress" placeholder="참고항목" aria-label="Recipient's username" aria-describedby="button-addon2" required>
						</div>
						<input type="text" class="form-control" id="ifmmAddress" name="ifmmAddress">
				  	  </div>
		            </div>
		            
		            <div class="mb-3">
		              <label for="address">Profile</label>
		              <div class="row">
			              <div class="col">
				              <div class="input-group mb-3">
								  <input type="file" class="form-control" id="upload_file" accept="image/*" required=true>
								  <label class="input-group-text" for="inputGroupFile02">Upload</label>
							  </div>
						  </div>
					  </div>
		            </div>
		
		            <hr class="mb-4">
   					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn" type="button" id="btnSave">								
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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/20c294a34b.js" crossorigin="anonymous"></script>
<!-- 
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
 -->

<script type="text/javascript">
/* 
$("#ifmmSmsNy").on("click", function(){
	alert(document.getElementById('ifmmSmsNy').value);
	return false;
});
$("#ifmmMailNy").on("click", function(){
	alert(document.getElementById('ifmmMailNy').value);
	return false;
});
 */
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
	if(Domain.value == null || Domain.value == '') {
		let str = Email.value + '@' + ifmmEmailDomain.value;
		document.getElementById('ifmmEmail').value = str;
	}else {
		let str = Email.value + '@' + Domain.value;
		document.getElementById('ifmmEmail').value = str;
	}
}
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
<script type="text/javascript">
//우편번호
const sample6_address = document.getElementById('sample6_address');
const sample6_extraAddress = document.getElementById('sample6_extraAddress');
const sample6_detailAddress = document.getElementById('sample6_detailAddress');

sample6_address.addEventListener('focusout', callback);
sample6_extraAddress.addEventListener('focusout', callback);
sample6_detailAddress.addEventListener('focusout', callback);

function callback() {
let str = sample6_address.value + sample6_extraAddress.value + " " + sample6_detailAddress.value;
document.getElementById('ifmmAddress').value = str;
}

</script>
<script type="text/javascript">
// 아이디 확인
	$("#ifmmId").on("focusout", function(){
		var id = $("#ifmmId").val();
		var num = id.search(/[0-9]/g);
		var eng = id.search(/[a-z]/ig);
		if(id.length < 1){
			document.getElementById("ifmmId").classList.add('is-invalid');
			document.getElementById("ifmmIdFeedback").classList.remove('valid-feedback');
			document.getElementById("ifmmIdFeedback").classList.add('invalid-feedback');
			document.getElementById("ifmmIdFeedback").innerText = "아이디를 입력해주세요.";
			document.getElementById("ifmmIdAllowedNy").value = 0;
			return false;
		}else if(id.length < 4 || id.length > 15){
			document.getElementById("ifmmId").classList.add('is-invalid');
			document.getElementById("ifmmIdFeedback").classList.remove('valid-feedback');
			document.getElementById("ifmmIdFeedback").classList.add('invalid-feedback');
			document.getElementById("ifmmIdFeedback").innerText = "영문, 숫자 포함 4~15자를 입력해주세요.";
			document.getElementById("ifmmIdAllowedNy").value = 0;
			return false;
		} else if(id.search(/\s/) != -1){
			document.getElementById("ifmmId").classList.add('is-invalid');
			document.getElementById("ifmmIdFeedback").classList.remove('valid-feedback');
			document.getElementById("ifmmIdFeedback").classList.add('invalid-feedback');
			document.getElementById("ifmmIdFeedback").innerText = "공백 없이 입력해주세요.";
			document.getElementById("ifmmIdAllowedNy").value = 0;
			return false;
		} else if(num < 0 || eng < 0){
			document.getElementById("ifmmId").classList.add('is-invalid');
			document.getElementById("ifmmIdFeedback").classList.remove('valid-feedback');
			document.getElementById("ifmmIdFeedback").classList.add('invalid-feedback');
			document.getElementById("ifmmIdFeedback").innerText = "영문,숫자 중 2가지 이상을 혼합하여 입력해주세요.";
			document.getElementById("ifmmIdAllowedNy").value = 0;
			return false;
		}
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/login/checkId"
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
// 휴대폰 번호
</script>

<script type="text/javascript">
	$('#ifmmEmailDomain').change(function(){
	   $("#ifmmEmailDomain option:selected").each(function () {
			
			if($(this).val()== '11'){ //직접입력일 경우
				 $("#Domain").val('');                        //값 초기화
				 $("#Domain").attr("disabled",false); //활성화
			}else{ //직접입력이 아닐경우
				 $("#Domain").val($(this).text());      //선택값 입력
				 $("#Domain").attr("disabled",true); //비활성화
			}
	   });
	});

</script>

<script type="text/javascript">

var goUrlInst = "/login/loginInst";

var form = $("form[name = form]");

$("#btnAddressClear").on("click", function() {
	$("#sample6_postcode").val('');
	$("#sample6_address").val('');
	$("#sample6_detailAddress").val('');
	$("#sample6_extraAddress").val('');
	$("#ifmaLatArray0").val('');
	$("#ifmaLngArray0").val('');
});

$("#btnSave").on("click", function(){
	form.attr("action", goUrlInst).submit();
}); 

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

function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
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
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
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
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}
</script>
</html>