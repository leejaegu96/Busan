<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Login V2</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="../resources/assets/css/login.css">

</head>
<body>
	<div class="limiter">
		<div class="container-login150">
			<div class="wrap-login150">
				<h4 class="mb-3">Create your learner account</h4>
				<span>* 표시 해둔 사항은 필수입니다.</span>
				<form id="form" name="form" method="post" >
					<div class="row">
						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="ifmmId">Id *</label>
								<input type="hidden" id="ifmmIdAllowedNy" name="ifmmIdAllowedNy" value="0">
								<input type="text" class="form-control" id="ifmmId" name="ifmmId" maxlength="20" placeholder="영문,숫자,4~15자리">
								<div class="invalid-feedback" id="ifmmIdFeedback"></div>
							</div>
							<div class="col-md-6 mb-3">
								<label for="ifmmName">Name *</label>
								<input type="text" class="form-control" id="ifmmName" name="ifmmName">
							</div>
						</div>

						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="ifmmPassword">Password *</label>
								<input type="hidden" id="ifmmPasswordAllowedNy" name="ifmmPasswordAllowedNy" value="0">
								<input type="password" class="form-control" name="ifmmPassword" id="ifmmPassword" placeholder="영문,숫자,특수문자 10자리~20자리" value="" required>
								<div class="invalid-feedback" id="ifmmPasswordFeedback"></div>
							</div>
							<div class="col-md-6 mb-3">
								<label for="ifmmPasswordChk">Password Check *</label>
								<input type="hidden" id="ifmmPasswordAllowedNy" name="ifmmPasswordAllowedNy" value="0">
								<input type="password" class="form-control" name="ifmmPasswordChk" id="ifmmPasswordChk" placeholder="" value="" required>
								<div class="invalid-feedback" id="ifmmPasswordChkFeedback"></div>
							</div>
						</div>

						<div class="mb-3">
							<label for="user_email">User email *</label>
							<div class="input-group">
								<input type="text" id="Email" name="Email" class="form-control" placeholder="User email">
								<span class="input-group-text">@</span>
								<input type="text" id="Domain" name="Domain" class="form-control" placeholder="Domain">
								<select class="form-select" name="ifmmEmailDomain" id="ifmmEmailDomain">
									<option value="11">직접입력</option>
									<option value="8">naver.com</option>
									<option value="9">google.com</option>
									<option value="10">daum.net</option>
								</select>
							</div>
							<input type="hidden" class="form-control" id="ifmmEmail" name="ifmmEmail">
							<input class="form-text" type="checkbox" name="ifmmMailNy" value="1">
							<input class="form-text" type="hidden" name="ifmmMailNy" value="0">
							<label class="form-text" for="ifmmMailNy"> E-mail을 통한 소식/정보 수신을 동의하시겠습니까? </label>
						</div>

						<hr class="mb-4">
						<div class="container-login100-form-btn">
							<div class="wrap-login100-form-btn">
								<div class="login100-form-bgbtn"></div>
								<button class="login100-form-btn" type="button" id="btnSave">Continue to checkout</button>
							</div>
						</div>
				</form>
			</div>
		</div>
	</div>


</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/20c294a34b.js" crossorigin="anonymous"></script>

<script>
var goUrlInst = "/login/loginInst";
var form = $("form[name = form]");

let idC = document.form.ifmmId;
let nameC = document.form.ifmmName;
let passwordC = document.form.ifmmPassword;
let passwordCh = document.form.ifmmPasswordChk;
let genderC = document.form.ifmmGender;
let dobC = document.form.ifmmDob;
let emailC = document.form.ifmmEmail;
let emailCh = document.form.Email;
let phoneC = document.form.ifmmPhone;
let phoneCa = document.form.ifmmPhoneCarrier;
let phone1C = document.form.inputPhone1;
let phone2C = document.form.inputPhone2;
let phone3C = document.form.inputPhone3;
let addressC = document.form.ifmmDetailedAddress;
let pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{10,20}$/;

$("#btnSave").on("click", function(){
    if(idC.value == "" || idC.value == null){
        alert("아이디를 입력하세요.");
        idC.focus();
        return false;
    }else if(nameC.value == ""){
        alert("이름을 입력하세요.");
        nameC.focus();
        return false;
    }else if(!pwdCheck.test(passwordC.value)) {
        alert("비밀번호는 영문자+숫자+특수문자 조합으로 10~20자리 사용해야 합니다.");
        passwordC.focus();
        return false;
    }else if(passwordC.value != passwordCh.value) {
        alert("비밀번호가 일치하지 않습니다..");
        passwordCh.focus();
        return false;
    }else if(genderC.value !== "1" && genderC.value !== "2" && genderC.value !== "3"){
        alert("성별을 선택하세요.");
        genderC.focus();
        return false;
    }else if(dobC.value == ""){
        alert("생년월일을 입력하세요.");
        dobC.focus();
        return false;
    }else if(emailC.value == ""){
        alert("이메일을 입력하세요.");
        emailCh.focus();
        return false;
    }else if(phoneCa.value !== "4" && phoneCa.value !== "5" && phoneCa.value !== "6" && phoneCa.value !== "7"){
        alert("통신사를 선택하세요.");
        phoneCa.focus();
        return false;
    }else if(phone1C.value == ""){
        alert("전화번호를 선택하세요.");
        phone1C.focus();
        return false;
    }else if(phone2C.value == ""){
        alert("전화번호 앞자리를 입력하세요.");
        phone2C.focus();
        return false;
    }else if(phone3C.value == ""){
        alert("전화번호 뒷자리를 입력하세요.");
        phone3C.focus();
        return false;
    }else if(addressC.value == ""){
        alert("상세주소를 입력하세요.");
        residC.focus();
        return false;
    }else {
		form.attr("action", goUrlInst).submit();
    }
}); 

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
			document.getElementById("ifmmIdFeedback").innerText = "영문, 숫자, 특수문자 포함 4~15자를 입력해주세요.";
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
		}else if(!pwdCheck.test(passwordC.value)){
			document.getElementById("ifmmPassword").classList.add('is-invalid');
			document.getElementById("ifmmPasswordFeedback").classList.remove('valid-feedback');
			document.getElementById("ifmmPasswordFeedback").classList.add('invalid-feedback');
			document.getElementById("ifmmPasswordFeedback").innerText = "영문,숫자, 특수문자를 혼합하여 입력해주세요.";
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

</html>