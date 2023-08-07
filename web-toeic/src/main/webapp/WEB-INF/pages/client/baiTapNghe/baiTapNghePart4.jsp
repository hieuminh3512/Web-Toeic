<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Luyện bài tập nghe - Part 3</title>
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

	<div class="container">
		<!--PAGE TITLE-->
		<div class="span9" style="text-align: center">
			<h2 style="font-weight: bold">LUYỆN NGHE PART 4</h2>
			<div class="page-header"></div>
		</div>

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
					<img src="<c:url value="/file/images/baiNgheId=${baiTapNghe.id }.png"  />"
						style="width: 300px; height: 150px;">
					<p>Listen audio and answer the questions</p>
					<audio controls
						src="<c:url value="/file/audio/baiNgheId=${baiTapNghe.id }.mp3"  />"></audio>
				</div>
				<div id="script-detail" class="hidden">
			        
					<div class="form-group">
					    <label>Script bài nghe</label>
						<textarea style="width: 650px; height: 300px; margin-left: 30px; border: 0px; cursor: default; background-color: white;" disabled> 
						    ${baiTapNghe.script}
                        </textarea>
					</div>
					<hr align="center">
				</div>
				<div id="cauHoi"></div>

				<div class="pagination">
					<ul class="ul-pagination"></ul>
				</div>

				<hr align="center">

				<div>
					<button class="btn btn-success" id="btnNopBai">Nộp bài</button>
					<a class="btn btn-success hidden" id="btnBaiThiKhac"
						href="/webtoeic/listening">Làm bài thi khác</a>
				</div>

				<!--/.Pagination-->
			</div>
			<div class="span3">
				<div class="side-bar">

					<h3>Danh mục</h3>
					<ul class="nav nav-list">
						<li><a href="/webtoeic/listening">LUYỆN BÀI NGHE</a></li>
						<li><a href="/webtoeic/reading">LUYỆN BÀI ĐỌC</a></li>
						<li><a href="/webtoeic/listExam">THI THỬ</a></li>						
						<li><a href="/webtoeic/listGrammar">HỌC NGỮ PHÁP</a></li>
						<li><a href="/webtoeic/listVocab">HỌC TỪ VỰNG</a></li>
					</ul>

				</div>
			</div>
		</div>
	</div>
	<div class="row col-md-6">
		<div class="modal fade" id="nopBaiModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static"
			data-keyboard="false">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">KẾT QUẢ</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<h4 id="ketQuaText"></h4>
					</div>
					<div class="modal-footer">
						<input class="btn btn-danger" id="btnLamLai" type="button" value="Làm lại" />
						<input class="btn btn-primary" id="btnXemGiaiThich" type="button"
							value="Xem Giải thích" />

					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../template/footer.jsp"></jsp:include>
	<script
		src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
	<script src="<c:url value='/js/client/baiNghe/lamBaiNghePart3.js'/>"></script> <!--  part 3 4 như nhau -->

</body>
</html>