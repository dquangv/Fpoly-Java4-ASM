<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
.card-body a {
	text-decoration: none;
}

.text-truncate {
	display: -webkit-box;
	-webkit-line-clamp: 2; /* Số dòng bạn muốn giới hạn */
	-webkit-box-orient: vertical;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: normal;
}
</style>
<div class="col-12 col-lg-11 px-4 ">
	<div id="carouselExample" class="carousel slide w-100">
		<div class="carousel-inner">
			<div class="carousel-item active ml-4">
				<div
					class="overflow-auto d-flex gap-2 align-items-center mx-lg-4 px-lg-4">
					<button class="btn">Tất cả</button>
					<button class="btn">Âm nhạc</button>
					<button class="btn">Thể thao</button>
					<button class="btn">Đời sống</button>
					<button class="btn">Học tập</button>
					<button class="btn">Trò chơi</button>
					<button class="btn">Danh sách kết hợp</button>
					<button class="btn">Trực tiếp</button>
					<button class="btn">Đề xuất mới</button>
					<button class="btn">Thịnh hành</button>
					<button class="btn">Phiêu lưu</button>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev d-none d-lg-block" type="button"
			data-bs-target="#carouselExample" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next d-none d-lg-block" type="button"
			data-bs-target="#carouselExample" data-bs-slide="next">
			<span class="carousel-control-next-icon text-white"
				style="color: white !important" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	<div class="row my-4">
		<c:forEach var="item" items="${listViDeo}">
			<div class="col-lg-3 col-sm-6 col-12 mb-2">
				<div
					style="border: 0 !important; background-color: transparent !important; color: #fff;"
					class="card p-0">
					<div class="w-100" style="border-radius: 4px; overflow: hidden">
						<img class="img-fluid" src="../img/${item.poster}" alt="">
					</div>
					<div class="card-body p-0"
						style="background: transparent !important">
						<div class="text-truncate">${item.title}</div>
						<br /> <span class="text-truncate"
							style="color: whitesmoke; font-size: 10px">${item.description}</span>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>
