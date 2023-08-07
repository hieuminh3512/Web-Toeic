<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách bài hướng dẫn học từ vựng</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/paging.css">

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

<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/html5shiv.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-1.js"></script>

</head>

<style>
.imageVocab {
	float: left;
	height: 150px;
	width: 250px;
	margin-bottom: 25px;
	margin-right: 20px;
}
</style>

<script type="text/javascript">
	function SearchVocab() {

		var baseUrl = document.getElementById('baseUrl').value;
		var xhttp;
		var search = document.getElementById('searchVocab').value;
		var url;

		//remove special letters
		var convertSearch = search.replace(/[^a-zA-Z0-9 ]/g, "");

		if (!search == ' ') {
			url = baseUrl + "/searchVocab/" + convertSearch;
		} else
			url = baseUrl + "/searchVocab/all";

		if (window.XMLHttpRequest) {
			xhttp = new XMLHttpRequest();
		} else {
			xhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}

		xhttp.onreadystatechange = function() {
			if (xhttp.readyState == 4) {
				var data = xhttp.responseText;
				document.getElementById("resultsearch").innerHTML = data;
			}
		}

		xhttp.open("POST", url, true);
		xhttp.send();

	}
</script>
<body>

	<!--Header
==========================-->

	<jsp:include page="template/header.jsp"></jsp:include>
	<input id="baseUrl" value="${pageContext.request.contextPath}"
		style="display: none;" />
	<!--/End Header-->

	<main id="main">

		<!-- ======= Breadcrumbs ======= -->
		<div class="breadcrumbs">
			<div class="page-header d-flex align-items-center" style="background-image: url('');">
				<div class="container position-relative">
					<div class="row d-flex justify-content-center">
						<div class="col-lg-6 text-center">
							<h2>DANH SÁCH BÀI VOCAB</h2>
						</div>
					</div>
				</div>
			</div>
			<nav>
				<div class="container">
					<ol>
						<li><a href="/webtoeic">Home</a></li>
						<li>Vocabulary</li>
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
							<div id="resultsearch">
								<div class="row">

									<div class="span9">
										<c:if test="${fn:length(listData) == 0 }">
											<h3>Không tìm thấy dữ liệu</h3>
										</c:if>

										<c:forEach items="${listData}" var="list" varStatus="loop">
											<div class="span9">
												<div class="span3">
													<img class="imageVocab"
														 src="${pageContext.request.contextPath}/resources/file/images/vocab/${list.anhbaituvung}" />

												</div>
												<div class="span1"></div>

												<div class="span5">
													<div class="title">
														<h4>${list.tenbaituvung}</h4>
													</div>
													<div>
														<a
																href=" <c:url value="/detailVocab?idVocab=${list.baitaptuvungid}"/>  "
																class="btn btn-primary">Chi tiết</a>
													</div>


												</div>
												<br>
												<br>
												<br>
												<br>
											</div>

										</c:forEach>
										<br>
									</div>
								</div>
							</div>
						</article>

					</div>

					<div class="col-lg-4">
						<div class="sidebar">
							<div class="sidebar-item search-form">
								<h3 class="sidebar-title">Search</h3>
								<form action="" class="mt-3">
									<input type="text" class="form-control" id="searchVocab"
										   placeholder="Tìm kiếm bài vocabulary..."
										   name="search"
										   onkeyup="SearchVocab()">
									<button type="submit"><i class="bi bi-search"></i></button>
								</form>
							</div><!-- End sidebar search formn-->

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

				<!--Pagination-->
				<div class="blog-pagination">
					<c:if test="${listData.size() != 0}">


						<ul class="justify-content-center">
							<c:if test="${currentPage != 1}">
								<li><a href="/webtoeic/listVocab?page=${currentPage-1}">Back</a></li>
							</c:if>
							<c:if test="${currentPage == 1}">
								<li><a class="current">1</a></li>
							</c:if>

							<c:if test="${currentPage != 1}">
								<li><a href="/webtoeic/listVocab?page=1">1</a></li>
							</c:if>

							<c:forEach var="pag" items="${pageList}" varStatus="loop">
								<c:if test="${currentPage == pag}">
									<li><a class="current">${pag}</a></li>
								</c:if>
								<c:if test="${currentPage != pag}">
									<li><a href="/webtoeic/listVocab?page=${pag}">${pag}</a></li>
								</c:if>
							</c:forEach>

							<c:if test="${currentPage != totalPage}">
								<li><a href="/webtoeic/listVocab?page=${currentPage+1} "
									   class="pageNext">Next</a></li>
							</c:if>
						</ul>

					</c:if>
				</div>
			</div>
		</section><!-- End Blog Section -->

	</main>
	<!--Footer
==========================-->
	<br>
	<br>
	<br>
	<br>
	<br>


	<jsp:include page="include/footerHome.jsp"></jsp:include>


	<!--/.Footer-->



</body>
</html>