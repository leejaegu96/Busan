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

</head>


<body>
	
<div class="limiter">
	<div class="container-login100">
		<div class="wrap-login100">
			<h4 class="mb-3">Find your ID / PASSWORD</h4>
			<div class="bd-example">
				<nav>
					<div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
						<button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">ID</button>
						<button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">PASSWORD</button>
					</div>
				</nav>
				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab" tabindex="0">
						<form class="needs-validation" novalidate>
				           	<div class="row">
				              <div class="col mb-3">
				                <label for="username">Name</label>
				                <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
				                <div class="invalid-feedback">
				                  Valid name is required.
				                </div>
				              </div>
				            </div>
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
							</div>
		   					<div class="container-login100-form-btn">
								<div class="wrap-login100-form-btn">
									<div class="login100-form-bgbtn"></div>
									<button class="login100-form-btn" type="button" onClick="location.href='user_LoginForm_IdFind.html'" >								
										NEXT
									</button>
								</div>
							</div>
						</form>
					</div>
					<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab" tabindex="0">
						<form class="needs-validation" novalidate>
				           	<div class="row">
				              <div class="col mb-3">
				                <label for="username">Name</label>
				                <input type="text" class="form-control" id="userName" placeholder="" value="" required>
				                <div class="invalid-feedback">
				                  Valid name is required.
				                </div>
				              </div>
				            </div>
				            <div class="row">
				              <div class="col mb-3">
				                <label for="userID">ID</label>
				                <input type="text" class="form-control" id="userID" placeholder="" value="" required>
				                <div class="invalid-feedback">
				                  Valid ID is required.
				                </div>
				              </div>
				            </div>
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
							</div>
		   					<div class="container-login100-form-btn">
								<div class="wrap-login100-form-btn">
									<div class="login100-form-bgbtn"></div>
									<button class="login100-form-btn" type="button" onClick="location.href='user_LoginForm_PasswordFind.html'" >	
										NEXT
									</button>
								</div>
							</div>
						</form>
					</div>
					
				</div>
			</div>
		</div>
	</div>

</body>
<script src="https://kit.fontawesome.com/20c294a34b.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>

<script type="text/javascript">

</script>
</html>