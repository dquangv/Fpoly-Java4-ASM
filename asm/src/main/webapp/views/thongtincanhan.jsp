<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.form-control {
	background-color: #595656;
}

label {
	color: white;
}
</style>

<main class="col-12 col-lg-11 text-white">
	<body style="background-color: rgb(44, 43, 43);">
		<div class="container">
			<div class="row gutters">
				<div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
					<div class="card h-100 border border-white"
						style="background-color: transparent;">
						<div class="card-body">
							<div class="account-settings">
								<div class="user-profile">
									<div class="user-avatar mb-4">
										<img class="img-fluid" style="" src="${usesimg}" alt="">
									</div>
									<h5 class="user-name text-center " style="color: #ffffff;">${usesd}</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
					<div class="card h-100" style="background-color: transparent;">
						<div class="card-body">
							<div class="row gutters">
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
									<h6 class="mb-2 fw-bold fs-3" style="color: #ffffff;">Thông
										tin cá nhân</h6>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 mb-2">
									<div class="form-group">
										<label for="fullName" class="ms-2">Họ và tên</label> <input
											type="text" class="form-control"
											style="color: black; background-color: white;" id="fullName"
											value="${usesd}">
									</div>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
									<div class="form-group">
										<label for="eMail" class="ms-2">Email</label> <input
											type="email" class="form-control"
											style="color: black; background-color: white;" id="eMail"
											value="${usesa}">
									</div>
								</div>
							</div>

							<div class="row gutters mt-2">
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 mt-2">
									<div class="text-right">
										<form action="updateProfile" method="post"
											style="display: inline;">
											<button type="submit" class="btn me-1"
												style="background-color: #e51b1b !important; color: white;">Cập
												nhật</button>
										</form>
										<form action="logout" method="post" style="display: inline;">
											<button type="submit" class="btn btn-secondary">Đăng
												xuất</button>
										</form>
									</div>
								</div>
							</div>
							<div class="row gutters mt-5">
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
									<h6 class="mt-3 mb-2 fw-bold fs-3" style="color: white;">Đổi
										mật khẩu</h6>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 mb-2">
									<div class="form-group">
										<label for="currentPassword" class="ms-2">Mật khẩu
											hiện tại</label> <input type="password" class="form-control"
											style="color: black; background-color: white;"
											id="currentPassword" ng-model="passwordData.currentPassword">
									</div>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
									<div class="form-group">
										<label for="newPassword" class="ms-2">Mật khẩu mới</label> <input
											type="password" class="form-control"
											style="color: black; background-color: white;"
											id="newPassword" ng-model="passwordData.newPassword">
									</div>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
									<div class="form-group">
										<label for="confirmNewPassword" class="ms-2">Xác nhận
											mật khẩu mới</label> <input type="password" class="form-control"
											style="color: black; background-color: white;"
											id="confirmNewPassword">
									</div>
								</div>
							</div>
							<div class="row gutters mt-2">
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 mt-2">
									<div class="text-right">
										<button type="button" class="btn"
											style="background-color: #e51b1b !important; color: white;">Đổi
											mật khẩu</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script
			src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
		<script src="angular.js"></script>
	</body>
</main>