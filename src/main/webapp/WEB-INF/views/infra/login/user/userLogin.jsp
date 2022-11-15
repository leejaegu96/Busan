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
<link rel="stylesheet" href="../resources/assets/css/login.css">
</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form id="form" name="form" method="post">
					<div class="bd-example">
						<br><span class="login100-form-title p-b-26"> Welcome </span><br>

						<div class="wrap-input100 validate-input">
							<input class="input100" type="text" id="ifmmId" name="ifmmId">
							<span class="focus-input100" id="ifmmId" name="ifmmId" data-placeholder="ID" style="text-align: center;"></span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="Enter password">
							<input class="input100" type="password" id="ifmmPassword" name="ifmmPassword">
							<span class="focus-input100" id="ifmmPassword" name="ifmmPassword" data-placeholder="Password" style="text-align: center;"></span>
						</div>

						<div class="container-login100-form-btn">
							<div class="wrap-login100-form-btn">
								<div class="login100-form-bgbtn"></div>
								<button type="button" class="login100-form-btn" id="btnLogin">Login</button>
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
<script type="text/javascript">
    $("#btnLogin").on("click", function() {
        $.ajax({
            async : true,
            cache : false,
            type : "post",
            url : "/login/loginProc",
            data : {
                "ifmmId" : $("#ifmmId").val(),
                "ifmmPassword" : $("#ifmmPassword").val()
            },
            success : function(response) {
                if (response.rt == "success") {
                    location.href = "/home/home";
                } else {
                    alert("회원없음")
                }
            },
            error : function(jqXHR, textStatus, errorThrown) {
                alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
            }
        });
    });
</script>
</html>