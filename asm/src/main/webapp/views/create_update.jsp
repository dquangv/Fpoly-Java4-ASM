<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<style>
.table-transparent {
	background-color: transparent !important;
}

.table-transparent thead {
	background-color: rgba(255, 255, 255, 0.1) !important;
}

.table-transparent tbody tr {
	background-color: rgba(255, 255, 255, 0.05) !important;
}

.image-wrapper {
	cursor: pointer;
}

.btn-close {
	filter: invert(1);
}

.pagination .page-item .page-link {
	background-color: rgba(255, 255, 255, 0.1) !important;
	color: white !important;
}

.pagination .page-item.disabled .page-link {
	background-color: rgba(255, 255, 255, 0.1) !important;
	color: rgba(255, 255, 255, 0.5) !important;
}

.pagination .page-item.active .page-link {
	background-color: white !important;
	color: black !important;
}
</style>
<main class="col-12 col-lg-11 text-white">
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content" style="background-color: #272727">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">Tạo video</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form
						action="${pageContext.request.contextPath}/views/create_update"
						method="post" enctype="multipart/form-data">
						<div class="mb-3">
							<label for="videoTitle" class="form-label">Tiêu đề</label> <input
								type="text" class="form-control" id="videoTitle"
								name="videoTitle" aria-describedby="titleHelp" value="user"
								style="background-color: transparent !important; color: white"
								required>
						</div>
						<div class="mb-3">
							<label for="videoLink" class="form-label">Link video</label> <input
								type="text" class="form-control" id="videoLink" name="videoLink"
								value="user"
								style="background-color: transparent !important; color: white"
								required>
						</div>
						<div class="row">
							<div class="mb-3 col-xl-2">
								<label for="test" class="form-label">Hình ảnh videos</label>
								<div class="image-wrapper">
									<img id="videoImage"
										src="https://media.istockphoto.com/id/1409329028/vector/no-picture-available-placeholder-thumbnail-icon-illustration-design.jpg?s=612x612&w=0&k=20&c=_zOuJu755g2eEUioiOUdz_mHKJQJn-tDgIAhQzyeKUQ="
										alt="Hình ảnh video" class="img-fluid mb-2"
										style="height: 150px; width: 150px; object-fit: cover">
									<input name="photo" type="file" id="test" class="d-none">
								</div>
							</div>
							<div class="mb-3 col-xl-10">
								<label for="imageDescription" class="form-label">Mô tả
									hình ảnh</label>
								<textarea class="form-control" id="imageDescription"
									name="imageDescription" aria-describedby="imageDescriptionHelp"
									style="background-color: transparent !important; color: white; height: 150px !important"></textarea>
							</div>
						</div>
						<div class="mb-3">
							<label for="videoActivation" class="form-label">Kích hoạt</label>
							<div id="videoActivation" class="d-flex gap-2">
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="activationOptions" id="activationYes" value="yes"
										checked> <label class="form-check-label"
										for="activationYes"> Kích hoạt </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="activationOptions" id="activationNo" value="no">
									<label class="form-check-label" for="activationNo"> Vô
										hiệu </label>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Đóng</button>
							<button type="submit" class="btn btn-primary" id="saveButton"
								style="background-color: blue !important">Lưu</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="container mt-2">
		<div class="d-flex justify-content-between mb-3">
			<h3>Danh sách video</h3>
			<button type="button" class="rounded text-white btn"
				data-bs-toggle="modal" data-bs-target="#exampleModal"
				style="background-color: #272727 !important">
				<i class="bi bi-plus-circle"></i>
			</button>
		</div>
		<table class="table table-transparent">
			<thead>
				<tr>
					<th scope="col"
						style="background-color: rgba(255, 255, 255, 0.1) !important; color: white !important">ID</th>
					<th scope="col"
						style="background-color: rgba(255, 255, 255, 0.1) !important; color: white !important">Tiêu
						đề</th>
					<th scope="col"
						style="background-color: rgba(255, 255, 255, 0.1) !important; color: white !important">Lượt
						xem</th>
					<th scope="col"
						style="background-color: rgba(255, 255, 255, 0.1) !important; color: white !important">Trạng thái</th>
					<th scope="col"
						style="background-color: rgba(255, 255, 255, 0.1) !important; color: white !important">Chỉnh
						sửa</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="video" items="${listViDeo}">
					<tr>
						<th scope="row"
							style="background-color: rgba(255, 255, 255, 0.1) !important; color: white !important">${video.id}</th>
						<td
							style="background-color: rgba(255, 255, 255, 0.1) !important; color: white !important">${video.title}</td>
						<td
							style="background-color: rgba(255, 255, 255, 0.1) !important; color: white !important">${video.views}</td>
						<td
							style="background-color: rgba(255, 255, 255, 0.1) !important; color: white !important">${video.active == true ? "Hoạt động" : "Không hoạt động" }</td>
						<td class="d-flex gap-2"
							style="background-color: rgba(255, 255, 255, 0.1) !important; color: white !important">
							<form
								action="${pageContext.request.contextPath}/views/update_video"
								method="get">
								<input type="hidden" name="videoId" value="${video.id}">
								<button type="submit" class="btn btn-success"
									style="background-color: green !important">Cập nhật</button>
							</form>
							<form
								action="${pageContext.request.contextPath}/views/delete_video"
								method="post" class="buttonDelete">
								<input type="hidden" name="videoId" value="${video.id}">
								<button type="submit" class="btn btn-danger"
									style="background-color: red !important">Xóa</button>
							</form>
						</td>
					</tr>

				</c:forEach>
			</tbody>
		</table>

		<div class="d-flex justify-content-center align-items-center">
			<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-end"
					style="background-color: rgba(255, 255, 255, 0.1) !important">
					<li class="page-item disabled"><a class="page-link" href="#"
						tabindex="-1">Previous</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">Next</a></li>
				</ul>
			</nav>
		</div>
	</div>
</main>
<script>
    document.querySelector('.image-wrapper').addEventListener('click', () => {
        document.querySelector('#test').click();
    });

    document.querySelectorAll('.buttonDelete').forEach(button => {
        button.addEventListener('submit', function(event) {
            let confirmDelete = confirm("Bạn có chắc muốn xóa không ?");
            if (!confirmDelete) {
                event.preventDefault();  
            }
        });
    });

    document.querySelector('#test').addEventListener('change', function (e) {
        const file = e.target.files[0];
        const reader = new FileReader();
        reader.onload = function (event) {
            document.querySelector('#videoImage').src = event.target.result;
        };
        reader.readAsDataURL(file);
    });
</script>

