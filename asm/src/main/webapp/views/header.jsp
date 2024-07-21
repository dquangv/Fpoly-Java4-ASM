<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String userImage = (String) session.getAttribute("userImg");
    if (userImage == null || userImage.isEmpty()) {
        userImage = "../img/default_user_avatar.jpg";
    } else {
        String urlRegex = "^(http|https)://.*$";
        if (!userImage.matches(urlRegex)) {
            userImage = "../img/" + userImage;
        }
    }
%>

<nav style="background: transparent !important"
  class="bg-transparent navbar navbar-dark navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid align-items-center d-flex">
    <button class="navbar-toggler " type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/fpoly/views/TrangChu">
            <img style="width: 50px; height: auto" src="../img/vecteezy_youtube-logo-png-youtube-icon-transparent_18930572.png"
              alt="" />
            Tube</a>
        </li>
      </ul>
      <div class="search-group w-lg-50 w-50 d-flex gap-2 my-2">
        <div class="input-group mb-3 rounded-pill mx-auto overflow-hidden border h-100 outline-none" style="
          border: 1px solid #272727 !important;
          margin: auto 0 !important;
          outline: none;
          border: none;
          outline: none;
        ">

          <input type="text" class="form-control" placeholder="Tìm kiếm" aria-label="Username"
            aria-describedby="basic-addon1" style="
            background-color: transparent;
            color: #fff;
            outline: none;
            border: none !important;
          " />
          <span class="input-group-text" style="
            background: #272727;
            color: white;
            outline: none;
            border: none !important;
          " id="basic-addon1"><i class="bi-search"></i></span>
        </div>
        <button class="btn btn-primary rounded-circle overflow-hidden">
          <i class="bi bi-mic"></i>
        </button>
      </div>

      <div class="d-flex gap-2 ms-auto align-items-center">
        <button class="btn rounded-circle" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
          <i class="bi bi-film"></i>

        </button>
        <button class="btn rounded-circle">
          <i class="bi bi-bell"></i>
        </button>
        <div>
         <a href="thongtincanhan">
          <img style="width: 30px; height: 30px"
						class="rounded-circle border"
						src="<%= userImage %>"
						alt="" />
					</a>
        </div>
      </div>
    </div>
  </div>
</nav>

<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
  aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content" style="background-color: #272727 !important; color: white !important">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Tạo video</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
          style="display: flex !important; justify-content: center !important; align-items: center; background-color: gray !important; "><i
            class="bi bi-x-lg"></i></button>
      </div>
      <form>
        <div class="modal-body">

          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Tiêu đề</label>
            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
          </div>
          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Mô tả</label>
            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
          </div>
          <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Link video</label>
            <input type="password" class="form-control" id="exampleInputPassword1">
          </div>
          <div class="mb-3">
            <label for="imageFile" class="form-label">Hình ảnh video</label>
            <input type="file" class="form-control" id="imageFile" aria-describedby="imageFileHelp">
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"
            style="background-color: gray !important">Đóng</button>
          <button type="submit" class="btn btn-primary" style="background-color: #0d6efd !important;
    ">Tạo</button>
        </div>
      </form>

    </div>
  </div>
</div>
