<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Danh sách bài thi thử</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap-responsive.css" rel="stylesheet">

	<link href="${pageContext.request.contextPath}/resources/css/blog.css" rel="stylesheet">

	<!-- Template Main JS File -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>


	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/html5shiv.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-1.js"></script>

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

.imageExam {
	float: left;
	height: 150px;
	width: 250px;
	margin-bottom: 25px;
}
</style>

<script type="text/javascript">
	$(document)
			.ready(
					function() {

						var buttons = document
								.getElementsByClassName('openModalExam');

						for (var i = 0; i < buttons.length; i++) {
							buttons[i].addEventListener("click", clickHandler);

						}

						function clickHandler(event) {
							var buttonId = event.target.id;
							var idExam = document.getElementById(buttonId).value;

							$('#examModal').modal('show');
							$('#examModal #idExamModal').val(idExam);

						}

						$('#btnLamBaiThi')
								.click(
										function() {
											var baseUrl = $('#baseUrl').val();
											var examId = $('#idExamModal')
													.val();
											window.location.href = baseUrl+"/doExam?idExam="
													+ examId;

										});

					});
</script>
</head>
<body>

	<jsp:include page="template/header.jsp"></jsp:include>
	<input id="baseUrl" value="${pageContext.request.contextPath}" style="display:none;"/>

	<main id="main">

		<!-- ======= Breadcrumbs ======= -->
		<div class="breadcrumbs">
			<div class="page-header d-flex align-items-center" style="background-image: url('');">
				<div class="container position-relative">
					<div class="row d-flex justify-content-center">
						<div class="col-lg-6 text-center">
							<h2>DANH SÁCH BÀI THI THỬ</h2>
						</div>
					</div>
				</div>
			</div>
			<nav>
				<div class="container">
					<ol>
						<li><a href="/webtoeic">Home</a></li>
						<li>Test</li>
					</ol>
				</div>
			</nav>
		</div><!-- End Breadcrumbs -->

		<!-- ======= Blog Section ======= -->
		<section id="blog" class="blog">
			<div>
				<div class="row g-5">

					<div class="col-lg-8">

						<article class="blog-details">
							<div class="row">
								<div class="span9">
									<c:if test="${fn:length(listData) == 0 }">
										<h3>Không tìm thấy dữ liệu</h3>
									</c:if>

									<c:forEach items="${listData}" var="list" varStatus="loop">

										<div class="span9">
											<div class="span3">
												<img class="imageExam"
													 src="${pageContext.request.contextPath}/resources/file/images/exam/${list.anhbaithithu}" />
											</div>
											<div class="span1"></div>
											<div class="span5">
												<h4 class="content-heading" id="namebaithithu">
														${list.tenbaithithu}</h4>
												<button class="btn btn-primary openModalExam"
														value="${list.baithithuid}" id="openModalExam.${loop.index}">
													Chi tiết</button>
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

				<!--Pagination-->
				<div class="blog-pagination">
					<c:if test="${listData.size() != 0}">


						<ul class="justify-content-center">
							<c:if test="${currentPage != 1}">
								<li><a href="/webtoeic/listExam?page=${currentPage-1}">Back</a></li>
							</c:if>
							<c:if test="${currentPage == 1}">
								<li><a class="current">1</a></li>
							</c:if>

							<c:if test="${currentPage != 1}">
								<li><a href="/webtoeic/listExam?page=1">1</a></li>
							</c:if>

							<c:forEach var="pag" items="${pageList}" varStatus="loop">
								<c:if test="${currentPage == pag}">
									<li><a class="current">${pag}</a></li>
								</c:if>
								<c:if test="${currentPage != pag}">
									<li><a href="/webtoeic/listExam?page=${pag}">${pag}</a></li>
								</c:if>
							</c:forEach>

							<c:if test="${currentPage != totalPage}">
								<li><a href="/webtoeic/listExam?page=${currentPage+1} "
									   class="pageNext">Next</a></li>
							</c:if>
						</ul>

					</c:if>
				</div>
			</div>
		</section><!-- End Blog Section -->

	</main>


	<!-- Modal -->
	<div class="modal fade show" id="examModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content -->

			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">HƯỚNG DẪN LÀM BÀI THI THỬ</h4>
				</div>
				<div class="modal-body">
					<input class="hidden" id="idExamModal">
					<p>Bài thi thử gồm 2 phần: (100 câu hỏi)</p>
					<img style="float: left"
						 src="https://img.icons8.com/external-wanicon-lineal-wanicon/64/null/external-listening-online-learning-wanicon-lineal-wanicon.png"/> <br>
					<p>Phần 1: Listening skills (30 phút - 50 câu hỏi)</p>
					<br> <img style="float: left"
						src="https://img.icons8.com/nolan/64/000000/reading.png"> <br>
					<p>Phần 2: Reading skills (45 phút - 50 câu hỏi)</p>

					<br>
					<p>Bài thi được thực hiện sau khi xác nhận làm bài thi</p>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="btnLamBaiThi">Làm
						bài thi</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

				</div>
			</div>

		</div>
	</div>


	<!-- Modal -->

	<jsp:include page="include/footerHome.jsp"></jsp:include>


</body>

</html>