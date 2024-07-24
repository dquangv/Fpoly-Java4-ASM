<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<link rel="stylesheet" href="../css/index.css">
<main class="col-12 col-lg-11 text-white">
	<c:set var="totalItems" value="${fn:length(listFavVideo)}" />
	<div class="row">
		<div class="col-4">
			<div class="container">

				<div class="card rounded-3 bg-black text-white">
					<c:if test="${fn:length(listFavVideo) > 0}">
						<img src="${listFavVideo[0].getPoster()}" class="card-img-top"
							alt="...">
					</c:if>
					<div class="card-body">
						<h5 class="card-title mb-3">Video đã thích</h5>
						<p class="card-text mb-1">${user.fullname}</p>
						<p class="card-text text-secondary">${totalItems} videos</p>
						<a href="#" class="btn btn-primary bg-white text-black rounded-5">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-caret-right"
								viewBox="0 0 16 16">
									<path
									d="M6 12.796V3.204L11.481 8zm.659.753 5.48-4.796a1 1 0 0 0 0-1.506L6.66 2.451C6.011 1.885 5 2.345 5 3.204v9.592a1 1 0 0 0 1.659.753" />
								</svg>Phát tất cả
						</a> <a href="#" class="btn btn-primary bg-white text-black rounded-5">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-shuffle" viewBox="0 0 16 16">
									<path fill-rule="evenodd"
									d="M0 3.5A.5.5 0 0 1 .5 3H1c2.202 0 3.827 1.24 4.874 2.418.49.552.865 1.102 1.126 1.532.26-.43.636-.98 1.126-1.532C9.173 4.24 10.798 3 13 3v1c-1.798 0-3.173 1.01-4.126 2.082A9.6 9.6 0 0 0 7.556 8a9.6 9.6 0 0 0 1.317 1.918C9.828 10.99 11.204 12 13 12v1c-2.202 0-3.827-1.24-4.874-2.418A10.6 10.6 0 0 1 7 9.05c-.26.43-.636.98-1.126 1.532C4.827 11.76 3.202 13 1 13H.5a.5.5 0 0 1 0-1H1c1.798 0 3.173-1.01 4.126-2.082A9.6 9.6 0 0 0 6.444 8a9.6 9.6 0 0 0-1.317-1.918C4.172 5.01 2.796 4 1 4H.5a.5.5 0 0 1-.5-.5" />
									<path
									d="M13 5.466V1.534a.25.25 0 0 1 .41-.192l2.36 1.966c.12.1.12.284 0 .384l-2.36 1.966a.25.25 0 0 1-.41-.192m0 9v-3.932a.25.25 0 0 1 .41-.192l2.36 1.966c.12.1.12.284 0 .384l-2.36 1.966a.25.25 0 0 1-.41-.192" />
								</svg>Trộn bài
						</a>
					</div>
				</div>

			</div>
		</div>
		<div class="col-8 list-video">
			<c:if test="${fn:length(listFavVideo) == 0}">
				<p class="text-danger">${error}</p>
			</c:if>
			<c:forEach var="item" items="${listFavVideo}" varStatus="status">
				<div class="card my-3 bg-black text-white">
					<div class="row g-0">

						<div class="col-md-1 d-flex align-items-center">
							<p>${status.index+1}</p>
						</div>
						<div class="col-md-3">
							<a href="details/${item.id}" class="text-decoration-none"> <img
								src="${item.poster}" class="img-fluid rounded-start" alt="...">
							</a>
						</div>
						<div class="col-md-8">
							<div class="card-body">

								<p class="card-text fs-5">
									<a href="${pageContext.request.contextPath}/views/details/${item.id}" class="text-decoration-none">${item.title}</a>
								</p>
								<p class="card-text bg-black d-flex justify-content-between">
									<small class="text-secondary">${userAdmin.fullname} <span>
											. ${item.formattedViews} lượt xem</span></small> <a
										href="${pageContext.request.contextPath}/dislike_video/${item.id}">
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
										<path
												d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8z" />
									</svg>
									</a>
								</p>

							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</main>