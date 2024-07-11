<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <img style="width: 50px; height: 40px"
              src="data:image/png;base64,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"
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
         <a href = /fpoly/views/dangnhap>
          <img style="width: 30px; height: 30px" class="rounded-circle border"
            src="data:image/png;base64,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"
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