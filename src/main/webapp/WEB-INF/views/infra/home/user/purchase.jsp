<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>


<!DOCTYPE HTML>
<!--
	Alpha by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Elements - Alpha by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="../resources/assets/css/main.css" />
<link rel="stylesheet" href="../resources/assets/css/test.css" />

<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />

<!-- <link href="https://webfontworld.github.io/DungGeunMo/DungGeunMo.css" rel="stylesheet"> -->
<link href="https://webfontworld.github.io/NexonMabinogi/MabinogiClassic.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style>
</style>
</head>
<body>
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header">
			<h3 style="color: white; font-size: 20px; margin-top: 10px; margin-left: 20px; height: 52px; cursor: pointer;" onClick="location.href='home'">
				<i class="fa-solid fa-book-open"></i>&nbsp;E-WORD
			</h3>
			<nav id="nav">
				<ul>
					<li><c:choose>
							<c:when test="${sessSeq eq null}">
							</c:when>
							<c:when test="${sessSeq eq 144}">
								<span style="color: #959ADA; font-weight: bolder;">
									<c:out value="${sessName }" />
								</span> 관리자님
									</c:when>
							<c:otherwise>
								<span style="color: #959ADA; font-weight: bolder;">
									<c:out value="${sessName }" />
								</span>님
									</c:otherwise>
						</c:choose></li>
					<li><a href="home" class="button" style="cursor: pointer; background-color: #444444;">Home</a></li>
					<c:choose>
						<c:when test="${sessSeq eq null}">
							<!--로그인 전 화면  -->
							<li><a href="#" class="button" onClick="location.href='../login/signUp'" style="cursor: pointer; background-color: #444444;">Sign Up</a></li>
							<li><a href="#" class="button" onClick="location.href='../login/login'" style="cursor: pointer;">Login</a></li>
						</c:when>
						<c:when test="${sessSeq eq 144}">
							<!--관리자 로그인 후 화면  -->
							<li><a href="mypage" class="button" style="cursor: pointer; background-color: #444444;">Mypage</a></li>
							<li><a href="/member/memberList" class="button" style="cursor: pointer; background-color: #444444;">Admin</a></li>
							<li><a href="#" class="button" id="btnLogout" style="cursor: pointer;">Logout</a></li>
						</c:when>
						<c:otherwise>
							<!--로그인 후 화면  -->
							<li><a href="test" class="button" style="cursor: pointer; background-color: #444444;">Test</a></li>
							<li><a href="rank" class="button" style="cursor: pointer; background-color: #444444;">Rank</a></li>
							<li><a href="translate" class="button" style="cursor: pointer; background-color: #444444;">Translate</a></li>
							<li><a href="mypage" class="button" style="cursor: pointer; background-color: #444444;">Mypage</a></li>
							<li><a href="#" class="button" id="btnLogout" style="cursor: pointer;">Logout</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</nav>

		</header>

		<!-- Main -->
		<section id="main" class="container">
			<form name="form" id="form">
				<div>
					<label>상품</label>
					<input type="text" class="form-control" value="생활코딩"><br>
					<label>가격</label>
					<input type="text" class="form-control" value="12000">
				</div><br>
				<button type="button" class="btn btn-warning">카카오페이</button>
			</form>
		</section>

	</div>

	<!-- Scripts -->
	<!-- 
		<script src="../resources/assets/js/jquery.min.js"></script>
		 -->
	<script src="../resources/assets/js/jquery.dropotron.min.js"></script>
	<script src="../resources/assets/js/jquery.scrollex.min.js"></script>
	<script src="../resources/assets/js/browser.min.js"></script>
	<script src="../resources/assets/js/breakpoints.min.js"></script>
	<script src="../resources/assets/js/util.js"></script>

	<script src="https://kit.fontawesome.com/20c294a34b.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>


	<script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>

	<script src="../resources/assets/js/main2.js"></script>
	<div id="navButton">
		<a href="#navPanel" class="toggle"></a>
	</div>
	<div id="navPanel">
		<nav>
			<c:choose>
				<c:when test="${sessSeq eq null}">
					<!--로그인 전 화면  -->
					<a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer" onClick="location.href='home'">Home</a>
					<a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer" onClick="location.href='/login/signUp'">Sign Up</a>
					<a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer" onClick="location.href='/login/login'">Login</a>

				</c:when>
				<c:when test="${sessSeq eq 144}">
					<!--관리자 로그인 후 화면  -->
					<a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer" onClick="location.href='home'">Home</a>
					<a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer" onClick="location.href='mypage'">Mypage</a>
					<a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer" onClick="location.href='/member/memberList'">Admin</a>
				</c:when>
				<c:otherwise>
					<!--로그인 후 화면  -->
					<a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer" onClick="location.href='home'">Home</a>
					<a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer" onClick="location.href='test'">Test</a>
					<a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer" onClick="location.href='rank'">Rank</a>
					<a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer" onClick="location.href='translate'">Translate</a>
					<a class="link depth-0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer" onClick="location.href='mypage'">Mypage</a>
				</c:otherwise>
			</c:choose>

		</nav>
	</div>

	<script>
        let intro = '<div id="info">' + '<h2>들어가는말</h2>    <p>    생활코딩의 세계에 오신 것을 환영합니다. 생활코딩은 <strong>일반인들에게 프로그래밍을 알려주는 무료 온라인, 오프라인 수업입니다. </strong>&nbsp;어떻게 공부할 것인가를 생각해보기 전에 왜&nbsp;프로그래밍을 공부하는 이유에 대한 이유를 함께 생각해보면 좋을 것 같습니다. 아래 영상을 한번 보시죠.</p>	<p>   입문자의 가장 큰 고충은 &#39;무엇을 모르는지 모르는 상태&#39;일 겁니다.   온라인에는 프로그래밍을 익히는 데 필요한 거의 모든 정보가 있지만, 이 지식들은 게시판이나 블로그 또는 커뮤니티에 포스팅 단위로 파편화되어 있습니다.	    그래서 최소한 무엇을 검색해야 하는지를 아는 사람들을 위해서는 더 없이 좋은 공간이지만, &#39;무엇을 모르는지 모르는 상태&#39;의 입문자에게는 그림의 떡으로 남아 있습니다.     다시말해서 전문가를 더욱 전문가답게 만드는 혁신에 머물고 있는 것이죠.</p>	<p> 생활코딩은 컴퓨터와 인터넷이 존재하는 시대의 공부방법은 어때야 하는가를 찾는 작업을 꾸준히 하고 있습니다.	    정보기술이 발전하지 않았던, 낭만적인 시절에는 어떤 일을 하려고 하면 그것을 하기 위해서 필요한 거의 모든 것을 알고 있어야 했습니다. 검색할수도 없었고, 질문하기도 어려웠기 때문입니다. 한편 한번 배운 지식만으로도 평생을 살아 갈 수 있었습니다. &nbsp;</p>' + '</div>'
        const editor = new toastui.Editor({
            el : document.querySelector('#editor'),
            previewStyle : 'vertical',
            height : '500px',
            initialEditType : 'wysiwyg',
            hooks : {
                addImageBlobHook : function(blob, callback) {
                    const formData = new FormData();
                    formData.append("image", blob);
                    const imageURL = imageUpload(formData);
                    console.log(imageURL);
                    callback(imageURL, "image");
                },
            },
            initialValue : intro
        });

        // !!여기!! editor.getHtml()을 사용해서 에디터 내용 받아오기
        console.log(editor.getHTML());

        function imageUpload(formData) {
            let imageURL;

            $.ajax({
                type : "post",
                url : "/bombom/image_upload.do",
                async : false,
                data : formData,
                processData : false,
                contentType : false,
                success : function(data) {
                    imageURL = data;
                    console.log(imageURL);
                },
                error : function(request, status, error) {
                    alert(request + ", " + status + ", " + error);
                },
            });

            return imageURL;
        }
        $('.tab-item').click(function() {
            alert('ssss');

        });
    </script>



</body>
</html>