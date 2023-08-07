<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Làm bài nghe part 1</title>
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
	<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'  />" />
	<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap-responsive.min.css'  />" />
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap-responsive.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/modal.css" rel="stylesheet">
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
							<h2>LUYỆN NGHE PART 1</h2>
						</div>
					</div>
				</div>
			</div>
			<nav>
				<div class="container">
					<ol>
						<li><a href="/webtoeic">Home</a></li>
						<li>Listening Part 1</li>
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
									<!--Blog Post-->
									<div class="blog-post">
										<h3>${baiTapNghe.tenBaiNghe}</h3>
										<input type="hidden" value="${baiTapNghe.id }" id="baiTapNgheId">
										<div class="postmetadata">
											<a name="middle">
												<ul>
													<li><c:if test="${baiTapNghe.doKho == 1}">
														Độ khó - Dễ
													</c:if> <c:if test="${baiTapNghe.doKho == 2}">
														Độ khó - Trung bình
													</c:if> <c:if test="${baiTapNghe.doKho == 3}">
														Độ khó - Khó
													</c:if></li>
												</ul>
											</a>
										</div>
										<img
												src="<c:url value="/file/images/baiNgheId=${baiTapNghe.id }.png"  />"
												style="width: 300px; height: 150px;">
										<p>In each question, you will look at a photograph and then listen to 4 sentences. Choose the sentence that best describes the photograph. There are questions in this test.</p>
										<audio controls
											   src="<c:url value="/file/audio/baiNgheId=${baiTapNghe.id }.mp3"  />"></audio>
									</div>

								</div>
								<div class="span9" style="text-align: left">
									<div id="cauHoi"></div>

									<div class="blog-pagination" style="text-align: center">
										<ul class="ul-pagination"></ul>
									</div>

									<hr align="center">

									<div class="span9" style="text-align: center">
										<!-- start Quiz button -->
										<div class="start_btn"><button class="btn btn-success" id="btnNopBai">Nộp bài</button></div>

										<!-- Info Box -->
										<div class="info_box">
											<div class="info-title"><span>Thông báo</span></div>
											<div class="info-list">
												<div class="info">Bạn chắc chắn nộp bài ?</div>

											</div>
											<div class="buttons">
												<button class="quit">Không</button>
												<button class="continue">Chắc chắn</button>
											</div>
										</div>



										<!-- Result Box -->
										<div class="result_box">
											<div class="icon">
												<i class="fas fa-crown"></i>
											</div>
											<div class="complete_text">You've completed the Quiz!</div>
											<h4 id="ketQuaText"></h4>
											<div class="buttons">
												<button class="restart" id="btnLamLai">Làm lại</button>
												<button class="quit" id="btnXemGiaiThich">Xem giải thích</button>
											</div>
										</div>

										<a class="btn btn-success hidden " id="btnBaiThiKhac"
										   href="/webtoeic/listening">Làm bài thi khác</a>
									</div>

									<!--/.Pagination-->
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



	<jsp:include page="../include/footerHome.jsp"></jsp:include>
	<script
		src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
	<script
		src="<c:url value='/js/client/baiNghe/lamBaiNghePart1.js'/>"></script>
	<script src="<c:url value='/resources/js/client/modal.js'/>"></script>
</body>
</html>