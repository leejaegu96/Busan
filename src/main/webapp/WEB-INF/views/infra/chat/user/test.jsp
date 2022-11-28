<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>


<!DOCTYPE html>

<html lang="ko">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<title>결제 페이지</title>
<meta content="" name="description" />
<meta content="" name="keywords" />

</head>

<body>
	<form method="post" name="form" action="/chat/kakaoPay">

		<!-- ======= Main ======= -->
		<main id="main">
			<button id="btn-kakaopay" class="btn btn-primary">카카오페이</button>
		</main>
	</form>
	<!-- End #main -->

	<!-- 카카오페이 -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<!-- 카카오페이 -->
	<script type="text/javascript">
	let index = {
	        	init:function(){
	                $("#btn-kakaopay").on("click", ()=>{ // function(){}를 사용안하고 , ()=>{}를 사용하는 이유는 this를 바인딩하기 위해서
	        			this.kakaopay();
	        		});
	        	},

	          // 카카오페이 결제
	        	kakaopay:function(){
	        		
	        		$.ajax({
	        			url:"/chat/kakaoPay",
	        			dataType:"json"
	        		}).done(function(resp){
	        			if(resp.status === 500){
	        				alert("카카오페이결제를 실패하였습니다.")
	        			} else{
	        				 // alert(resp.tid); //결제 고유 번호
	        				var box = resp.next_redirect_pc_url;
	        				//window.open(box); // 새창 열기
	        				location.href = box;
	        			}
	        		
	        		}).fail(function(error){
	        			alert(JSON.stringify(error));
	        		}); 
	        		
	        	},
	        }

	        index.init();
	</script>
</body>
</html>
