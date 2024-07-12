<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="col-12 col-lg-1 d-flex flex-lg-column gap-2 mx-2 mx-lg-0">
         <c:url var = "views" value = "/views"/>
         <a href = "${views}/TrangChu">
          <button
            style="height: 80px; font-size: 13px"
            class="btn w-100 aside-button"
          >
            <i class="bi bi-house"></i> <br />
            Trang chủ
          </button>
         </a>
         <a href = "${views}/thongtincanhan">
          <button
            style="height: 80px; font-size: 13px"
            class="btn w-100 aside-button"
          >
            <i class="bi bi-youtube"></i> <br />
            Thông tin <br />
            cá nhân
          </button>
         </a>
          <a href="${views}/watched">
          <button
            style="height: 80px; font-size: 13px"
            class="btn w-100 aside-button"
          >
            <i class="bi bi-youtube"></i> <br />

            Video <br />đã xem
          </button>
          </a>
         <a href = "${views}/favorite_video">
          <button
            style="height: 80px; font-size: 13px"
            class="btn w-100 aside-button"
          >
            <i class="bi bi-youtube"></i> <br />

            Video <br />đã thích
          </button>
         </a>
        <a href="${views}/create_update">
          <button
            style="height: 80px; font-size: 13px"
            class="btn w-100 aside-button"
          >
            <i class="bi bi-youtube"></i> <br />

            Quản lý video
          </button>
        </a>
         <a href="${views}/thongke">
          <button
            style="height: 80px; font-size: 13px"
            class="btn w-100 aside-button"
          >
            <i class="bi bi-youtube"></i> <br />

            Thống kê
          </button>
          </a>
        </div>