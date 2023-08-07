
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

	<!-- Vendor CSS Files -->
	<link href="<c:url value='/resources/vendor/bootstrap/css/bootstrap.min.css'  />" rel="stylesheet">
	<link href="<c:url value='/resources/vendor/bootstrap-icons/bootstrap-icons.css'  />" rel="stylesheet">
	<link href="<c:url value='/resources/vendor/aos/aos.css'  />" rel="stylesheet">
	<link href="<c:url value='/resources/vendor/glightbox/css/glightbox.min.css'  />" rel="stylesheet">
	<link href="<c:url value='/resources/vendor/swiper/swiper-bundle.min.css'  />" rel="stylesheet">



	<!-- Template Main CSS File -->
<link rel="stylesheet" href="<c:url value='/resources/css/header.css'  />" />
	<!-- Scripts -->
<script src="http://code.jquery.com/jquery.js"></script>
<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>






<style>
	.radio-inline {
		display: inline-flex;
		padding-left: 35px;
	}

	input[type=radio] {
		margin-right: 5px;
	}

	h3 {
		margin: 0;
	}



</style>
</head>

<body>
<!-- ======= Header ======= -->
<section id="topbar" class="topbar d-flex align-items-center">
	<div class="container d-flex justify-content-center justify-content-md-between">
		<div class="contact-info d-flex align-items-center">
			<i class="bi bi-envelope d-flex align-items-center"><a href="mailto:contact@example.com">contact@example.com</a></i>
			<i class="bi bi-phone d-flex align-items-center ms-4"><span>+84 385 904 998</span></i>
		</div>
		<div class="social-links d-none d-md-flex align-items-center">
			<a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
			<a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
			<a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
			<a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
		</div>
	</div>
</section><!-- End Top Bar -->

<header id="header" class="header d-flex align-items-center">

				<div class="container-fluid container-xl d-flex align-items-center justify-content-between">
					<a href="/webtoeic/" class="logo d-flex align-items-center">

						<h1>Kusanali<span>.</span></h1>
					</a>
					<!-- MAIN NAVIGATION -->
					<nav id="navbar" class="navbar">
								<ul>
									<c:if test="${pageContext.request.userPrincipal.name == null}">
										<li ><a href="/webtoeic">Trang chủ</a></li>
										<li class="dropdown"><a href="#"><span>Luyện tập</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
											<ul >
												<li><a href="/webtoeic/listening/">Luyện bài nghe</a></li>
												<li><a href="/webtoeic/reading/">Luyện bài đọc</a></li>
											</ul></li>
										<li><a href="/webtoeic/listGrammar">Ngữ pháp</a></li>
										<li><a href="<%=request.getContextPath()%>/listVocab">Từ
											vựng</a></li>
										<li><a href="<%=request.getContextPath()%>/signin">Đăng nhập</a></li>
										<li><a href="<%=request.getContextPath()%>/register">Đăng ký</a></li>

									</c:if>


									<c:if test="${pageContext.request.userPrincipal.name != null}">
										<li ><a href="/webtoeic">Trang chủ</a></li>
										<li class="dropdown"><a href="#"><span>Luyện tập</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
											<ul >
												<li><a href="/webtoeic/listening/">Luyện bài nghe</a></li>
												<li><a href="/webtoeic/reading/">Luyện bài đọc</a></li>

												<li><a href="<%=request.getContextPath()%>/listExam">Thi
														thử</a></li>
											</ul></li>
										<li><a href="/webtoeic/listGrammar">Ngữ pháp</a></li>
										<li><a href="<%=request.getContextPath()%>/listVocab">Từ vựng</a></li>


										<li class="dropdown"><a href="#"><span><img src="<c:url value='/resources/file/images/profile.png' />" class="anh-dai-dien" alt=""></span><span>${nguoiDung.hoTen}</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>

											<ul >
												<c:if test="${!nguoiDung.loginOauth2 }">
													<li><a href="<%=request.getContextPath()%>/profile">Tài
															khoản</a></li>
												</c:if>
												<li><a href="<%=request.getContextPath()%>/signout">Đăng xuất</a></li>
											</ul></li>
									</c:if>
								</ul>
				<!-- MAIN NAVIGATION -->
	</nav><!-- .navbar -->

	<i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
	<i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
	</div>
</header><!-- End Header -->