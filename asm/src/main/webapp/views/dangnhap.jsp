<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!doctype html>
<html lang="en">

<head>
<title>Đăng nhập</title>
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
	height: auto;
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
	width: 100%;
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
			<h1 class="mt-5 text-center pb-5" style="color: #eee;">Đăng nhập</h1>
			<div class="alert">
				<c:if test="${not empty error}">
					<div class="alert alert-danger">${error}</div>
				</c:if>
			</div>
			<div class="row">
				<form class="form" action="login" method="post">
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
						<!-- <svg viewBox="0 0 576 512" height="1em" xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M288 32c-80.8 0-145.5 36.8-192.6 80.6C48.6 156 17.3 208 2.5 243.7c-3.3 7.9-3.3 16.7 0 24.6C17.3 304 48.6 356 95.4 399.4C142.5 443.2 207.2 480 288 480s145.5-36.8 192.6-80.6c46.8-43.5 78.1-95.4 93-131.1c3.3-7.9 3.3-16.7 0-24.6c-14.9-35.7-46.2-87.7-93-131.1C433.5 68.8 368.8 32 288 32zM144 256a144 144 0 1 1 288 0 144 144 0 1 1 -288 0zm144-64c0 35.3-28.7 64-64 64c-7.1 0-13.9-1.2-20.3-3.3c-5.5-1.8-11.9 1.6-11.7 7.4c.3 6.9 1.3 13.8 3.2 20.7c13.7 51.2 66.4 81.6 117.6 67.9s81.6-66.4 67.9-117.6c-11.1-41.5-47.8-69.4-88.6-71.1c-5.8-.2-9.2 6.1-7.4 11.7c2.1 6.4 3.3 13.2 3.3 20.3z">
                            </path>
                        </svg> -->
					</div>

					<div class="flex-row">
						<div>
							<input type="checkbox"> <label>Ghi nhớ đăng nhập</label>
						</div>
						<a style="text-decoration: none;" href=""><span class="span"
							style="color: #ffffff;">Quên mật khẩu?</span></a>
					</div>
					<div class="d-flex justify-content-center mt-3">
						<button class="button-submit align-items-center mx-auto"
							style="width: 300px;">Đăng nhập</button>
					</div>
					<p class="p">
						Chưa có tài khoản? <a style="text-decoration: none;"
							href="signup"><span class="span"
							style="color: #ffffff;">Đăng Ký</span></a>

					</p>
					<p class="p line">Hoặc tiếp tục với</p>

					<div class="flex-row">
						<button class="btn1 google"
							style="background-color: #333232; border: 1px solid #1c1c1c; color: #eee;">
							<svg version="1.1" width="20" id="Layer_1"
								xmlns="http://www.w3.org/2000/svg"
								xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
								viewBox="0 0 512 512"
								style="enable-background: new 0 0 512 512;" xml:space="preserve">
                                <path style="fill:#FBBB00;"
									d="M113.47,309.408L95.648,375.94l-65.139,1.378C11.042,341.211,0,299.9,0,256
                c0-42.451,10.324-82.483,28.624-117.732h0.014l57.992,10.632l25.404,57.644c-5.317,15.501-8.215,32.141-8.215,49.456
                C103.821,274.792,107.225,292.797,113.47,309.408z"></path>
                                <path style="fill:#518EF8;"
									d="M507.527,208.176C510.467,223.662,512,239.655,512,256c0,18.328-1.927,36.206-5.598,53.451
                c-12.462,58.683-45.025,109.925-90.134,146.187l-0.014-0.014l-73.044-3.727l-10.338-64.535
                c29.932-17.554,53.324-45.025,65.646-77.911h-136.89V208.176h138.887L507.527,208.176L507.527,208.176z">
                                </path>
                                <path style="fill:#28B446;"
									d="M416.253,455.624l0.014,0.014C372.396,490.901,316.666,512,256,512
                c-97.491,0-182.252-54.491-225.491-134.681l82.961-67.91c21.619,57.698,77.278,98.771,142.53,98.771
                c28.047,0,54.323-7.582,76.87-20.818L416.253,455.624z"></path>
                                <path style="fill:#F14336;"
									d="M419.404,58.936l-82.933,67.896c-23.335-14.586-50.919-23.012-80.471-23.012
                c-66.729,0-123.429,42.957-143.965,102.724l-83.397-68.276h-0.014C71.23,56.123,157.06,0,256,0
                C318.115,0,375.068,22.126,419.404,58.936z"></path>

                            </svg>

							Google

						</button>
						<button class="btn1 apple"
							style="background-color: #333232; border: 1px solid #1c1c1c; color: #eee;">
							<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
								width="35" height="35" viewBox="0 0 48 48">
                                <linearGradient
									id="Ld6sqrtcxMyckEl6xeDdMa_uLWV5A9vXIPu_gr1" x1="9.993"
									x2="40.615" y1="9.993" y2="40.615"
									gradientUnits="userSpaceOnUse">
                                    <stop offset="0"
									stop-color="#2aa4f4"></stop>
                                    <stop offset="1"
									stop-color="#007ad9"></stop>
                                </linearGradient>
                                <path
									fill="url(#Ld6sqrtcxMyckEl6xeDdMa_uLWV5A9vXIPu_gr1)"
									d="M24,4C12.954,4,4,12.954,4,24s8.954,20,20,20s20-8.954,20-20S35.046,4,24,4z">
                                </path>
                                <path fill="#fff"
									d="M26.707,29.301h5.176l0.813-5.258h-5.989v-2.874c0-2.184,0.714-4.121,2.757-4.121h3.283V12.46 c-0.577-0.078-1.797-0.248-4.102-0.248c-4.814,0-7.636,2.542-7.636,8.334v3.498H16.06v5.258h4.948v14.452 C21.988,43.9,22.981,44,24,44c0.921,0,1.82-0.084,2.707-0.204V29.301z">
                                </path>
                            </svg>

							Facebook

						</button>
					</div>
				</form>
			</div>
		</div>
		<br> <br> <br>
	</div>





	<script src="//cdn.jsdelivr.net/gh/freeps2/a7rarpress@main/script.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>


</html>