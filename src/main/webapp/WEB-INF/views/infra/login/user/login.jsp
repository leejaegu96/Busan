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
						<br> <br>
						<span class="login100-form-title p-b-26"> Welcome </span>
						<br> <br>
						<span class="login100-form-title p-b-48" onClick="location.href='/home/home'" style="cursor: pointer;">
							<i class="fa-solid fa-book-open" style="font-size: 50px;"></i><br>
						</span>
						<br> <br>

						<div class="wrap-input100 validate-input">
							<input class="input100" type="text" id="ifmmId" name="ifmmId" value="dlworn123">
							<span class="focus-input100" id="ifmmId" name="ifmmId" data-placeholder="ID" style="text-align: center;"></span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="Enter password">
							<span class="btn-show-pass">
								<i class="zmdi zmdi-eye"></i>
							</span>
							<input class="input100" type="password" id="ifmmPassword" name="ifmmPassword" value="dlworn12!@">
							<span class="focus-input100" id="ifmmPassword" name="ifmmPassword" data-placeholder="Password" style="text-align: center;"></span>
						</div>

						<div class="container-login100-form-btn">
							<div class="wrap-login100-form-btn">
								<div class="login100-form-bgbtn"></div>
								<button type="button" class="login100-form-btn" id="btnLogin">Login</button>
							</div>
						</div>
						<div class="container text-center fluid" style="height: 200px;">
							<div class="row align-items-center" style="margin-top: 30px; flex-direction: row; justify-content: center">
								<div class="btn" id="naverBtn" style="width: 50px; height: 50px; border: 0; background-color: #00B818; border-radius: 100%; justify-content: center; align-items: center; margin-right: 10px; display: flex;">
									<img src="../resources/assets/images/logo/naver.png" style="width: 40px; height: 30px">
									<!-- 
									<div class="btn_login_wrap">
										<div id="naverIdLogin"></div>
									</div>
									 -->
								</div>
								<div class="btn" id="kakaoBtn" style="width: 50px; height: 50px; border: 0; background-color: #FFE812; border-radius: 100%; justify-content: center; align-items: center; margin-right: 10px; display: flex;">
									<img src="../resources/assets/images/logo/kakao.png" style="width: 40px; height: 30px">
								</div>
								<div class="btn" id="facebookBtn" onlogin="checkLoginState();" style="width: 50px; height: 50px; border: 0; background-color: #314C7B; border-radius: 100%; justify-content: center; align-items: center; margin-right: 10px; display: flex;">
									<img src="../resources/assets/images/logo/facebook.png" style="width: 50px; height: 40px">
								</div>
								<div class="" style="width: 50px; height: 50px; border: 0; background-color: white; border: solid 1px #e6e6e6; border-radius: 100%; justify-content: center; align-items: center; margin-right: 10px; display: flex">
									<img src="../resources/assets/images/logo/google.png" style="width: 18px; height: 18px; cursor: pointer;">
								</div>

								<button class="fb_login">Login with Facebook</button>
							</div>

							<div class="text-center p-t-115" style="padding-top: 90px;">
								<span class="txt1"> Don’t have an account? </span>
								<a class="txt2" href="signUp" style="cursor: pointer;"> Sign Up </a>
								<br>
								<div class="cover">
									<a class="txt2" href="findIdPassword" style="cursor: pointer;"> Forgot your ID? </a>
									&nbsp;&nbsp;&nbsp;
									<a class="txt2" href="findIdPassword" style="cursor: pointer;"> Forgot your Password? </a>
								</div>
							</div>
						</div>
					</div>
					<input type="hidden" name="name" />
					<input type="hidden" name="snsId" />
					<input type="hidden" name="email" />
					<input type="hidden" name="gender" />
					<input type="hidden" name="dob" />
					<input type="hidden" name="token" />
				</form>
			</div>

		</div>
	</div>

</body>
<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<!-- 카카오 로그인 -->
<!-- 네이버 로그인 -->
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<!-- 네이버 로그인 -->
<!-- 페이스북 로그인 -->
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script>
<!-- 페이스북 로그인 -->

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
    $("#btnLogin").on("click", function() {
        $.ajax({
            async : true,
            cache : false,
            type : "post"
            /* ,dataType:"json" */
            ,
            url : "/login/loginProc"
            /* ,data : $("#formLogin").serialize() */
            ,
            data : {
                "ifmmId" : $("#ifmmId").val(),
                "ifmmPassword" : $("#ifmmPassword").val()
            },
            success : function(response) {
                if ($("#ifmmId").val() == "dlworn123") {
                    if (response.rt == "success") {
                        location.href = "/";
                    } else {
                        alert("회원없음");
                    }
                } else {
                    if (response.rt == "success") {
                        location.href = "/home/home";
                    } else {
                        alert("회원없음")
                    }
                }
            },
            error : function(jqXHR, textStatus, errorThrown) {
                alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
            }
        });
    });

    Kakao.init('b9cf1eafc801ea58dba76198cda5831f'); // test 용
    console.log(Kakao.isInitialized());

    $("#kakaoBtn").on("click", function() {

        Kakao.Auth.login({
            success : function(response) {
                Kakao.API.request({
                    url : '/v2/user/me',
                    success : function(response) {

                        var accessToken = Kakao.Auth.getAccessToken();
                        Kakao.Auth.setAccessToken(accessToken);

                        var account = response.kakao_account;

                        console.log(response)
                        console.log("email : " + account.email);
                        console.log("picture : " + account.gender);
                        console.log("picture : " + account.birthday);
                        console.log("picture : " + account.birthday.substring(0, 2) + "-" + account.birthday.substring(2, account.birthday.length));

                        $("input[name=snsId]").val("카카오로그인");
                        $("input[name=name]").val(account.profile.nickname);
                        $("input[name=email]").val(account.email);
                        $("input[name=dob]").val(account.birthday.substring(0, 2) + "-" + account.birthday.substring(2, account.birthday.length));
                        $("input[name=token]").val(accessToken);

                        if (account.gender === "male") {
                            $("input[name=gender]").val(1);
                        } else {
                            $("input[name=gender]").val(2);
                        }

                        /*  $("form[name=form]").attr("action", "/member/kakaoLoginProc").submit(); */

                        $.ajax({
                            async : true,
                            cache : false,
                            type : "POST",
                            url : "/login/kakaoLoginProc",
                            data : {
                                "name" : $("input[name=name]").val(),
                                "snsId" : $("input[name=snsId]").val(),
                                "email" : $("input[name=email]").val(),
                                "gender" : $("input[name=gender]").val(),
                                "dob" : $("input[name=dob]").val(),
                                "token" : $("input[name=token]").val()
                            },
                            success : function(response) {
                                if (response.rt == "fail") {
                                    alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
                                    return false;
                                } else {
                                    window.location.href = "/home/home";
                                }
                            },
                            error : function(jqXHR, status, error) {
                                alert("알 수 없는 에러 [ " + error + " ]");
                            }
                        });
                    },
                    fail : function(error) {
                        console.log(error)
                    },
                })
            },
            fail : function(error) {
                console.log(error)
            },
        })
    });

    /* naver login test s */

    /* var naverLogin = new naver.LoginWithNaverId(
    {
    	clientId: "b8EhDTV3tvvAE_gRRBoJ",
    	callbackUrl: "http://localhost:8080/userLogin",
    	isPopup: false,
    	loginButton: {color: "green", type: 3, height: 70} 
    }
    ); */
    $("#naverBtn").on("click", function() {
        var naverLogin = new naver.LoginWithNaverId({
            clientId : "8B39nCp0YjSVrS3h2K_G",
            callbackUrl : "http://localhost:8080/login/login",
            isPopup : true
        });

        naverLogin.init();

        naverLogin.getLoginStatus(function(status) {
            if (!status) {
                naverLogin.authorize();
            } else {
                setLoginStatus(); //하늘님 메소드 실행 -> Ajax
            }
        });

        console.log(naverLogin);

        window.addEventListener('load', function() {
            if (naverLogin.accessToken != null) {
                naverLogin.getLoginStatus(function(status) {
                    if (status) {
                        /* (6) 로그인 상태가 "true" 인 경우 로그인 버튼을 없애고 사용자 정보를 출력합니다. */
                        setLoginStatus();
                    }
                });
            }

        });
        function setLoginStatus() {

            if (naverLogin.user.gender == 'M') {
                $("input[name=gender]").val(5);
            } else {
                $("input[name=gender]").val(6);
            }

            $.ajax({
                async : true,
                cache : false,
                type : "POST",
                url : "/login/naverLoginProc",
                data : {
                    "name" : naverLogin.user.name,
                    "snsId" : "네이버로그인",
                    "phone" : naverLogin.user.mobile,
                    "email" : naverLogin.user.email,
                    "gender" : $("input[name=gender]").val(),
                    "dob" : naverLogin.user.birthyear + "-" + naverLogin.user.birthday,
                    "sns_id" : naverLogin.user.id
                },
                success : function(response) {
                    if (response.rt == "fail") {
                        alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
                        return false;
                    } else {
                        window.location.href = "/home/home";
                    }
                },
                error : function(jqXHR, status, error) {
                    alert("알 수 없는 에러 [ " + error + " ]");
                }
            });
        }
    });

    /* naver login test e */

    //페이스북 (로그인) 기본 설정
    // This is called with the results from from FB.getLoginStatus().
    function statusChangeCallback(response) {
        console.log('statusChangeCallback');
        console.log(response);
        // The response object is returned with a status field that lets the
        // app know the current login status of the person.
        // Full docs on the response object can be found in the documentation
        // for FB.getLoginStatus().
        if (response.status === 'connected') {
            // Logged into your app and Facebook.
            testAPI();
        } else {
            // The person is not logged into your app or we are unable to tell.
            document.getElementById('status').innerHTML = 'Please log ' + 'into this app.';
        }
    }

    // This function is called when someone finishes with the Login
    // Button.  See the onlogin handler attached to it in the sample
    // code below.
    function checkLoginState() {
        FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
        });
    }

    window.fbAsyncInit = function() {
        window.fbAsyncInit = function() {
            FB.init({
                appId : '2190069754531373',
                status : false,
                cookie : true,
                xfbml : true,
                oauth : true
            });
            $(".fb_login").click(function() {
                FB.login(Facebook_login);
            });
        };

        (function(d) {
            var js, id = 'facebook-jssdk';
            if (d.getElementById(id)) {
                return;
            }
            js = d.createElement('script');
            js.id = id;
            js.async = true;
            js.src = "https://connect.facebook.net/en_US/sdk.js";
            d.getElementsByTagName('head')[0].appendChild(js);
        }(document));

        function Facebook_login() {
            FB.getLoginStatus(function(response) {
                if (response.status === 'connected') {
                    window.location = "THE URL TO PROCESS THE LOGIN";

                }
            });
        }
    }
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