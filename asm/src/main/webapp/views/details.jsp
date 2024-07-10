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
        .truncate {
            max-height: 3.6em;
            /* Limit to 3 lines, 1.2em per line */
            overflow: hidden;
            color: white;
        }

        .comment {}
    </style>
</head>

<body style="background-color: black !important" class="text-white">
    <div class="container mt-2">
        <div class="row">
            <div class="col-12 col-xl-8">
                <div class="ratio ratio-16x9">
                    <iframe src="https://www.youtube.com/embed/8RHXrElo5Hs?autoplay=1" title="YouTube video"
                        allowfullscreen></iframe>
                </div>
                <h5 class="fw-bold py-2">Playlist Nhạc Speed Up buồn và chill để học bài | Minme</h5>
                <div class="d-flex justify-content-between">
                    <div class="d-flex gap-4">
                        <div class="d-flex gap-2" style="max-height: 43px">

                            <img class="img-thumbnail rounded-circle object-fit-cover"
                                src="https://cdn-icons-png.flaticon.com/512/9187/9187604.png" style="height: 40px" />
                            <div class="d-flex flex-column justify-content-center" style="max-height: 43px">
                                <h6 style="font-size: 15px">Minme </h6>
                                <div style="font-size: 13px" class="lead">Minme</div>
                            </div>

                        </div>
                        <button class="btn btn-light rounded-pill fw-semibold px-4" style="font-size: 17px">Đăng
                            ký</button>
                    </div>
                    <div class="d-flex gap-2">
                        <div class="rounded-pill d-flex justify-content-between align-items-center px-3 gap-2"
                            style="background-color: #272727">
                            <div style="cursor: pointer"><i class="bi bi-hand-thumbs-up"></i> <span
                                    class="fw-bold">3.1K</span> </div>
                            <div class="flex-1">|</div>
                            <div style="cursor: pointer"><i class="bi bi-hand-thumbs-down"></i> </div>
                        </div>
                        <div class="rounded-pill d-flex justify-content-between align-items-center px-3 gap-2"
                            style="background-color: #272727; cursor: pointer">
                            <i class="bi bi-share-fill"></i>
                            Share
                        </div>

                        <div class="rounded-pill d-flex justify-content-between align-items-center px-3 gap-2"
                            style="background-color: #272727;cursor: pointer">
                            <i class="bi bi-three-dots"></i>
                        </div>
                    </div>


                </div>
                <div class="rounded d-flex flex-column px-3 mt-4" style="background-color: #272727">
                    <div class="d-flex justify-content-between align-items-center px-3 gap-2"
                        style="background-color: #272727">
                        <div class="d-flex gap-2">
                            <div class="fw-semibold">269K lượt xem 3 tháng trước</div>
                            <div class="fw-semibold" style="font-size: 16px; color: #a7a7a7  ">Danh sách phát Speedup
                                buồn
                                tâm trạng</div>
                        </div>
                    </div>
                    <div class="fw-semibold px-3">Playlist Nhạc Speed Up buồn và chill để học bài | Minme</div>

                </div>
                <div class="d-flex gap-4 mt-4">
                    <div class="fw-bold">150 bình luận</div>
                    <div class="fw-bold">
                        <i class="bi bi-filter-left"></i>
                        Sắp xếp theo
                    </div>
                </div>
                <!-- Comment -->
                <div>
                    <div class="send-message d-flex gap-2 mt-3">
                        <img class="img-thumbnail rounded-circle object-fit-cover"
                            src="https://cdn-icons-png.flaticon.com/512/9187/9187604.png" style="height: 40px" />
                        <input type="text" placeholder="Nhập vào bình luận ..." class="w-100"
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
                                    <div class="fw-semibold" style="font-size: 16px">@Ten nguoi dung</div>
                                    <div class="lead" style="font-size: 12px">5 ngày trước</div>
                                </div>
                                <div class="fw-semibold" style="font-size: 14px">xin chào </div>
                                <div class="d-flex gap-4" style="font-size: 16px">
                                    <div class="d-flex">
                                        <div><i class="bi bi-hand-thumbs-up"></i> <span
                                                style="font-size: 12px;">3.1K</span>
                                        </div>
                                        <div class="flex-1 px-2"></div>
                                        <div><i class="bi bi-hand-thumbs-down"></i> </div>
                                    </div>
                                    <div class="fw-bold" style="font-size: 14px; cursor: pointer">Reply</div>
                                </div>

                            </div>
                        </div>
                        <div class="col-1 d-flex justify-content-center align-items-center">
                            <div class="col-1 d-flex justify-content-center align-items-center"><i
                                    class="bi bi-three-dots-vertical align-self-end" style="cursor: pointer"></i></div>
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
                                    <div class="fw-semibold" style="font-size: 16px">@Ten nguoi dung</div>
                                    <div class="lead" style="font-size: 12px">5 ngày trước</div>
                                </div>
                                <div class="fw-semibold" style="font-size: 14px">xin chào </div>
                                <div class="d-flex gap-4" style="font-size: 16px">
                                    <div class="d-flex">
                                        <div><i class="bi bi-hand-thumbs-up"></i> <span
                                                style="font-size: 12px;">3.1K</span>
                                        </div>
                                        <div class="flex-1 px-2"></div>
                                        <div><i class="bi bi-hand-thumbs-down"></i> </div>
                                    </div>
                                    <div class="fw-bold" style="font-size: 14px; cursor: pointer">Reply</div>
                                </div>

                            </div>
                        </div>
                        <div class="col-1 d-flex justify-content-center align-items-center">
                            <div class="col-1 d-flex justify-content-center align-items-center"><i
                                    class="bi bi-three-dots-vertical align-self-end" style="cursor: pointer"></i></div>
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
                                    <div class="fw-semibold" style="font-size: 16px">@Ten nguoi dung</div>
                                    <div class="lead" style="font-size: 12px">5 ngày trước</div>
                                </div>
                                <div class="fw-semibold" style="font-size: 14px">xin chào </div>
                                <div class="d-flex gap-4" style="font-size: 16px">
                                    <div class="d-flex">
                                        <div><i class="bi bi-hand-thumbs-up"></i> <span
                                                style="font-size: 12px;">3.1K</span>
                                        </div>
                                        <div class="flex-1 px-2"></div>
                                        <div><i class="bi bi-hand-thumbs-down"></i> </div>
                                    </div>
                                    <div class="fw-bold" style="font-size: 14px; cursor: pointer">Reply</div>
                                </div>

                            </div>
                        </div>
                        <div class="col-1 d-flex justify-content-center align-items-center">
                            <div class="col-1 d-flex justify-content-center align-items-center"><i
                                    class="bi bi-three-dots-vertical align-self-end" style="cursor: pointer"></i></div>
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
                                    <div class="fw-semibold" style="font-size: 16px">@Ten nguoi dung</div>
                                    <div class="lead" style="font-size: 12px">5 ngày trước</div>
                                </div>
                                <div class="fw-semibold" style="font-size: 14px">xin chào </div>
                                <div class="d-flex gap-4" style="font-size: 16px">
                                    <div class="d-flex">
                                        <div><i class="bi bi-hand-thumbs-up"></i> <span
                                                style="font-size: 12px;">3.1K</span>
                                        </div>
                                        <div class="flex-1 px-2"></div>
                                        <div><i class="bi bi-hand-thumbs-down"></i> </div>
                                    </div>
                                    <div class="fw-bold" style="font-size: 14px; cursor: pointer">Reply</div>
                                </div>

                            </div>
                        </div>
                        <div class="col-1 d-flex justify-content-center align-items-center">
                            <div class="col-1 d-flex justify-content-center align-items-center"><i
                                    class="bi bi-three-dots-vertical align-self-end" style="cursor: pointer"></i></div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-12 col-xl-4 mt-4 mt-xl-0" style="background-color: black">

                <div class="w-100">
                    <!-- Videos -->
                    <div class="row mb-2" style="height: 96px">
                        <div class="col-5 h-100">
                            <div class="video-container">
                                <img src="https://i.ytimg.com/vi/8RHXrElo5Hs/maxresdefault.jpg"
                                    class="border rounded w-100 object-fit-cover" title="YouTube video" style="height: 96px"
                                    allowfullscreen>
                            </div>
                        </div>
                        <div class="col-7 d-flex flex-column text-white justify-content-center gap-2 h-100 row py-4">
                            <div class="col-11 d-flex flex-column justify-content-center">
                                <div class="d-flex flex-column justify-content-between" style="height: 50%">
                                    <h6 class="truncate">Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed</h6>
                                    <div class="lead" style="font-size: 15px">Minmess</div>
                                </div>
                                <div class="d-flex gap-2">
                                    <div class="lead" style="font-size: 12px">12K người xem</div>
                                    <div style="font-size: 12px">3 ngày trước</div>
                                </div>
                            </div>
                            <div class="col-1 d-flex justify-content-center align-items-center"><i
                                    class="bi bi-three-dots-vertical" style="cursor: pointer"></i></div>
                        </div>
                    </div>
                    <div class="row mb-2" style="height: 96px">
                        <div class="col-5 h-100">
                            <div class="video-container">
                                <img src="https://i.ytimg.com/vi/8RHXrElo5Hs/maxresdefault.jpg"
                                    class="border rounded w-100 object-fit-cover" title="YouTube video" style="height: 96px"
                                    allowfullscreen>
                            </div>
                        </div>
                        <div class="col-7 d-flex flex-column text-white justify-content-center gap-2 h-100 row py-4">
                            <div class="col-11 d-flex flex-column justify-content-center">
                                <div class="d-flex flex-column justify-content-between" style="height: 50%">
                                    <h6 class="truncate">Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed</h6>
                                    <div class="lead" style="font-size: 15px">Minmess</div>
                                </div>
                                <div class="d-flex gap-2">
                                    <div class="lead" style="font-size: 12px">12K người xem</div>
                                    <div style="font-size: 12px">3 ngày trước</div>
                                </div>
                            </div>
                            <div class="col-1 d-flex justify-content-center align-items-center"><i
                                    class="bi bi-three-dots-vertical" style="cursor: pointer"></i></div>
                        </div>
                    </div>
                    <div class="row mb-2" style="height: 96px">
                        <div class="col-5 h-100">
                            <div class="video-container">
                                <img src="https://i.ytimg.com/vi/8RHXrElo5Hs/maxresdefault.jpg"
                                    class="border rounded w-100 object-fit-cover" title="YouTube video" style="height: 96px"
                                    allowfullscreen>
                            </div>
                        </div>
                        <div class="col-7 d-flex flex-column text-white justify-content-center gap-2 h-100 row py-4">
                            <div class="col-11 d-flex flex-column justify-content-center">
                                <div class="d-flex flex-column justify-content-between" style="height: 50%">
                                    <h6 class="truncate">Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed</h6>
                                    <div class="lead" style="font-size: 15px">Minmess</div>
                                </div>
                                <div class="d-flex gap-2">
                                    <div class="lead" style="font-size: 12px">12K người xem</div>
                                    <div style="font-size: 12px">3 ngày trước</div>
                                </div>
                            </div>
                            <div class="col-1 d-flex justify-content-center align-items-center"><i
                                    class="bi bi-three-dots-vertical" style="cursor: pointer"></i></div>
                        </div>
                    </div>
                    <div class="row mb-2" style="height: 96px">
                        <div class="col-5 h-100">
                            <div class="video-container">
                                <img src="https://i.ytimg.com/vi/8RHXrElo5Hs/maxresdefault.jpg"
                                    class="border rounded w-100 object-fit-cover" title="YouTube video" style="height: 96px"
                                    allowfullscreen>
                            </div>
                        </div>
                        <div class="col-7 d-flex flex-column text-white justify-content-center gap-2 h-100 row py-4">
                            <div class="col-11 d-flex flex-column justify-content-center">
                                <div class="d-flex flex-column justify-content-between" style="height: 50%">
                                    <h6 class="truncate">Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed</h6>
                                    <div class="lead" style="font-size: 15px">Minmess</div>
                                </div>
                                <div class="d-flex gap-2">
                                    <div class="lead" style="font-size: 12px">12K người xem</div>
                                    <div style="font-size: 12px">3 ngày trước</div>
                                </div>
                            </div>
                            <div class="col-1 d-flex justify-content-center align-items-center"><i
                                    class="bi bi-three-dots-vertical" style="cursor: pointer"></i></div>
                        </div>
                    </div>
                    <div class="row mb-2" style="height: 96px">
                        <div class="col-5 h-100">
                            <div class="video-container">
                                <img src="https://i.ytimg.com/vi/8RHXrElo5Hs/maxresdefault.jpg"
                                    class="border rounded w-100 object-fit-cover" title="YouTube video" style="height: 96px"
                                    allowfullscreen>
                            </div>
                        </div>
                        <div class="col-7 d-flex flex-column text-white justify-content-center gap-2 h-100 row py-4">
                            <div class="col-11 d-flex flex-column justify-content-center">
                                <div class="d-flex flex-column justify-content-between" style="height: 50%">
                                    <h6 class="truncate">Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed</h6>
                                    <div class="lead" style="font-size: 15px">Minmess</div>
                                </div>
                                <div class="d-flex gap-2">
                                    <div class="lead" style="font-size: 12px">12K người xem</div>
                                    <div style="font-size: 12px">3 ngày trước</div>
                                </div>
                            </div>
                            <div class="col-1 d-flex justify-content-center align-items-center"><i
                                    class="bi bi-three-dots-vertical" style="cursor: pointer"></i></div>
                        </div>
                    </div>
                    <div class="row mb-2" style="height: 96px">
                        <div class="col-5 h-100">
                            <div class="video-container">
                                <img src="https://i.ytimg.com/vi/8RHXrElo5Hs/maxresdefault.jpg"
                                    class="border rounded w-100 object-fit-cover" title="YouTube video" style="height: 96px"
                                    allowfullscreen>
                            </div>
                        </div>
                        <div class="col-7 d-flex flex-column text-white justify-content-center gap-2 h-100 row py-4">
                            <div class="col-11 d-flex flex-column justify-content-center">
                                <div class="d-flex flex-column justify-content-between" style="height: 50%">
                                    <h6 class="truncate">Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed</h6>
                                    <div class="lead" style="font-size: 15px">Minmess</div>
                                </div>
                                <div class="d-flex gap-2">
                                    <div class="lead" style="font-size: 12px">12K người xem</div>
                                    <div style="font-size: 12px">3 ngày trước</div>
                                </div>
                            </div>
                            <div class="col-1 d-flex justify-content-center align-items-center"><i
                                    class="bi bi-three-dots-vertical" style="cursor: pointer"></i></div>
                        </div>
                    </div>
                    <div class="row mb-2" style="height: 96px">
                        <div class="col-5 h-100">
                            <div class="video-container">
                                <img src="https://i.ytimg.com/vi/8RHXrElo5Hs/maxresdefault.jpg"
                                    class="border rounded w-100 object-fit-cover" title="YouTube video" style="height: 96px"
                                    allowfullscreen>
                            </div>
                        </div>
                        <div class="col-7 d-flex flex-column text-white justify-content-center gap-2 h-100 row py-4">
                            <div class="col-11 d-flex flex-column justify-content-center">
                                <div class="d-flex flex-column justify-content-between" style="height: 50%">
                                    <h6 class="truncate">Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed</h6>
                                    <div class="lead" style="font-size: 15px">Minmess</div>
                                </div>
                                <div class="d-flex gap-2">
                                    <div class="lead" style="font-size: 12px">12K người xem</div>
                                    <div style="font-size: 12px">3 ngày trước</div>
                                </div>
                            </div>
                            <div class="col-1 d-flex justify-content-center align-items-center"><i
                                    class="bi bi-three-dots-vertical" style="cursor: pointer"></i></div>
                        </div>
                    </div>
                    <div class="row mb-2" style="height: 96px">
                        <div class="col-5 h-100">
                            <div class="video-container">
                                <img src="https://i.ytimg.com/vi/8RHXrElo5Hs/maxresdefault.jpg"
                                    class="border rounded w-100 object-fit-cover" title="YouTube video" style="height: 96px"
                                    allowfullscreen>
                            </div>
                        </div>
                        <div class="col-7 d-flex flex-column text-white justify-content-center gap-2 h-100 row py-4">
                            <div class="col-11 d-flex flex-column justify-content-center">
                                <div class="d-flex flex-column justify-content-between" style="height: 50%">
                                    <h6 class="truncate">Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed</h6>
                                    <div class="lead" style="font-size: 15px">Minmess</div>
                                </div>
                                <div class="d-flex gap-2">
                                    <div class="lead" style="font-size: 12px">12K người xem</div>
                                    <div style="font-size: 12px">3 ngày trước</div>
                                </div>
                            </div>
                            <div class="col-1 d-flex justify-content-center align-items-center"><i
                                    class="bi bi-three-dots-vertical" style="cursor: pointer"></i></div>
                        </div>
                    </div>
                    <div class="row mb-2" style="height: 96px">
                        <div class="col-5 h-100">
                            <div class="video-container">
                                <img src="https://i.ytimg.com/vi/8RHXrElo5Hs/maxresdefault.jpg"
                                    class="border rounded w-100 object-fit-cover" title="YouTube video" style="height: 96px"
                                    allowfullscreen>
                            </div>
                        </div>
                        <div class="col-7 d-flex flex-column text-white justify-content-center gap-2 h-100 row py-4">
                            <div class="col-11 d-flex flex-column justify-content-center">
                                <div class="d-flex flex-column justify-content-between" style="height: 50%">
                                    <h6 class="truncate">Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed</h6>
                                    <div class="lead" style="font-size: 15px">Minmess</div>
                                </div>
                                <div class="d-flex gap-2">
                                    <div class="lead" style="font-size: 12px">12K người xem</div>
                                    <div style="font-size: 12px">3 ngày trước</div>
                                </div>
                            </div>
                            <div class="col-1 d-flex justify-content-center align-items-center"><i
                                    class="bi bi-three-dots-vertical" style="cursor: pointer"></i></div>
                        </div>
                    </div>
                    <div class="row mb-2" style="height: 96px">
                        <div class="col-5 h-100">
                            <div class="video-container">
                                <img src="https://i.ytimg.com/vi/8RHXrElo5Hs/maxresdefault.jpg"
                                    class="border rounded w-100 object-fit-cover" title="YouTube video" style="height: 96px"
                                    allowfullscreen>
                            </div>
                        </div>
                        <div class="col-7 d-flex flex-column text-white justify-content-center gap-2 h-100 row py-4">
                            <div class="col-11 d-flex flex-column justify-content-center">
                                <div class="d-flex flex-column justify-content-between" style="height: 50%">
                                    <h6 class="truncate">Playlist Nhạc Speed Up buồn và chill để học bài | Minmed</h6>
                                    <div class="lead" style="font-size: 15px">Minmess</div>
                                </div>
                                <div class="d-flex gap-2">
                                    <div class="lead" style="font-size: 12px">12K người xem</div>
                                    <div style="font-size: 12px">3 ngày trước</div>
                                </div>
                            </div>
                            <div class="col-1 d-flex justify-content-center align-items-center"><i
                                    class="bi bi-three-dots-vertical" style="cursor: pointer"></i></div>
                        </div>
                    </div>
                    <div class="row mb-2" style="height: 96px">
                        <div class="col-5 h-100">
                            <div class="video-container">
                                <img src="https://i.ytimg.com/vi/8RHXrElo5Hs/maxresdefault.jpg"
                                    class="border rounded w-100 object-fit-cover" title="YouTube video" style="height: 96px"
                                    allowfullscreen>
                            </div>
                        </div>
                        <div class="col-7 d-flex flex-column text-white justify-content-center gap-2 h-100 row py-4">
                            <div class="col-11 d-flex flex-column justify-content-center">
                                <div class="d-flex flex-column justify-content-between" style="height: 50%">
                                    <h6 class="truncate">Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed Nhạc
                                        speed Nhạc speed Nhạc speed Nhạc speed Nhạc speed</h6>
                                    <div class="lead" style="font-size: 15px">Minmess</div>
                                </div>
                                <div class="d-flex gap-2">
                                    <div class="lead" style="font-size: 12px">12K người xem</div>
                                    <div style="font-size: 12px">3 ngày trước</div>
                                </div>
                            </div>
                            <div class="col-1 d-flex justify-content-center align-items-center"><i
                                    class="bi bi-three-dots-vertical" style="cursor: pointer"></i></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
</body>

</html>