<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">

<head>
<title>Khôi Phục Mật Khẩu</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet" />
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
	min-width: none;
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
			<h1 class="mt-5 text-center pb-5" style="color: #eee;">Khôi Phục
				Mật Khẩu</h1>
			<div class="alert">
				<c:if test="${not empty message}">
					<div class="alert alert-success">
						<c:out value="${message}" />
						<p>
							Chuyển hướng đến trang đăng nhập sau <span id="countdown">5</span>
							giây.
						</p>
					</div>
				</c:if>

				<c:if test="${not empty error}">
					<div class="alert alert-danger">${error}</div>
				</c:if>
			</div>
			<form class="form" action="resetPassword" method="post">
				<input type="hidden" name="id" value="${param.id}"> <input
					type="hidden" name="email" value="${param.email}">
				<div class="mb-3">
					<div class="flex-column">
						<label>Mật khẩu </label>
					</div>
					<div class="inputForm">
						<svg height="20" viewBox="-64 0 512 512" width="20"
							xmlns="http://www.w3.org/2000/svg">
									<path
								d="m336 512h-288c-26.453125 0-48-21.523438-48-48v-224c0-26.476562 21.546875-48 48-48h288c26.453125 0 48 21.523438 48 48v224c0 26.476562-21.546875 48-48 48zm-288-288c-8.8125 0-16 7.167969-16 16v224c0 8.832031 7.1875 16 16 16h288c8.8125 0 16-7.167969 16-16v-224c0-8.832031-7.1875-16-16-16zm0 0"
								fill="white">
									</path>
									<path
								d="m304 224c-8.832031 0-16-7.167969-16-16v-80c0-52.929688-43.070312-96-96-96s-96 43.070312-96 96v80c0 8.832031-7.167969 16-16 16s-16-7.167969-16-16v-80c0-70.59375 57.40625-128 128-128s128 57.40625 128 128v80c0 8.832031-7.167969 16-16 16zm0 0"
								fill="white">
									</path>
								</svg>

						<input type="password" id="password" name="password" class="input"
							placeholder="********">
					</div>

				</div>
				<div class="mb-3">
					<div class="flex-column">
						<label>Xác nhận mật khẩu</label>
					</div>
					<div class="inputForm">
						<svg height="20" viewBox="-64 0 512 512" width="20"
							xmlns="http://www.w3.org/2000/svg">
									<path
								d="m336 512h-288c-26.453125 0-48-21.523438-48-48v-224c0-26.476562 21.546875-48 48-48h288c26.453125 0 48 21.523438 48 48v224c0 26.476562-21.546875 48-48 48zm-288-288c-8.8125 0-16 7.167969-16 16v224c0 8.832031 7.1875 16 16 16h288c8.8125 0 16-7.167969 16-16v-224c0-8.832031-7.1875-16-16-16zm0 0"
								fill="white">
									</path>
									<path
								d="m304 224c-8.832031 0-16-7.167969-16-16v-80c0-52.929688-43.070312-96-96-96s-96 43.070312-96 96v80c0 8.832031-7.167969 16-16 16s-16-7.167969-16-16v-80c0-70.59375 57.40625-128 128-128s128 57.40625 128 128v80c0 8.832031-7.167969 16-16 16zm0 0"
								fill="white">
									</path>
								</svg>

						<input type="password" id="confirmPassword" name="confirmPassword"
							class="input" placeholder="********">
					</div>
				</div>
				<div class="d-flex justify-content-center">
					<button type="submit" class="button-submit">Cập Nhật Mật
						Khẩu</button>
				</div>
			</form>
		</div>
	</div>

	<script>
		function redirectToLogin() {
			window.location.href = "login";
		}

		function startCountdown(seconds) {
			var countdownElement = document.getElementById("countdown");
			var countdown = seconds;
			countdownElement.textContent = countdown;

			var interval = setInterval(function() {
				countdown--;
				countdownElement.textContent = countdown;

				if (countdown <= 0) {
					clearInterval(interval);
					redirectToLogin();
				}
			}, 1000);
		}

		document.addEventListener("DOMContentLoaded", function() {
			startCountdown(5);
		});
	</script>

</body>

</html>