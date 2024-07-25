<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<main class="col-12 col-lg-11 text-white">
    <div class="container-fluid">
        <h1 class="title border-bottom pb-2">Watch history</h1>
        <c:forEach var="video" items="${watched_video}">
        <a href="details/${video.id}" class="text-decoration-none">
            <div class="row box-video pb-3 pt-3 border-bottom">
                <div class="col-sm-12 col-md-3 col-lg-3 video-left">
                    <div class="embed-responsive embed-responsive-16by9">
                        <img class="w-100 rounded-2 object-fit-cover" src="${video.poster}" alt="Video poster" title="Video poster" style="height: 200px;">
                    </div>
                </div>
                <div class="col-sm-12 col-md-9 col-lg-9 content-video">
                    <h5 class="title-video">${video.title}</h5>
                    <p class="channel">
                        ${video.views} views
                    </p>
                    <p class="mota">${video.description}</p>
                </div>
            </div>
            </a>
        </c:forEach>
    </div>
</main>
