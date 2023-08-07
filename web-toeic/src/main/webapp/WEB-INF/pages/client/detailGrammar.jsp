<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hướng dẫn ngữ pháp chi tiết</title>

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

<script src="${pageContext.request.contextPath}/resources/js/jquery-1.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/html5shiv.js"></script>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />


<style type="text/css">
.showtext {
	text-align: auto;
	padding-top: 0.5em;
	padding-right: 1em;
	padding-bottom: 0.5em;
	padding-left: 1em;
}
</style>

<script type="text/javascript">
	$(document).ready(function() {
		//comment grammar			
		$('#btnComment').click(function() {

			var test = $("#contentComment").val();
			var baitaptuvungId = $("#id_bai_grammar").val();
			var baseUrl = $('#baseUrl').val();

			$.ajax({
				dataType : "json",
				type : 'POST',
				url : baseUrl + "/grammar/ajaxCmtGram/" + test + "/" + baitaptuvungId,

				success : function(result) {

					var obj = JSON.parse(result);

					var name = "<h4 style='color:red'>" + obj.nguoidung + "</h4> ";
					var content = "<textarea disabled class='input-xxlarge showtext' rows='3' name='cmtgrammarcontent' >" + obj.cmtgrammarcontent + "</textarea>";

					$('#listcomment').append(name);
					$('#listcomment').append(content);

				},
				error : function(e) {
					alert("error");
					console.log("ERROR: ", e);
				}
			});

		});

	});
</script>


</head>
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
							<h2>BÀI HƯỚNG DẪN HỌC NGỮ PHÁP</h2>
						</div>
					</div>
				</div>
			</div>
			<nav>
				<div class="container">
					<ol>
						<li><a href="/webtoeic">Home</a></li>
						<li>Grammar Detail</li>
					</ol>
				</div>
			</nav>
		</div><!-- End Breadcrumbs -->

		<!-- ======= Blog Details Section ======= -->
		<section id="blog" class="blog">
			<div class="container" data-aos="fade-up">

				<div class="row g-5">

					<div class="col-lg-8">

						<article class="blog-details">

							<div class="post-img">
								<img class="img-fluid"
										src="${pageContext.request.contextPath}/resources/file/images/vocabulary.jpg"
										style="height: 330px; width: 870px">
							</div>

							<h2 class="title" style="text-align: center; color: blue">Chủ đề:
								${baigrammar.getTenbaigrammar()}</h2>

							<div class="meta-top">
								<ul>
									<li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="blog-details.html"></a></li>
									<li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-details.html"><time datetime="2020-01-01">Jan 1, 2023</time></a></li>
									<li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-details.html">${countCmt} Comments</a></li>
								</ul>
							</div><!-- End meta top -->

							<div class="content">
								<div class="row" style="text-align: justify;">
									<div class="span3"></div>

									<div class="span9">${baigrammar.getContentHTML()}</div>

								</div>
							</div><!-- End post content -->

							<div class="meta-bottom">
								<i class="bi bi-folder"></i>
								<ul class="cats">
									<li><a href="#">Tips</a></li>
								</ul>

								<i class="bi bi-tags"></i>
								<ul class="tags">
									<li><a href="#">TOEIC</a></li>
									<li><a href="#">Tips</a></li>
									<li><a href="#">Self learning</a></li>
								</ul>
							</div><!-- End meta bottom -->

						</article><!-- End blog post -->

						<div class="post-author d-flex align-items-center">
							<img src="${pageContext.request.contextPath}/resources/file/images/blog/blog-author.jpg" class="rounded-circle flex-shrink-0" alt="">
							<div>
								<h4>Jane Smith</h4>
								<div class="social-links">
									<a href="https://twitters.com/#"><i class="bi bi-twitter"></i></a>
									<a href="https://facebook.com/#"><i class="bi bi-facebook"></i></a>
									<a href="https://instagram.com/#"><i class="biu bi-instagram"></i></a>
								</div>
								<p>
									Some tips for TOEIC beginners. Hope you do exellent in your test.
								</p>
							</div>
						</div><!-- End post author -->

						<div class="comments">

							<h4 class="comments-count">${countCmt} Comments</h4>

							<div id="comment-1" class="comment">
								<div class="d-flex">
									<c:forEach items="${listcomment}" var="list">
										<div class="comment-img"><img src="${pageContext.request.contextPath}/resources/file/images/blog/comments-1.jpg" alt=""></div>
										<div>
											<h5><a href="">${list.getNguoidung().getHoTen()}</a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a></h5>
											<time datetime="2020-01-01">01 Jan,2022</time>
											<p>
													${list.cmtgrammarcontent}
											</p>
										</div>
									</c:forEach>
								</div>
							</div><!-- End comment -->

							<div class="reply-form">
								<c:if test="${pageContext.request.userPrincipal.name == null}">
									<form>
										<fieldset>
											<h3>Bình luận</h3>

											<textarea class="input-xxlarge" rows="3"
													  placeholder="Viết bình luận đánh giá về bài đăng này..." name="comment"
													  disabled style="text-align: justify;">

					 Đăng nhập để bình luận bài viết
					</textarea>
											<br>
											<button type="button" class="btn btn-primary"disabled  ">Đăng
											bình luận</button>
										</fieldset>

									</form>

								</c:if>

								<c:if test="${pageContext.request.userPrincipal.name != null}">
									<!--  	<input type="hidden" id="user_id" name="user_id" value="${currentUser.id}"/> -->
									<input type="hidden" id="id_bai_grammar" value="${idBaiGrammar}" />

									<div class="blog-spot">
										<div>
											<h3>Bình luận</h3>
											<textarea id="contentComment" class="input-xxlarge" rows="3"
													  name="contentComment"
													  placeholder="Viết bình luận đánh giá về bài đăng này..."></textarea>

										</div>
										<div>
											<button id="btnComment" type="button" class="btn btn-primary">Đăng
												bình luận</button>
										</div>
									</div>


								</c:if>

							</div>

						</div><!-- End blog comments -->

					</div>

					<div class="col-lg-4">

						<div class="sidebar">

							<div class="sidebar-item search-form">
								<h3 class="sidebar-title">Search</h3>
								<form action="" class="mt-3">
									<input type="text">
									<button type="submit"><i class="bi bi-search"></i></button>
								</form>
							</div><!-- End sidebar search formn-->

							<div class="sidebar-item categories">
								<h3 class="sidebar-title">Categories</h3>
								<ul class="mt-3">
									<li><a href="#">Listening <span>(25)</span></a></li>
									<li><a href="#">Reading <span>(12)</span></a></li>
									<li><a href="#">Speaking<span>(5)</span></a></li>
									<li><a href="#">Writting<span>(22)</span></a></li>
									<li><a href="#">Grammar <span>(8)</span></a></li>
									<li><a href="#">Vocabulary <span>(14)</span></a></li>
								</ul>
							</div><!-- End sidebar categories-->

							<div class="sidebar-item tags">
								<h3 class="sidebar-title">Tags</h3>
								<ul class="mt-3">
									<li><a href="#">TOEIC</a></li>
									<li><a href="#">Listening</a></li>
									<li><a href="#">Reading</a></li>
									<li><a href="#">Speaking</a></li>
									<li><a href="#">Writting</a></li>
									<li><a href="#">Grammar</a></li>
									<li><a href="#">Vocabulary</a></li>
									<li><a href="#">Test</a></li>
									<li><a href="#">Tips</a></li>
									<li><a href="#">Practice</a></li>
								</ul>
							</div><!-- End sidebar tags-->

						</div><!-- End Blog Sidebar -->

					</div>
				</div>

			</div>
		</section><!-- End Blog Details Section -->

	</main><!-- End #main -->

	<jsp:include page="include/footerHome.jsp"></jsp:include>
</body>
</html>