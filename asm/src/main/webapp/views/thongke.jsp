<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Thống kê giống YouTube</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
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
</style>
</head>

<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-12">
				<h1 class="h2">Thống kê</h1>
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item"><a class="nav-link active" id="likes-tab"
						data-bs-toggle="tab" href="#likes" role="tab"
						aria-controls="likes" aria-selected="true">Thống kê lượt thích</a>
					</li>
					<li class="nav-item"><a class="nav-link" id="user-likes-tab"
						data-bs-toggle="tab" href="#user-likes" role="tab"
						aria-controls="user-likes" aria-selected="false">Danh sách
							người thích</a></li>
					<li class="nav-item"><a class="nav-link" id="user-shared-tab"
						data-bs-toggle="tab" href="#user-shared" role="tab"
						aria-controls="user-shared" aria-selected="false">Danh sách
							chia sẻ</a></li>
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
								<tr>
									<td>Video 1</td>
									<td>1500</td>
								</tr>
								<tr>
									<td>Video 2</td>
									<td>2300</td>
								</tr>
								<tr>
									<td>Video 3</td>
									<td>1200</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="tab-pane fade" id="user-likes" role="tabpanel"
						aria-labelledby="user-likes-tab">
						<select class="form-select" aria-label="Default select example">
							<option selected>Lọc theo video</option>
							<option value="1">Video1</option>
							<option value="2">Video2</option>
							<option value="3">Video3</option>
						</select>
						<table class="table table-striped table-dark mt-4">
							<thead>
								<tr>
									<th>Username</th>
									<th>Full Name</th>
									<th>Email</th>
									<th>Favorite Day</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>user1</td>
									<td>fullname1</td>
									<td>email1</td>
									<td>Monday</td>
								</tr>
								<tr>
									<td>user2</td>
									<td>fullname2</td>
									<td>email2</td>
									<td>Tuesday</td>
								</tr>
								<tr>
									<td>user3</td>
									<td>fullname3</td>
									<td>email3</td>
									<td>Wednesday</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="tab-pane fade" id="user-shared" role="tabpanel"
						aria-labelledby="user-shared-tab">
						<select class="form-select" aria-label="Default select example">
							<option selected>Lọc theo video</option>
							<option value="1">Video1</option>
							<option value="2">Video2</option>
							<option value="3">Video3</option>
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
					</div>
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
			type : 'bar',
			data : {
				labels : [ 'Video 1', 'Video 2', 'Video 3' ],
				datasets : [ {
					label : 'Lượt thích',
					data : [ 1500, 2300, 1200 ],
					backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
							'rgba(54, 162, 235, 0.2)',
							'rgba(255, 206, 86, 0.2)' ],
					borderColor : [ 'rgba(255, 99, 132, 1)',
							'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)' ],
					borderWidth : 1
				} ]
			},
			options : {
				scales : {
					y : {
						beginAtZero : true
					}
				}
			}
		});
	</script>
</body>

</html>
