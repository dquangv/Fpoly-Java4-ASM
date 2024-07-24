<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">

<head>
<title>Quên Mật Khẩu</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/freeps2/a7rarpress@main/swiper-bundle.min.css">
<style>
body {
	overflow-x: hidden;
	background-color: #000;
}

.logo-en-fill {
	fill: #ff5b00;
}

.nav-link {
	font-weight: bolder;
	min-width: none
}

.nav-link:hover {
	color: #FF5B00;
}

.navbar-nav .nav-link.active, .navbar-nav .nav-link.show {
	color: #FF5B00;
}

.dropdown:hover .dropdown-menu {
	display: block;
	animation: fadeIn 0.5s ease-in-out forwards;
}

.dropdown-item:hover {
	color: #FF5B00;
}

.dropdown-item.active {
	background-color: #FF5B00;
}

.dropdown-item.active:hover {
	color: black;
}

@media ( min-width : 992px) {
	.navbar.fixed-top {
		position: fixed;
		top: 0;
		right: 0;
		left: 0;
		z-index: 1030;
	}
}

.navbar-brand {
	margin-left: 100px;
}

#vui {
	top: 30%;
	right: 54%;
}

#khamPha {
	top: 40%;
	left: 15%;
}

@
keyframes fadeIn {from { opacity:0;
	transform: translateY(-10px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
.btn-outline-success {
	background-color: #ff5900cf;
	color: #fff;
}

.btn-outline-success:hover {
	background-color: #FF5B00;
	color: #fff;
}

#dulich {
	bottom: 30%;
}

.text-overlay {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	text-align: center;
	color: white;
}

.text-overlay h1, .text-overlay h5 {
	margin: 0;
}

@media ( max-width : 768px) {
	.text-overlay h1 {
		font-size: 1.5rem;
	}
	.text-overlay h5 {
		font-size: 1rem;
	}
}

#bg1 {
	background-color: #333232;
	background-position: 50%;
	background-repeat: no-repeat;
	background-size: cover;
	height: 100vh;
	overflow: hidden;
	width: 100%;
}

#bg {
	background-image:
		url(https://res.klook.com/image/upload/v1488362758/aboutus/mission-bg.png);
	background-color: #eee;
	background-position: 50%;
	background-repeat: no-repeat;
	background-size: cover;
	height: 400px;
	overflow: hidden;
	width: 100%;
}

.card-registration .select-input.form-control[readonly]:not([disabled])
	{
	font-size: 1rem;
	line-height: 2.15;
	padding-left: .75em;
	padding-right: .75em;
}

.card-registration .select-arrow {
	top: 13px;
}

.form {
	display: flex;
	flex-direction: column;
	gap: 10px;
	background-color: #4a4848;
	padding: 30px;
	width: 100%;
	border-radius: 20px;
	font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto,
		Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
}

::placeholder {
	font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto,
		Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
}

.form button {
	align-self: flex-end;
}

.flex-column>label {
	color: #eee;
	font-weight: 600;
}

.inputForm {
	border: 1.5px solid #ecedec;
	border-radius: 10px;
	height: 50px;
	display: flex;
	align-items: center;
	padding-left: 10px;
	transition: 0.2s ease-in-out;
}

.input {
	color: #eee;
	margin-left: 10px;
	border-radius: 10px;
	border: none;
	width: 85%;
	height: 100%;
	background-color: #4a4848;
}

.input:focus {
	outline: none;
}

.inputForm:focus-within {
	border: 1.5px solid #2d79f3;
}

.flex-row {
	display: flex;
	flex-direction: row;
	align-items: center;
	gap: 10px;
	justify-content: space-between;
}

.flex-row>div>label {
	font-size: 14px;
	color: rgb(255, 255, 255);
	font-weight: 400;
}

.span {
	font-size: 14px;
	margin-left: 5px;
	color: #2d79f3;
	font-weight: 500;
	cursor: pointer;
}

.button-submit {
	margin: 20px 0 10px 0;
	background-color: #e51b1b;
	border: none;
	color: white;
	font-size: 15px;
	font-weight: 500;
	border-radius: 10px;
	height: 50px;
	width: 300px;
	cursor: pointer;
	transition: ease-in-out 0.3s;
}

.button-submit:hover {
	background-color: #e51b1bb1;
}

.p {
	text-align: center;
	color: white;
	font-size: 14px;
	margin: 5px 0;
}

.btn1 {
	margin-top: 10px;
	width: 100%;
	height: 50px;
	border-radius: 10px;
	display: flex;
	justify-content: center;
	align-items: center;
	font-weight: 500;
	gap: 10px;
	border: 1px solid #ededef;
	background-color: white;
	cursor: pointer;
	transition: 0.2s ease-in-out;
}

.btn1:hover {
	border: 1px solid #2d79f3;
	;
}

.form-control:focus, .form-select:focus, .form-floating textarea:focus {
	border-color: #FF5B00;
	box-shadow: 0 0 0 0.25rem #ff590053;
}
</style>

</head>

<body>

	<div class="container-fluid pb-5" id="bg1">
		<div class="container">
			<h1 class="mt-5 text-center pb-5" style="color: #eee;">Quên Mật
				Khẩu</h1>
			<div class="alert">
				<c:if test="${not empty message}">
					<div class="alert alert-info">${message}</div>
				</c:if>
				<c:if test="${not empty error}">
					<div class="alert alert-danger">${error}</div>
				</c:if>
			</div>
			<div class="row">
				<form class="form" action="forgotPassword" method="post">
					<div class="flex-column">
						<label>Email </label>
					</div>
					<div class="inputForm">
						<svg height="20" viewBox="0 0 32 32" width="20"
							xmlns="http://www.w3.org/2000/svg">
                            <g id="Layer_3" data-name="Layer 3">
                                <path
								d="m30.853 13.87a15 15 0 0 0 -29.729 4.082 15.1 15.1 0 0 0 12.876 12.918 15.6 15.6 0 0 0 2.016.13 14.85 14.85 0 0 0 7.715-2.145 1 1 0 1 0 -1.031-1.711 13.007 13.007 0 1 1 5.458-6.529 2.149 2.149 0 0 1 -4.158-.759v-10.856a1 1 0 0 0 -2 0v1.726a8 8 0 1 0 .2 10.325 4.135 4.135 0 0 0 7.83.274 15.2 15.2 0 0 0 .823-7.455zm-14.853 8.13a6 6 0 1 1 6-6 6.006 6.006 0 0 1 -6 6z"
								fill="white">
                                </path>
                            </g>
                        </svg>

						<input type="email" id="email" name="email" class="input"
							placeholder="Email">
					</div>
					<p class="p"><a style="text-decoration: none;" href="login"><span
							class="span" style="color: #ffffff;">Quay lại đăng nhập </span> </a>  hoặc  <a style="text-decoration: none;" href="signup"><span
							class="span" style="color: #ffffff;"> Đăng ký tài khoản</span></a>

					</p>
					<div class="d-flex justify-content-center">
						<button type="submit" class="button-submit">Gửi</button>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
