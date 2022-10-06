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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="../resources/assets/css/login.css">

<style type="text/css">
</style>

</head>


<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form id="form" name="form" method="post">
					<div class="bd-example">
				      	<br><br>
				      	<span class="login100-form-title p-b-26"> Welcome </span><br> <br> <span class="login100-form-title p-b-48" onClick="location.href='/home/home'" style="cursor:pointer;"> 
				      		<i class="fa-solid fa-book-open" style="font-size: 50px;"></i><br>
						</span><br> <br>

						<div class="wrap-input100 validate-input">
							<input class="input100" type="text" id="ifmmId" name="ifmmId" value="dlworn123"> <span class="focus-input100" id="ifmmId" name="ifmmId" data-placeholder="ID" style="text-align: center;"></span>
						</div>
	
						<div class="wrap-input100 validate-input" data-validate="Enter password">
							<span class="btn-show-pass"> <i class="zmdi zmdi-eye"></i>
							</span> <input class="input100" type="password" id="ifmmPassword" name="ifmmPassword" value="dlworn123!"> <span class="focus-input100" id="ifmmPassword" name="ifmmPassword" data-placeholder="Password" style="text-align: center;"></span>
						</div>
	
						<div class="container-login100-form-btn">
							<div class="wrap-login100-form-btn">
								<div class="login100-form-bgbtn"></div>
								<button type="button" class="login100-form-btn" id="btnLogin">Login</button>
							</div>
						</div>
						<div class="container text-center fluid" style="height: 200px;">
							<div class="row align-items-center" style="margin-top: 30px; flex-direction: row; justify-content: center">
								<div class="btn" style="width: 50px; height: 50px; border: 0; background-color: #00B818; border-radius: 100%; justify-content: center; align-items: center; margin-right: 10px; display: flex;">
									<img src="../resources/assets/images/logo/naver.png" style="width: 30px; height: 30px">
								</div>
								<div class="btn" style="width: 50px; height: 50px; border: 0; background-color: #FFE812; border-radius: 100%; justify-content: center; align-items: center; margin-right: 10px; display: flex;">
									<img src="../resources/assets/images/logo/kakao.png" style="width: 40px; height: 30px">
								</div>
								<div class="btn" style="width: 50px; height: 50px; border: 0; background-color: #314C7B; border-radius: 100%; justify-content: center; align-items: center; margin-right: 10px; display: flex;">
									<img src="../resources/assets/images/logo/facebook.png" style="width: 50px; height: 40px">
								</div>
								<div class="" style="width: 50px; height: 50px; border: 0; background-color: white; border: solid 1px #e6e6e6; border-radius: 100%; justify-content: center; align-items: center; margin-right: 10px; display: flex">
									<img src="../resources/assets/images/logo/google.png" style="width: 18px; height: 18px; cursor: pointer;">
								</div>
							</div>
	
							<div class="text-center p-t-115" style="padding-top: 90px;">
								<span class="txt1"> Don’t have an account? </span> <a class="txt2" href="signUp" style="cursor: pointer;"> Sign Up </a> <br>
								<div class="cover">
									<a class="txt2" href="findIdPassword" style="cursor: pointer;"> Forgot your ID? </a> &nbsp;&nbsp;&nbsp; <a class="txt2" href="findIdPassword" style="cursor: pointer;"> Forgot your Password? </a>
								</div>
							</div>
						</div>
				    </div>
					    
				</form>
			</div>

		</div>
	</div>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://kit.fontawesome.com/20c294a34b.js" crossorigin="anonymous"></script>
<!-- 
<script type="text/javascript">
$("#btnLogin").on("click", function(){
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		/* ,dataType:"json" */
		,url: "/login/loginProc"
		/* ,data : $("#formLogin").serialize() */
		,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val()}
		,success: function(response) {
			if(response.rt == "success") {
				location.href = "/home/home";
			} else {
				alert("회원없음");
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
});
</script>
 -->
<script type="text/javascript">
$("#btnLogin").on("click", function(){
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		/* ,dataType:"json" */
		,url: "/login/loginProc"
		/* ,data : $("#formLogin").serialize() */
		,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val()}
		,success: function(response) {
			if( $("#ifmmId").val() == "dlworn123") {
				if(response.rt == "success") {
					location.href = "/";
				} else {
					alert("회원없음");
				}
			} else {
				if(response.rt == "success") {
					location.href = "/home/home";
				} else {
					alert("회원없음")
				}
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
});
</script>

<!-- 
<script type="text/javascript">
$("#btnLogin1").on("click", function(){
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		/* ,dataType:"json" */
		,url: "/login/loginProc1"
		/* ,data : $("#formLogin").serialize() */
		,data : { "ifmmEmail" : $("#ifmmEmail").val(), "ifmmPassword" : $("#ifmmPassword").val()}
		,success: function(response) {
			if(response.rt == "success") {
				location.href = "/member/memberList";
			} else {
				alert("회원없음");
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
});
</script>
 -->
</html>