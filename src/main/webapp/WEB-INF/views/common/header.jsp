<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
<title>${param.title}</title>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- bootstrap js: jquery load 이후에 작성할것.-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<!-- 사용자작성 css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css" />
<%-- <c:if test="${not empty msg}">
<script>							
	alert("${msg}");
</script> 
</c:if>--%>
</head>
<body>
	<header class="header responsive-wrapper">
  <div class="header-left">
    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="233.445" height="52.805"
      viewBox="0 0 233.445 52.805">
      <defs>
        <clipPath id="clip-fox-news-logo">
          <rect width="233.445" height="52.805" />
        </clipPath>
      </defs>
      <g id="fox-news-logo" clip-path="url(#clip-fox-news-logo)">
        <g id="Group_1" data-name="Group 1" transform="translate(-2179.585 601.093)">
          <path id="Path_5" data-name="Path 5"
            d="M4.185-29.205H22.59v4.59H9.5v7.7h11.97v4.545H9.5V0H4.185Zm27.675,6.75a12.117,12.117,0,0,1,4.14.7,8.656,8.656,0,0,1,3.33,2.138q3.105,3.15,3.105,8.73,0,5.49-3.105,8.64A9.921,9.921,0,0,1,31.86.63,10.222,10.222,0,0,1,24.3-2.25Q21.2-5.355,21.2-10.89q0-5.625,3.105-8.73A10.217,10.217,0,0,1,31.86-22.455Zm5.265,11.52a8.372,8.372,0,0,0-1.35-5.2,4.5,4.5,0,0,0-3.757-1.733,5.013,5.013,0,0,0-3.937,1.733,7.654,7.654,0,0,0-1.53,5.2,8.27,8.27,0,0,0,1.372,5.2A4.534,4.534,0,0,0,31.68-4.005,4.989,4.989,0,0,0,35.6-5.738,7.654,7.654,0,0,0,37.125-10.935ZM64.62,0H58.14l-5.4-7.02L47.7,0H41.175l8.5-10.89-8.5-11.025H47.7l5.355,7.02,5.085-7.02h6.48L56.16-10.89ZM78.48-29.205l12.87,20.7v-20.7h5.31V0h-5.4L77.985-21.42V0h-5.31V-29.205Zm37.71,9.945a9.966,9.966,0,0,1,1.688,3.33,12.23,12.23,0,0,1,.563,3.465,20.182,20.182,0,0,1-.18,2.835H104.13a7.606,7.606,0,0,0,1.305,4.32,4.268,4.268,0,0,0,3.69,1.665q3.285,0,3.915-2.88H118.4A7.849,7.849,0,0,1,115.38-1.35,9.93,9.93,0,0,1,109.125.63a9.489,9.489,0,0,1-7.245-3.15,11.96,11.96,0,0,1-3.015-8.415,11.822,11.822,0,0,1,3.015-8.46,9.529,9.529,0,0,1,7.245-3.06A8.486,8.486,0,0,1,116.19-19.26Zm-7.02,1.035a4.385,4.385,0,0,0-3.51,1.463,6.578,6.578,0,0,0-1.485,3.758h9.315q0-3.555-2.25-4.77A4.4,4.4,0,0,0,109.17-18.225Zm13.455-3.645,4.41,15.615,4.185-14.4h4.815L140.22-6.21l4.455-15.66h5.31L142.785,0h-5.22l-4.05-13.1L129.555,0H124.29l-7.245-21.87Zm31.05,15.21q.09,3.105,4.545,3.1a4.934,4.934,0,0,0,2.813-.743,2.1,2.1,0,0,0,1.1-1.733,1.847,1.847,0,0,0-.675-1.53,6.639,6.639,0,0,0-2.115-.99l-4.77-1.71q-5.31-1.845-5.31-6.03a5.172,5.172,0,0,1,2.5-4.477,11.8,11.8,0,0,1,6.7-1.687,10.044,10.044,0,0,1,6.48,1.845,6,6,0,0,1,2.362,4.635h-4.995a2.191,2.191,0,0,0-1.035-1.71,4.856,4.856,0,0,0-2.7-.63,4.6,4.6,0,0,0-2.723.7,1.974,1.974,0,0,0-.967,1.6q0,1.575,2.655,2.34l5.175,1.935a10.264,10.264,0,0,1,3.938,2.182A4.576,4.576,0,0,1,168.03-6.12a5.8,5.8,0,0,1-2.565,4.68,11.1,11.1,0,0,1-7.02,2.07,11.753,11.753,0,0,1-7.02-1.913,6.353,6.353,0,0,1-2.7-5.377Z"
            transform="translate(2245 -561)" />
          <path id="Path_1" data-name="Path 1"
            d="M2207.653-46.775c-.029,5.98,9.656-7.959,11.9-8.762a45.226,45.226,0,0,1,9.4-2.275,19.066,19.066,0,0,1,2.663-.116c4.366.13-3.9-18.154-3.9-18.154l-8.853.386s-6.824,3.109-7.306,9.208,1.265,4.691-.822,10.951c-1.45,4.351-2.432,3.276-3.084,5.217A25.988,25.988,0,0,0,2207.653-46.775Z"
            transform="translate(-0.475 -503)" />
          <path id="Path_2" data-name="Path 2"
            d="M2232.822-46.775c.029,5.98-9.656-7.959-11.9-8.762a45.226,45.226,0,0,0-9.4-2.275,19.066,19.066,0,0,0-2.663-.116c-4.366.13,3.9-18.154,3.9-18.154l8.853.386s6.824,3.109,7.306,9.208-1.265,4.691.822,10.951c1.45,4.351,2.432,3.276,3.084,5.217A25.988,25.988,0,0,1,2232.822-46.775Z"
            transform="translate(-28 -503)" />
          <circle id="Ellipse_1" data-name="Ellipse 1" cx="1" cy="1" r="1" transform="translate(2205 -559)" />
          <path id="Path_3" data-name="Path 3"
            d="M2216.209-91.186c.2,1.456,9.045,4.389,11.518,8.66s3.761-15.174,2.68-16.427S2216.012-92.642,2216.209-91.186Z"
            transform="translate(0 -502)" />
          <path id="Path_4" data-name="Path 4"
            d="M2230.791-91.186c-.2,1.456-9.045,4.389-11.518,8.66s-3.761-15.174-2.68-16.427S2230.988-92.642,2230.791-91.186Z"
            transform="translate(-34 -502)" />
        </g>
      </g>
    </svg>
  </div>
  <div class="header-right">
    <nav class="header-nav">
      <a href="${pageContext.request.contextPath }/member/member.do" class="header-link">Login</a>
      <a href="#" class="header-link header-link--button">Sign Up</a>
    </nav>
    <button class="header-menu-button">Menu</button>
  </div>
</header>