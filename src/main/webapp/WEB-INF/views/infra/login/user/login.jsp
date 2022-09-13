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
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form">
					<span class="login100-form-title p-b-26">
						Welcome
					</span><br><br>
					<span class="login100-form-title p-b-48">
						<i class="fa-solid fa-book-open" style="font-size: 50px;"></i><br>
					</span><br><br>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
						<input class="input100" type="text" name="email">
						<span class="focus-input100" data-placeholder="Email"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input class="input100" type="password" name="pass">
						<span class="focus-input100" data-placeholder="Password"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn" type="button" onclick="location.href='../home/home';">								
								Login
							</button>
						</div>
					</div>
					<div class="container text-center fluid" style="height:200px;">
						<div class="row align-items-center" style="margin-top: 30px; flex-direction: row; justify-content:center">
							<div class="btn" style="width:50px; height:50px; border: 0; background-color:#00B818; border-radius:100%; justify-content: center; align-items: center; margin-right: 10px; display:flex; ">
								<img src="../resources/assets/images/logo/naver.png" style="width:30px; height:30px" >
							</div>
							<div class="btn" style="width:50px; height:50px; border: 0; background-color:#FFE812; border-radius:100%; justify-content: center; align-items: center; margin-right: 10px; display:flex;">
								<img src="../resources/assets/images/logo/kakao.png" style="width:40px; height:30px" >
							</div>
							<div class="btn" style="width:50px; height:50px; border: 0; background-color:#314C7B; border-radius:100%; justify-content: center; align-items: center; margin-right: 10px; display:flex;">
								<img src="../resources/assets/images/logo/facebook.png" style="width:50px; height:40px" >
							</div>
							<div class="" style="width:50px; height:50px; border: 0; background-color:white; border:solid 1px #e6e6e6; border-radius:100%; justify-content: center; align-items: center; margin-right: 10px; display:flex">
								<img src="../resources/assets/images/logo/google.png" style="width:18px; height:18px; cursor:pointer;" >
							</div>
						</div>
	
						<div class="text-center p-t-115" style="padding-top:90px;">
							<span class="txt1">
								Don’t have an account?
							</span>
	
							<a class="txt2" href="#" onClick="location.href='signUp'" style="cursor:pointer;">
								Sign Up
							</a>
							<br>
							<div class="cover">
								<a class="txt2" href="#" onClick="location.href='Find/user_LoginForm_IdPwdFindInput.html'">
									Forgot your ID?
								</a>
								&nbsp;&nbsp;&nbsp;
								<a class="txt2" href="#" onClick="location.href='Find/user_LoginForm_IdPwdFindInput.html'">
									Forgot your Password?
								</a>
							</div>
							</div>
						</div>
					</div>
					
				</form>
			</div>
		</div>
	</div>

</body>
<script src="https://kit.fontawesome.com/20c294a34b.js" crossorigin="anonymous"></script>
<script type="text/javascript">

</script>
</html>