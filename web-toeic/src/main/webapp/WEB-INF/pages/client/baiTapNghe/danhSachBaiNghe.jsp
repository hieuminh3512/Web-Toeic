<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Danh sách bài tập nghe</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Favicons -->
	<link href="${pageContext.request.contextPath}/resources/file/images/favicon.png" rel="icon">
	<link href="${pageContext.request.contextPath}/resources/file/images/apple-touch-icon.png" rel="apple-touch-icon">

	<!-- Google Fonts -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Raleway:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

	<!-- Vendor CSS Files -->
	<link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/vendor/aos/aos.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

	<link href="${pageContext.request.contextPath}/resources/css/blog.css" rel="stylesheet">

	<!-- Vendor JS Files -->
	<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendor/aos/aos.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<style type="text/css">
.hidden {
	display: none;
}

.error-message {
	color: red;
}

.anchor {
	display: block;
	height: 115px; /*same height as header*/
	margin-top: -115px; /*same height as header*/
	visibility: hidden;
}
</style>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<main id="main">

		<!-- ======= Breadcrumbs ======= -->
		<div class="breadcrumbs">
			<div class="page-header d-flex align-items-center" style="background-image: url('');">
				<div class="container position-relative">
					<div class="row d-flex justify-content-center">
						<div class="col-lg-6 text-center">
							<h2>DANH SÁCH BÀI TẬP NGHE</h2>
						</div>
					</div>
				</div>
			</div>
			<nav>
				<div class="container">
					<ol>
						<li><a href="/webtoeic">Home</a></li>
						<li>Listening</li>
					</ol>
				</div>
			</nav>
		</div><!-- End Breadcrumbs -->

		<!-- ======= Blog Section ======= -->
		<section id="blog" class="blog">
			<div class="container" data-aos="fade-up">
				<div class="row g-5">

					<div class="col-lg-8">

						<article class="blog-details">
							<!-- /. PAGE TITLE-->
							<div class="row">

								<div class="span9" style="text-align: center">
									<div>
										<div class="span3">
											<select class="form-control" name="partSearch" id="partSearch">
												<option value="1">Part 1</option>
												<option value="2">Part 2</option>
												<option value="3">Part 3</option>
												<option value="4">Part 4</option>
											</select>
										</div>
										<div class="span3" style="margin-left: 0px">
											<select class="form-control" name="doKhoSearch" id="doKhoSearch">
												<option value="1">Mức dễ</option>
												<option value="2">Mức trung bình</option>
												<option value="3">Mức khó</option>
											</select>
										</div>
										<button type="button" class="btn btn-primary" id="btnDuyetBaiNghe">Tìm
											Bài nghe</button>
									</div>
									<hr>
									<!--Blog Post-->
									<ul class="danhSach" style="text-align: left; padding-left: 45px;">
									</ul>
									<p class="hidden" id="pTag">Không có dữ liệu</p>

									<div class="blog-pagination">
										<ul class="ul-pagination"></ul>
									</div>
								</div>
							</div>
						</article>

					</div>

					<div class="col-lg-4">
						<div class="sidebar">
							<div class="sidebar-item categories">
								<h3 class="sidebar-title">Categories</h3>
								<ul class="mt-3">
									<li><a href="/webtoeic/listening">LUYỆN BÀI NGHE</a></li>
									<li><a href="/webtoeic/reading">LUYỆN BÀI ĐỌC</a></li>
									<li><a href="/webtoeic/listExam">THI THỬ</a></li>
									<li><a href="/webtoeic/listGrammar">HỌC NGỮ PHÁP</a></li>
									<li><a href="/webtoeic/listVocab">HỌC TỪ VỰNG</a></li>
								</ul>
							</div><!-- End sidebar categories-->

						</div><!-- End Blog Sidebar -->

					</div>
				</div>

			</div>
		</section><!-- End Blog Section -->

	</main>

	<jsp:include page="../template/footer.jsp"></jsp:include>
	<script
		src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
	<script src="<c:url value='/js/client/baiNghe/danhSachBaiNghe.js'/>"></script>

</body>
</html>