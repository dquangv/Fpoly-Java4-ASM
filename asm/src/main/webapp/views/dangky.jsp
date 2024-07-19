<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <title>Đăng ký</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/freeps2/a7rarpress@main/swiper-bundle.min.css">
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
            background-image: url(https://res.klook.com/image/upload/v1488362758/aboutus/mission-bg.png);
            background-color: #eee;
            background-position: 50%;
            background-repeat: no-repeat;
            background-size: cover;
            height: 400px;
            overflow: hidden;
            width: 100%;
        }
        .card-registration .select-input.form-control[readonly]:not([disabled]) {
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
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        }
        ::placeholder {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
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
            <h1 class="mt-5 text-center pb-5" style="color: #eee;">Đăng ký</h1>
            <div class="row">
                <form class="form row" action="signup" method="POST" onsubmit="return validateForm()">

                    <div class="flex-column">
                        <label>Họ và tên</label>
                    </div>
                    <div class="inputForm">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                            <circle cx="12" cy="7" r="4"></circle>
                        </svg>
                        <input class="input" id="fullName" name="fullname" type="text" placeholder="Nguyễn Văn A" />
                    </div>

                    <div class="flex-column">
                        <label>Email</label>
                    </div>
                    <div class="inputForm">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
                            <polyline points="22,6 12,13 2,6"></polyline>
                        </svg>
                        <input class="input" id="email" name="email" type="email" placeholder="abc@gmail.com" />
                    </div>

                    <div class="flex-column">
                        <label>Mật khẩu</label>
                    </div>
                    <div class="inputForm">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect>
                            <path d="M7 11V7a5 5 0 0 1 10 0v4"></path>
                        </svg>
                        <input class="input" id="password" name="password" type="password" placeholder="*****" />
                    </div>

                    <div class="flex-column">
                        <label>Nhập lại mật khẩu</label>
                    </div>
                    <div class="inputForm">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect>
                            <path d="M7 11V7a5 5 0 0 1 10 0v4"></path>
                        </svg>
                        <input class="input" id="confirmPassword" name="repassword" type="password" placeholder="*****" />
                    </div>

                    <div id="error" style="color: red; margin-bottom: 10px; background-color: white">${error}</div>

                    <div class="flex-column">
                        <button type="submit" class="btn button-submit">Đăng ký</button>
                    </div>

                    <p class="p">
                        Bạn đã có tài khoản?
                        <a href="login" class="span">Đăng nhập</a>
                    </p>
                </form>
            </div>
        </div>
    </div>

    <script>
        function validateForm() {
            var fullName = document.getElementById("fullName").value;
            var email = document.getElementById("email").value;
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirmPassword").value;
            var error = document.getElementById("error");

            if (!fullName || !email || !password || !confirmPassword) {
                error.textContent = "Vui lòng nhập đầy đủ thông tin.";
                return false;
            }

            if (password !== confirmPassword) {
                error.textContent = "Mật khẩu không khớp.";
                return false;
            }

            return true;
        }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz4fnFO9gybBogGzOgYOvIS6i5j3zK6eJ2BJrBExljrC/+c9C8+pG1K8E/" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-s2mBk8t9ARtbALjC2mF83tTrrGek4sqocNVLnkzvJTCFl+yk2K6xq9KfYPaXvkfR" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/gh/freeps2/a7rarpress@main/swiper-bundle.min.js"></script>
</body>
</html>
