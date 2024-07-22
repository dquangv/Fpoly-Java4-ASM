<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<main class="col-12 col-lg-11 text-white">
	<div class="container mt-2">
		<h3>Cập nhật video</h3>
		<form action="${pageContext.request.contextPath}/views/update_video"
			method="post" enctype="multipart/form-data">
			<input type="hidden" name="videoId" value="${video.id}" />
			<div class="mb-3">
				<label for="videoTitle" class="form-label">Tiêu đề</label> <input
					type="text" class="form-control" id="videoTitle" name="videoTitle"
					value="${video.title}"
					style="background-color: transparent !important; color: white"
					required>
			</div>
			<div class="mb-3">
				<label for="videoLink" class="form-label">Link video</label> <input
					type="text" class="form-control" id="videoLink" name="videoLink"
					value="${video.link}"
					style="background-color: transparent !important; color: white"
					required>
			</div>
			<div class="row">
				<div class="mb-3 col-xl-2">
					<label for="videoImage" class="form-label">Hình ảnh video</label>
					<div class="image-wrapper">
						<img id="videoImage" src="${video.poster}"
							alt="Hình ảnh video" class="img-fluid mb-2"
							style="height: 150px; width: 150px; object-fit: cover"> <input
							name="photo" type="file" id="videoImageInput" class="d-none">
					</div>
				</div>
				<div class="mb-3 col-xl-10">
					<label for="imageDescription" class="form-label">Mô tả</label>
					<textarea class="form-control" id="imageDescription"
						name="imageDescription"
						style="background-color: transparent !important; color: white; height: 150px !important">${video.description}</textarea>
				</div>
			</div>
			<div class="mb-3">
				<label for="videoActivation" class="form-label">Kích hoạt</label>
				<div id="videoActivation" class="d-flex gap-2">
					<div class="form-check">
						<input class="form-check-input" type="radio"
							name="activationOptions" id="activationYes" value="yes"
							${video.active == true ? 'checked' : ''}> <label
							class="form-check-label" for="activationYes">Kích hoạt</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio"
							name="activationOptions" id="activationNo" value="no"
							${video.active == false ? 'checked' : ''}> <label
							class="form-check-label" for="activationNo">Vô hiệu</label>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					onclick="window.history.back()">Quay lại</button>
				<button type="submit" class="btn btn-primary"
					style="background-color: blue !important">Lưu</button>
			</div>
		</form>
	</div>
</main>
<script>
	document.getElementById('videoImage').addEventListener('click', function() {
		document.getElementById('videoImageInput').click();
	});

	document
			.getElementById('videoImageInput')
			.addEventListener(
					'change',
					function(event) {
						const file = event.target.files[0];
						const reader = new FileReader();

						reader.onload = function(e) {
							document.getElementById('videoImage').src = e.target.result;
						};

						reader.readAsDataURL(file);
					});
</script>

