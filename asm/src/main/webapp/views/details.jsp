<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
.truncate {
	max-height: 3.6em;
	/* Limit to 3 lines, 1.2em per line */
	overflow: hidden;
	color: white;
}

.comment {
	
}
</style>

<main class="col-12 col-lg-11 text-white">
	<div class="row">
		<div class="col-12 col-xl-8">
			<div class="ratio ratio-16x9">
				<iframe src="${video.link}" title="YouTube video" allowfullscreen></iframe>
			</div>
			<h5 class="fw-bold py-2">${video.title}</h5>
			<div class="d-flex justify-content-between">
				<div class="d-flex gap-4">
					<div class="d-flex gap-2" style="max-height: 43px">

						<img class="img-thumbnail rounded-circle object-fit-cover"
							src="https://cdn-icons-png.flaticon.com/512/9187/9187604.png"
							style="height: 40px" />
						<div class="d-flex flex-column justify-content-center"
							style="max-height: 43px">
							<h6 style="font-size: 15px">Võ Thanh Tùng</h6>
							<div style="font-size: 13px" class="lead">3.2K đăng ký</div>
						</div>

					</div>
					<button class="btn btn-light rounded-pill fw-semibold px-4"
						style="font-size: 17px">Đăng ký</button>
				</div>
				<div class="d-flex gap-2">
					<div
						class="rounded-pill d-flex justify-content-between align-items-center px-3 gap-2"
						style="background-color: #272727">
						<div style="cursor: pointer">
							<c:choose>
								<c:when test="${watched != null && watched.liked}">
									<span class="fw-bold"><a
										href="${pageContext.request.contextPath}/unlike_video_detail/${video.id}"
										style="text-decoration: none"><i
											class="bi bi-hand-thumbs-up-fill"></i></a> 3.1K</span>
								</c:when>
								<c:otherwise>
									<a
										href="${pageContext.request.contextPath}/like_detail/${video.id}"
										style="text-decoration: none"> <i
										class="bi bi-hand-thumbs-up"></i>
									</a>
									3.1K
								</c:otherwise>
							</c:choose>
						</div>
						<div class="flex-1">|</div>
						<div style="cursor: pointer">
							<i class="bi bi-hand-thumbs-down"></i>
						</div>
					</div>
					<div
						class="rounded-pill d-flex justify-content-between align-items-center px-3 gap-2"
						style="background-color: #272727; cursor: pointer"
						data-bs-toggle="modal" data-bs-target="#exampleModal">
						<i class="bi bi-share-fill"></i> Share
					</div>

					<div class="modal fade" id="exampleModal" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">

								<div class="modal-header">
									<h1 class="modal-title fs-5 text-black" id="exampleModalLabel">Chia
										sẻ video</h1>
								</div>
								<div class="modal-body">
									<form
										action="${pageContext.request.contextPath}/views/send-mail/${video.id}"
										method="POST" class="d-flex flex-column" role="search"
										style="width: 100%">
									<input name="emails"
										class="form-control bg-black w-75 mx-auto text-white my-3"
										type="text"
										placeholder="Các email ngăn cách nhau bởi dấu phẩy"
										aria-label="default input example">
									<div class="d-flex justify-content-end w-100 mt-2">
										<button type="submit"
												class="btn btn-primary me-2">Gửi</button>
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">Đóng</button>
									</div>
									</form>
								</div>
							</div>
						</div>
					</div>

					<div
						class="rounded-pill d-flex justify-content-between align-items-center px-3 gap-2"
						style="background-color: #272727; cursor: pointer">
						<i class="bi bi-three-dots"></i>
					</div>
				</div>


			</div>
			<div class="rounded d-flex flex-column px-3 mt-4"
				style="background-color: #272727">
				<div
					class="d-flex justify-content-between align-items-center px-3 gap-2"
					style="background-color: #272727">
					<div class="d-flex gap-2">
						<div class="fw-semibold">${video.formattedViews}lượtxem</div>
						<div class="fw-semibold" style="font-size: 16px; color: #a7a7a7">${video.title}</div>
					</div>
				</div>
				<div class="fw-semibold px-3">${video.description}</div>

			</div>
			<div class="d-flex gap-4 mt-4">
				<div class="fw-bold">150 bình luận</div>
				<div class="fw-bold">
					<i class="bi bi-filter-left"></i> Sắp xếp theo
				</div>
			</div>
			<!-- Comment -->
			<div>
				<div class="send-message d-flex gap-2 mt-3">
					<img class="img-thumbnail rounded-circle object-fit-cover"
						src="https://cdn-icons-png.flaticon.com/512/9187/9187604.png"
						style="height: 40px" /> <input type="text"
						placeholder="Nhập vào bình luận ..." class="w-100"
						style="border: none; outline: none; border-bottom-width: 1px; border-bottom-color: gray; border-bottom-style: inset; background-color: transparent; color: white">
				</div>

				<div class="w-100 row comment mt-3">
					<div class="col-11 d-flex gap-2">
						<div class="rounded-circle">
							<img class="img-thumbnail rounded-circle object-fit-cover"
								src="https://cdn-icons-png.flaticon.com/512/9187/9187604.png"
								style="height: 40px" />
						</div>
						<div class="d-flex flex-column">
							<div class="d-flex align-items-end gap-2">
								<div class="fw-semibold" style="font-size: 16px">@Ten
									nguoi dung</div>
								<div class="lead" style="font-size: 12px">5 ngày trước</div>
							</div>
							<div class="fw-semibold" style="font-size: 14px">xin chào</div>
							<div class="d-flex gap-4" style="font-size: 16px">
								<div class="d-flex">
									<div>
										<i class="bi bi-hand-thumbs-up"></i> <span
											style="font-size: 12px;">3.1K</span>
									</div>
									<div class="flex-1 px-2"></div>
									<div>
										<i class="bi bi-hand-thumbs-down"></i>
									</div>
								</div>
								<div class="fw-bold" style="font-size: 14px; cursor: pointer">Reply</div>
							</div>

						</div>
					</div>
					<div class="col-1 d-flex justify-content-center align-items-center">
						<div
							class="col-1 d-flex justify-content-center align-items-center">
							<i class="bi bi-three-dots-vertical align-self-end"
								style="cursor: pointer"></i>
						</div>
					</div>
				</div>
				<div class="w-100 row comment mt-3">
					<div class="col-11 d-flex gap-2">
						<div class="rounded-circle">
							<img class="img-thumbnail rounded-circle object-fit-cover"
								src="https://cdn-icons-png.flaticon.com/512/9187/9187604.png"
								style="height: 40px" />
						</div>
						<div class="d-flex flex-column">
							<div class="d-flex align-items-end gap-2">
								<div class="fw-semibold" style="font-size: 16px">@Ten
									nguoi dung</div>
								<div class="lead" style="font-size: 12px">5 ngày trước</div>
							</div>
							<div class="fw-semibold" style="font-size: 14px">xin chào</div>
							<div class="d-flex gap-4" style="font-size: 16px">
								<div class="d-flex">
									<div>
										<i class="bi bi-hand-thumbs-up"></i> <span
											style="font-size: 12px;">3.1K</span>
									</div>
									<div class="flex-1 px-2"></div>
									<div>
										<i class="bi bi-hand-thumbs-down"></i>
									</div>
								</div>
								<div class="fw-bold" style="font-size: 14px; cursor: pointer">Reply</div>
							</div>

						</div>
					</div>
					<div class="col-1 d-flex justify-content-center align-items-center">
						<div
							class="col-1 d-flex justify-content-center align-items-center">
							<i class="bi bi-three-dots-vertical align-self-end"
								style="cursor: pointer"></i>
						</div>
					</div>
				</div>
				<div class="w-100 row comment mt-3">
					<div class="col-11 d-flex gap-2">
						<div class="rounded-circle">
							<img class="img-thumbnail rounded-circle object-fit-cover"
								src="https://cdn-icons-png.flaticon.com/512/9187/9187604.png"
								style="height: 40px" />
						</div>
						<div class="d-flex flex-column">
							<div class="d-flex align-items-end gap-2">
								<div class="fw-semibold" style="font-size: 16px">@Ten
									nguoi dung</div>
								<div class="lead" style="font-size: 12px">5 ngày trước</div>
							</div>
							<div class="fw-semibold" style="font-size: 14px">xin chào</div>
							<div class="d-flex gap-4" style="font-size: 16px">
								<div class="d-flex">
									<div>
										<i class="bi bi-hand-thumbs-up"></i> <span
											style="font-size: 12px;">3.1K</span>
									</div>
									<div class="flex-1 px-2"></div>
									<div>
										<i class="bi bi-hand-thumbs-down"></i>
									</div>
								</div>
								<div class="fw-bold" style="font-size: 14px; cursor: pointer">Reply</div>
							</div>

						</div>
					</div>
					<div class="col-1 d-flex justify-content-center align-items-center">
						<div
							class="col-1 d-flex justify-content-center align-items-center">
							<i class="bi bi-three-dots-vertical align-self-end"
								style="cursor: pointer"></i>
						</div>
					</div>
				</div>
				<div class="w-100 row comment mt-3">
					<div class="col-11 d-flex gap-2">
						<div class="rounded-circle">
							<img class="img-thumbnail rounded-circle object-fit-cover"
								src="https://cdn-icons-png.flaticon.com/512/9187/9187604.png"
								style="height: 40px" />
						</div>
						<div class="d-flex flex-column">
							<div class="d-flex align-items-end gap-2">
								<div class="fw-semibold" style="font-size: 16px">@Ten
									nguoi dung</div>
								<div class="lead" style="font-size: 12px">5 ngày trước</div>
							</div>
							<div class="fw-semibold" style="font-size: 14px">xin chào</div>
							<div class="d-flex gap-4" style="font-size: 16px">
								<div class="d-flex">
									<div>
										<i class="bi bi-hand-thumbs-up"></i> <span
											style="font-size: 12px;">3.1K</span>
									</div>
									<div class="flex-1 px-2"></div>
									<div>
										<i class="bi bi-hand-thumbs-down"></i>
									</div>
								</div>
								<div class="fw-bold" style="font-size: 14px; cursor: pointer">Reply</div>
							</div>

						</div>
					</div>
					<div class="col-1 d-flex justify-content-center align-items-center">
						<div
							class="col-1 d-flex justify-content-center align-items-center">
							<i class="bi bi-three-dots-vertical align-self-end"
								style="cursor: pointer"></i>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="col-12 col-xl-4 mt-4 mt-xl-0"
			style="background-color: black">

			<div class="w-100">
				<!-- Videos -->
				<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

				<div class="container">
					<c:forEach var="item" items="${listViDeo}">
						<a
							href="${pageContext.request.contextPath}/views/details/${item.id}"
							class="text-decoration-none">
							<div class="row mb-2" style="height: 96px">
								<div class="col-5 h-100">

									<div class="video-container">
										<img src="${item.poster}"
											class="border rounded w-100 object-fit-cover"
											title="YouTube video" style="height: 96px" allowfullscreen>
									</div>

								</div>
								<div
									class="col-7 d-flex flex-column text-white justify-content-center gap-2 h-100 row">
									<div class="col-11 d-flex flex-column justify-content-center">

										<h6 class="">${item.shortTitleWithEllipsis}</h6>
										<div class="lead" style="font-size: 15px">Nguyễn Thanh
											Tùng</div>
										<div class="lead" style="font-size: 12px">${item.formattedViews}
											lượt xem</div>


									</div>
									<div
										class="col-1 d-flex justify-content-center align-items-center">
										<i class="bi bi-three-dots-vertical" style="cursor: pointer"></i>
									</div>
								</div>
							</div>
						</a>
					</c:forEach>
				</div>


			</div>

			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
				crossorigin="anonymous"></script>
</main>