<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Thống kê</title>
<style>
body {
	background-color: #181818;
	color: #ffffff;
}

.navbar-brand {
	font-size: 24px;
	font-weight: bold;
}

.sidebar {
	position: fixed;
	top: 0;
	bottom: 0;
	left: 0;
	z-index: 1000;
	padding: 48px 0 0;
	background-color: #232323;
}

.sidebar .nav-link {
	font-weight: 500;
	color: #bbb;
}

.sidebar .nav-link.active {
	color: #ffffff;
}

.main {
	margin-left: 200px;
	padding: 20px;
}

.charts {
	background: #282828;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
}

.tab-content {
	margin-top: 20px;
}

.nav-tabs .nav-link {
	background-color: #232323;
	color: #bbb;
}

.nav-tabs .nav-link.active {
	background-color: #333;
	color: #ffffff;
}

table {
	background-color: #282828;
}

table th, table td {
	color: #bbb;
}

table thead th {
	background-color: #333;
}

table tbody tr:hover {
	background-color: #383838;
}
input.form-control::placeholder {
    color: #bbb;
}
</style>
</head>
<body>
	<main class="col-12 col-lg-11 text-white">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<h1 class="h2">Thống kê</h1>
					<ul class="nav nav-tabs" id="myTab" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							id="likes-tab" data-bs-toggle="tab" href="#likes" role="tab"
							aria-controls="likes" aria-selected="true">Thống kê lượt thích</a>
						</li>
						<li class="nav-item"><a class="nav-link" id="user-likes-tab"
							data-bs-toggle="tab" href="#user-likes" role="tab"
							aria-controls="user-likes" aria-selected="false">Danh sách
								người thích</a></li>
<!-- 						<li class="nav-item"><a class="nav-link" id="user-shared-tab"
							data-bs-toggle="tab" href="#user-shared" role="tab"
							aria-controls="user-shared" aria-selected="false">Danh sách
								chia sẻ</a></li> -->
					</ul>
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="likes" role="tabpanel"
							aria-labelledby="likes-tab">
							<div class="charts">
								<canvas id="likesChart" width="400" height="200"></canvas>
							</div>
							<table class="table table-striped table-dark mt-4">
								<thead>
									<tr>
										<th>Video</th>
										<th>Lượt thích</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="video" items="${videoStatistics}">
										<tr>
											<td><c:out value="${video.title}" /></td>
											<td><c:out value="${video.views}" /></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div class="tab-pane fade" id="user-likes" role="tabpanel"
							aria-labelledby="user-likes-tab">
							<input type="text" id="videoTitleInput" class="form-control"
								placeholder="Nhập tên video, fullname hoặc email để lọc">
							<table class="table table-striped table-dark mt-4"
								id="userLikesTable">
								<thead>
									<tr>
										<th>Video</th>
										<th>Full Name</th>
										<th>Email</th>
										<th>Like Day</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="video" items="${videoDetailStatistics}">
										 <tr class="user-like-row"
                                            data-video-title="${video.videoTitle}"
                                            data-user-fullname="${video.userFullname}"
                                            data-user-email="${video.userEmail}">
                                            <td>${video.videoTitle}</td>
                                            <td>${video.userFullname}</td>
                                            <td>${video.userEmail}</td>
                                            <td>${video.likeDate}</td>
                                        </tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- <div class="tab-pane fade" id="user-shared" role="tabpanel" aria-labelledby="user-shared-tab">
                        <select class="form-select" aria-label="Default select example">
                            <option selected>Lọc theo video</option>
                        </select>
                        <table class="table table-striped table-dark mt-4">
                            <thead>
                            <tr>
                                <th>Sender Name</th>
                                <th>Sender Email</th>
                                <th>Receiver Email</th>
                                <th>Sent Date</th>
                            </tr>
                            </thead>
                            <tbody>
                            Sample data for user shares
                            <tr>
                                <td>name1</td>
                                <td>email1</td>
                                <td>receiverEmail1</td>
                                <td>Thursday</td>
                            </tr>
                            <tr>
                                <td>name2</td>
                                <td>email2</td>
                                <td>receiverEmail2</td>
                                <td>Friday</td>
                            </tr>
                            <tr>
                                <td>name3</td>
                                <td>email3</td>
                                <td>receiverEmail3</td>
                                <td>Saturday</td>
                            </tr>
                            </tbody>
                        </table>
                    </div> -->
					</div>
				</div>
			</div>
		</div>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
		<script>
        const ctx = document.getElementById('likesChart').getContext('2d');
        const likesChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: [<c:forEach var="video" items="${videoStatistics}" varStatus="status">
                    <c:if test="${status.index > 0}">, </c:if>
                    '<c:out value="${video.title}"/>'
                </c:forEach>],
                datasets: [{
                    label: 'Lượt thích',
                    data: [<c:forEach var="video" items="${videoStatistics}" varStatus="status">
                        <c:if test="${status.index > 0}">, </c:if>
                        '<c:out value="${video.views}"/>'
                    </c:forEach>],
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(255, 206, 86, 0.2)'
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });

        document.getElementById('videoTitleInput').addEventListener('input', function () {
            var keyword = this.value.toLowerCase();
            var rows = document.querySelectorAll('#userLikesTable .user-like-row');
            rows.forEach(function (row) {
                var videoTitle = row.getAttribute('data-video-title').toLowerCase();
                var userFullname = row.getAttribute('data-user-fullname').toLowerCase();
                var userEmail = row.getAttribute('data-user-email').toLowerCase();
                if (videoTitle.includes(keyword) || userFullname.includes(keyword) || userEmail.includes(keyword)) {
                    row.style.display = '';
                } else {
                    row.style.display = 'none';
                }
            });
        });
    </script>
	</main>
</body>
</html>
