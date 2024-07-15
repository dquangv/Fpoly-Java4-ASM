<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
  <body style="background-color: #0f0f0f" >
    <div class="mx-auto px-4">
      <%@include file = "views/header.jsp" %>
   
      <div class="row">
         <%@ include file="views/home_page.jsp" %>
    <jsp:include page="${view}"/>
      </div>
    </div>
 
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
