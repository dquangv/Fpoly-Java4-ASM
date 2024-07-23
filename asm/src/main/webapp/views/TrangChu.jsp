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
<div class="col-12 col-lg-11 px-4">
    <div id="carouselExample" class="carousel slide w-100">
        <div class="carousel-inner">
            <div class="carousel-item active ml-4">
                <div class="overflow-auto d-flex gap-2 align-items-center mx-lg-4 px-lg-4">
                    <button class="btn" style="font-size: 14px">Tất cả</button>
                    <button class="btn" style="font-size: 14px">Âm nhạc</button>
                    <button class="btn" style="font-size: 14px">Thể thao</button>
                    <button class="btn" style="font-size: 14px">Đời sống</button>
                    <button class="btn" style="font-size: 14px">Học tập</button>
                    <button class="btn" style="font-size: 14px">Trò chơi</button>
                    <button class="btn" style="font-size: 14px">Danh sách kết hợp</button>
                    <button class="btn" style="font-size: 14px">Trực tiếp</button>
                    <button class="btn" style="font-size: 14px">Đề xuất mới</button>
                    <button class="btn" style="font-size: 14px">Thịnh hành</button>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev d-none d-lg-block" type="button" data-bs-target="#carouselExample" data-bs-slide="prev" style="width: 33px;height=33px;">
            <span class="carousel-control-prev-icon" aria-hidden="true" style="width: 1rem; height: 1rem;"></span> 
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next d-none d-lg-block" type="button" data-bs-target="#carouselExample" data-bs-slide="next" style="width: 33px;height=33px;">
            <span class="carousel-control-next-icon text-white" style="color: white !important; width: 1rem; height: 1rem;" aria-hidden="true"></span> 
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <div class="row my-4">
        <c:forEach var="item" items="${listViDeo}">
            <div class="col-lg-4 col-sm-6 col-12 mb-2">
                <a href="details/${item.id}" class="text-decoration-none">
                    <div style="border: 0 !important; background-color: transparent !important; color: #fff;" class="card p-0">
                        <div class="video-container w-100" style="border-radius: 4px; overflow: hidden !important; height: 200px !important">
                            <img src="${item.poster}" data-video-link="${item.link}" class="rounded w-100 object-fit-cover" title="YouTube video" style="height: 200px" allowfullscreen>
                        </div>
                        <div class="row">
                            <div class="col-lg-2" style="padding-top:15px">
                                <img alt="" src="../img/tung.jpg" style="width: 36px; height: 36px; border-radius: 50%">
                            </div>
                            <div class="col-lg-10" style="padding-left:0">
                                <div class="card-body p-0" style="background: transparent !important">
                                    <div class="text-truncate fw-semibold my-2">${item.title}</div>
                                    <h5 class="text-truncate text-secondary mb-1" style="font-size: 14px">Nguyễn Thanh Tùng</h5>
                                    <h5 class="text-truncate text-secondary mb-1" style="font-size: 14px">${item.formattedViews} lượt xem</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </c:forEach>
    </div>
</div>
<script>
document.querySelectorAll('.video-container img').forEach(img => {
    img.addEventListener('mouseenter', function() {
        const videoLink = this.dataset.videoLink + "?autoplay=1&mute=1&controls=0&modestbranding=1&fs=1&iv_load_policy=3&rel=0";
        const iframe = document.createElement('iframe');
        iframe.src = videoLink;
        iframe.title = "YouTube video";
        iframe.allowFullscreen = true;
        iframe.style.width = '100%';
        iframe.style.height = '200px';
        this.replaceWith(iframe);

        iframe.addEventListener('mouseleave', function() {
            iframe.replaceWith(img);
        });
    });
});
</script>
