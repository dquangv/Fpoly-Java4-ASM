<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
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
</head>

<body style="background-color: black !important" class="text-white">
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content" style="background-color: #272727">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Tạo video</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="videoId" class="form-label">ID</label>
                        <input type="text" class="form-control" id="videoId" aria-describedby="idHelp" disabled
                            value="1" style="background-color: gray !important; color: white">
                    </div>
                    <div class="mb-3">
                        <label for="videoTitle" class="form-label">Tiêu đề</label>
                        <input type="text" class="form-control" id="videoTitle" aria-describedby="titleHelp"
                            style="background-color: transparent !important; color: white">
                    </div>
                    <div class="mb-3">
                        <label for="videoLink" class="form-label">Link video</label>
                        <input type="text" class="form-control" id="videoLink"
                            style="background-color: transparent !important; color: white">
                    </div>
                    <div class="row">
                        <div class="mb-3 col-xl-2">
                            <label for="imageFile" class="form-label">Hình ảnh video</label>
                            <div class="image-wrapper">
                                <img id="videoImage"
                                    src="https://media.istockphoto.com/id/1409329028/vector/no-picture-available-placeholder-thumbnail-icon-illustration-design.jpg?s=612x612&w=0&k=20&c=_zOuJu755g2eEUioiOUdz_mHKJQJn-tDgIAhQzyeKUQ="
                                    alt="Hình ảnh video" class="img-fluid mb-2"
                                    style="height: 150px; width: 150px; object-fit: cover">
                                <input type="file" class="form-control d-none" id="imageFile"
                                    aria-describedby="imageFileHelp" style="display: none !important">
                            </div>
                        </div>
                        <div class="mb-3 col-xl-10">
                            <label for="imageDescription" class="form-label">Mô tả hình ảnh</label>
                            <textarea class="form-control" id="imageDescription" aria-describedby="imageDescriptionHelp"
                                style="background-color: transparent !important; color: white; height: 150px !important"></textarea>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="videoActivation" class="form-label">Kích hoạt</label>
                        <div id="videoActivation" class="d-flex gap-2">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="activationOptions" id="activationYes"
                                    value="yes" checked>
                                <label class="form-check-label" for="activationYes">
                                    Kích hoạt
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="activationOptions" id="activationNo"
                                    value="no">
                                <label class="form-check-label" for="activationNo">
                                    Vô hiệu
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                    <button type="button" class="btn btn-primary">Lưu</button>
                </div>
            </div>
        </div>
    </div>

    <div class="container mt-2">
        <div class="d-flex justify-content-between mb-3">
            <h3>Danh sách video</h3>
            <!-- Button trigger modal -->
            <button type="button" class="rounded text-white btn" data-bs-toggle="modal" data-bs-target="#exampleModal"
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
                        style="background-color: rgba(255, 255, 255, 0.1) !important; color: white !important">Tiêu đề
                    </th>
                    <th scope="col"
                        style="background-color: rgba(255, 255, 255, 0.1) !important; color: white !important">Lượt xem
                    </th>
                    <th scope="col"
                        style="background-color: rgba(255, 255, 255, 0.1) !important; color: white !important">Xem</th>
                    <th scope="col"
                        style="background-color: rgba(255, 255, 255, 0.1) !important; color: white !important">Chỉnh sửa
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row"
                        style="background-color: rgba(255, 255, 255, 0.1) !important; color: white !important">1</th>
                    <td style="background-color: rgba(255, 255, 255, 0.1) !important; color: white !important">Nhạc
                        remix</td>
                    <td style="background-color: rgba(255, 255, 255, 0.1) !important; color: white !important">300</td>
                    <td style="background-color: rgba(255, 255, 255, 0.1) !important; color: white !important"><a
                            href="#" class="btn btn-primary">Xem chi tiết</a></td>
                    <td class="d-flex gap-2"
                        style="background-color: rgba(255, 255, 255, 0.1) !important; color: white !important">
                        <button type="button" class="btn btn-success">Cập nhật</button>
                        <button type="button" class="btn btn-danger">Xóa</button>
                    </td>
                </tr>
            </tbody>
        </table>

        <div class="d-flex justify-content-center align-items-center">
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-end"
                    style="background-color: rgba(255, 255, 255, 0.1) !important">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" tabindex="-1">Previous</a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#">Next</a>
                    </li>
                </ul>
            </nav>
        </div>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <script>
        document.getElementById('imageFile').addEventListener('change', function (event) {
            const file = event.target.files[0];
            const reader = new FileReader();

            reader.onload = function (e) {
                document.getElementById('videoImage').src = e.target.result;
            };

            reader.readAsDataURL(file);
        });

        document.getElementById('videoImage').addEventListener('click', function () {
            document.getElementById('imageFile').click();
        });
    </script>
</body>

</html>