<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Bootstrap demo</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
    />
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.8.3/angular.min.js"
      integrity="sha512-KZmyTq3PLx9EZl0RHShHQuXtrvdJ+m35tuOiwlcZfs/rE7NZv29ygNA8SFCkMXTnYZQK2OX0Gm2qKGfvWEtRXA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    ></script>
    <style>
      * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
      }

      .carousel-control-prev {
        position: absolute;
        width: 40px;
        border-radius: 100%;
        background: #272727 !important;
      }
      .carousel-control-prev-icon {
        color: white !important;
      }
      .carousel-control-next-icon {
        color: white !important;
      }
      .carousel-control-next {
        position: absolute;
        width: 40px;
        border-radius: 100%;
        background: #272727 !important;
      }
      a {
        color: #fff !important;
      }
      button {
        background: #272727 !important;
        color: #fff !important;
        border: none !important;
        outline: none !important;
      }
      .aside-button {
        background: transparent;
      }
      .aside-button:hover {
        background: #272727;
      }
      .form-control::placeholder {
        color: #fff;
      }
      ::-ms-input-placeholder {
        color: #fff;
      }

      @media screen and (max-width: 500px) {
        .search-group {
          width: 100% !important;
        }
      }
    </style>
  </head>
  <body style="background-color: #0f0f0f" ng-app="myApp">
    <div class="mx-auto px-4">
      <ng-include src="'./header.html'"></ng-include>

      <div class="row">
        <div class="col-12 col-lg-1 d-flex flex-lg-column gap-2 mx-2 mx-lg-0">
          <button
            style="height: 80px; font-size: 13px"
            class="btn w-100 aside-button"
          >
            <i class="bi bi-house"></i> <br />
            Trang chủ
          </button>
          <button
            style="height: 80px; font-size: 13px"
            class="btn w-100 aside-button"
          >
            <i class="bi bi-youtube"></i> <br />
            Ngắn
          </button>
          <button
            style="height: 80px; font-size: 13px"
            class="btn w-100 aside-button"
          >
            <i class="bi bi-youtube"></i> <br />

            Đăng ký
          </button>
          <button
            style="height: 80px; font-size: 13px"
            class="btn w-100 aside-button"
          >
            <i class="bi bi-camera-video"></i> <br />
            Kênh của tôi
          </button>
        </div>
        <div class="col-12 col-lg-11 px-4 ">
          <div id="carouselExample" class="carousel slide w-100">
            <div class="carousel-inner">
              <div class="carousel-item active ml-4">
                <div
                  class="overflow-auto d-flex gap-2 align-items-center mx-lg-4 px-lg-4"
                >
                  <button class="btn">Tất cả</button>
                  <button class="btn">Tất cả</button>
                  <button class="btn">Tất cả</button>
                  <button class="btn">Tất cả</button>
                  <button class="btn">Tất cả</button>
                  <button class="btn">Tất cả</button>
                  <button class="btn">Tất cả</button>
                  <button class="btn">Tất cả</button>
                  <button class="btn">Tất cả</button>
                  <button class="btn">Tất cả</button>
                  <button class="btn">Tất cả</button>
                  <button class="btn">Tất cả</button>
                  <button class="btn">Tất cả</button>
                  <button class="btn">Tất cả</button>
                  <button class="btn">Tất cả</button>
                </div>
              </div>
              <div class="carousel-item">
                <div
                  class="overflow-auto d-flex gap-2 align-items-center mx-lg-4 px-lg-4"
                >
                  <button class="btn">Tất cả</button>
                  <button class="btn">Tất cả</button>
                  <button class="btn">Tất cả</button>
                  <button class="btn">Tất cả</button>
                  <button class="btn">Tất cả</button>
                </div>
              </div>
              <div class="carousel-item">
                <div
                  class="overflow-auto d-flex gap-2 align-items-center mx-lg-4 px-lg-4"
                >
                  <button class="btn">Tất cả</button>
                  <button class="btn">Tất cả</button>
                  <button class="btn">Tất cả</button>
                  <button class="btn">Tất cả</button>
                  <button class="btn">Tất cả</button>
                </div>
              </div>
            </div>
            <button
              class="carousel-control-prev d-none d-lg-block"
              type="button"
              data-bs-target="#carouselExample"
              data-bs-slide="prev"
            >
              <span
                class="carousel-control-prev-icon"
                aria-hidden="true"
              ></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button
              class="carousel-control-next d-none d-lg-block"
              type="button"
              data-bs-target="#carouselExample"
              data-bs-slide="next"
            >
              <span
                class="carousel-control-next-icon text-white"
                style="color: white !important"
                aria-hidden="true"
              ></span>

              <span class="visually-hidden">Next</span>
            </button>
          </div>
          <div class="row my-4">
            <div class="col-lg-3 col-sm-6 col-12 mb-2">
              <div
                style="
                  border: 0 !important;
                  background-color: transparent !important;
                  color: #fff;
                "
                class="card p-0"
                
              >
                <div class="w-100" style="border-radius: 4px; overflow: hidden">
                  <iframe
                    class="w-100"
                    src="https://www.youtube.com/embed/pkndO-atMls?si=TMR-KY22rgAZAYjr"
                    title="YouTube video player"
                    frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                    referrerpolicy="strict-origin-when-cross-origin"
                    allowfullscreen
                  ></iframe>
                </div>
                <div
                  class="card-body p-0"
                  style="background: transparent !important"
                >
                  Tình Ka Ngọt Ngào (RIN Music Remix) - Lập Nguyên x Yến Nồi Cơm
                  Điện | Tình Yêu Khi Mua Bằng Tiền
                  <br />
                  <span style="color: whitesmoke; font-size: 10px"
                    >Lập Nguyễn</span
                  >
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-12 mb-2">
              <div
                style="
                  border: 0 !important;
                  background-color: transparent !important;
                  color: #fff;
                "
                class="card p-0"
                
              >
                <div class="w-100" style="border-radius: 4px; overflow: hidden">
                  <iframe
                    class="w-100"
                    src="https://www.youtube.com/embed/pkndO-atMls?si=TMR-KY22rgAZAYjr"
                    title="YouTube video player"
                    frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                    referrerpolicy="strict-origin-when-cross-origin"
                    allowfullscreen
                  ></iframe>
                </div>
                <div
                  class="card-body p-0"
                  style="background: transparent !important"
                >
                  Tình Ka Ngọt Ngào (RIN Music Remix) - Lập Nguyên x Yến Nồi Cơm
                  Điện | Tình Yêu Khi Mua Bằng Tiền
                  <br />
                  <span style="color: whitesmoke; font-size: 10px"
                    >Lập Nguyễn</span
                  >
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-12 mb-2">
              <div
                style="
                  border: 0 !important;
                  background-color: transparent !important;
                  color: #fff;
                "
                class="card p-0"
                
              >
                <div class="w-100" style="border-radius: 4px; overflow: hidden">
                  <iframe
                    class="w-100"
                    src="https://www.youtube.com/embed/pkndO-atMls?si=TMR-KY22rgAZAYjr"
                    title="YouTube video player"
                    frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                    referrerpolicy="strict-origin-when-cross-origin"
                    allowfullscreen
                  ></iframe>
                </div>
                <div
                  class="card-body p-0"
                  style="background: transparent !important"
                >
                  Tình Ka Ngọt Ngào (RIN Music Remix) - Lập Nguyên x Yến Nồi Cơm
                  Điện | Tình Yêu Khi Mua Bằng Tiền
                  <br />
                  <span style="color: whitesmoke; font-size: 10px"
                    >Lập Nguyễn</span
                  >
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-12 mb-2">
              <div
                style="
                  border: 0 !important;
                  background-color: transparent !important;
                  color: #fff;
                "
                class="card p-0"
                
              >
                <div class="w-100" style="border-radius: 4px; overflow: hidden">
                  <iframe
                    class="w-100"
                    src="https://www.youtube.com/embed/pkndO-atMls?si=TMR-KY22rgAZAYjr"
                    title="YouTube video player"
                    frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                    referrerpolicy="strict-origin-when-cross-origin"
                    allowfullscreen
                  ></iframe>
                </div>
                <div
                  class="card-body p-0"
                  style="background: transparent !important"
                >
                  Tình Ka Ngọt Ngào (RIN Music Remix) - Lập Nguyên x Yến Nồi Cơm
                  Điện | Tình Yêu Khi Mua Bằng Tiền
                  <br />
                  <span style="color: whitesmoke; font-size: 10px"
                    >Lập Nguyễn</span
                  >
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-12 mb-2">
              <div
                style="
                  border: 0 !important;
                  background-color: transparent !important;
                  color: #fff;
                "
                class="card p-0"
                
              >
                <div class="w-100" style="border-radius: 4px; overflow: hidden">
                  <iframe
                    class="w-100"
                    src="https://www.youtube.com/embed/pkndO-atMls?si=TMR-KY22rgAZAYjr"
                    title="YouTube video player"
                    frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                    referrerpolicy="strict-origin-when-cross-origin"
                    allowfullscreen
                  ></iframe>
                </div>
                <div
                  class="card-body p-0"
                  style="background: transparent !important"
                >
                  Tình Ka Ngọt Ngào (RIN Music Remix) - Lập Nguyên x Yến Nồi Cơm
                  Điện | Tình Yêu Khi Mua Bằng Tiền
                  <br />
                  <span style="color: whitesmoke; font-size: 10px"
                    >Lập Nguyễn</span
                  >
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-12 mb-2">
              <div
                style="
                  border: 0 !important;
                  background-color: transparent !important;
                  color: #fff;
                "
                class="card p-0"
                
              >
                <div class="w-100" style="border-radius: 4px; overflow: hidden">
                  <iframe
                    class="w-100"
                    src="https://www.youtube.com/embed/pkndO-atMls?si=TMR-KY22rgAZAYjr"
                    title="YouTube video player"
                    frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                    referrerpolicy="strict-origin-when-cross-origin"
                    allowfullscreen
                  ></iframe>
                </div>
                <div
                  class="card-body p-0"
                  style="background: transparent !important"
                >
                  Tình Ka Ngọt Ngào (RIN Music Remix) - Lập Nguyên x Yến Nồi Cơm
                  Điện | Tình Yêu Khi Mua Bằng Tiền
                  <br />
                  <span style="color: whitesmoke; font-size: 10px"
                    >Lập Nguyễn</span
                  >
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-12 mb-2">
              <div
                style="
                  border: 0 !important;
                  background-color: transparent !important;
                  color: #fff;
                "
                class="card p-0"
                
              >
                <div class="w-100" style="border-radius: 4px; overflow: hidden">
                  <iframe
                    class="w-100"
                    src="https://www.youtube.com/embed/pkndO-atMls?si=TMR-KY22rgAZAYjr"
                    title="YouTube video player"
                    frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                    referrerpolicy="strict-origin-when-cross-origin"
                    allowfullscreen
                  ></iframe>
                </div>
                <div
                  class="card-body p-0"
                  style="background: transparent !important"
                >
                  Tình Ka Ngọt Ngào (RIN Music Remix) - Lập Nguyên x Yến Nồi Cơm
                  Điện | Tình Yêu Khi Mua Bằng Tiền
                  <br />
                  <span style="color: whitesmoke; font-size: 10px"
                    >Lập Nguyễn</span
                  >
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-12 mb-2">
              <div
                style="
                  border: 0 !important;
                  background-color: transparent !important;
                  color: #fff;
                "
                class="card p-0"
                
              >
                <div class="w-100" style="border-radius: 4px; overflow: hidden">
                  <iframe
                    class="w-100"
                    src="https://www.youtube.com/embed/pkndO-atMls?si=TMR-KY22rgAZAYjr"
                    title="YouTube video player"
                    frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                    referrerpolicy="strict-origin-when-cross-origin"
                    allowfullscreen
                  ></iframe>
                </div>
                <div
                  class="card-body p-0"
                  style="background: transparent !important"
                >
                  Tình Ka Ngọt Ngào (RIN Music Remix) - Lập Nguyên x Yến Nồi Cơm
                  Điện | Tình Yêu Khi Mua Bằng Tiền
                  <br />
                  <span style="color: whitesmoke; font-size: 10px"
                    >Lập Nguyễn</span
                  >
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script>
      angular.module("myApp", []);
    </script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
