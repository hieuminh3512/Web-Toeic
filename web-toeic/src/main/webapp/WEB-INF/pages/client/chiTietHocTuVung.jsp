<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hướng dẫn từ vựng chi tiết</title>

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

		$('#btnComment').click(function() {

			var test = $("#contentComment").val();
			var baitaptuvungId = $("#id_bai_tu_vung").val();
			var baseUrl = $('#baseUrl').val();
			$.ajax({
				dataType : "json",
				type : 'POST',
				url : baseUrl + "/api/client/vocab/ajaxCmtVocab/" + test + "/" + baitaptuvungId,

				success : function(result) {

					var obj = JSON.parse(result);

					var name = "<h4 style='color:red'>" + obj.nguoidung + "</h4> ";
					var content = "<textarea disabled class='input-xxlarge showtext' rows='3' name='cmtvocabularycontent' >" + obj.cmtvocabularycontent + "</textarea>";

					$('#listcomment').append(name);
					$('#listcomment').append(content);

				},
				error : function(e) {
					alert("error");
					console.log("ERROR: ", e);
				}
			});

		});
		function getList() {
			$.ajax({
				url: "http://localhost:8080/webtoeic/api/client/vocab/baitaptuvungId=2", // Đường dẫn tới API
				type: "GET",
				success: function(List) {
					function showQuetions(index){
						var obj = List[index];
						const que_text = document.querySelector(".que_text");
						const que_pic = document.querySelector(".que_pic");
						const que_ans = document.querySelector(".que_ans");
						let que_tag = '<b>' + obj.number + '.<span style="color: blue">' + obj.content + '</span></b> <br>';
						let que_direct = '<br> <img src="${pageContext.request.contextPath}/resources/file/images/vocab/'+ obj.image +'" alt="image not found" style="height: 400px; width: 600px;" /> <br> <br>';
						let que_answer = '<br> <br><p><b>Transcribe:</b> &nbsp; <span style="color: red">' + obj.transcribe + '</span></p><p><b>Từ loại </b>'+ obj.meaning +'</p><p><b>Ví dụ: </b>'+obj.sentence+'</p><audio controls> <source src="${pageContext.request.contextPath}/resources/file/audio/vocab/'+ obj.audiomp3 +'"type="audio/wav"></audio><br>';
						que_text.innerHTML = que_tag; //adding new span tag inside que_tag
						que_pic.innerHTML = que_direct;
						que_ans.innerHTML = que_answer;
						if(index==0){
							back_quiz.classList.remove("show");
						}else {back_quiz.classList.add("show");}
						if(index==9){
							next_quiz.classList.remove("show");
						}else {next_quiz.classList.add("show");}
					}

					let que_count = 0;

//selecting all required elements
					const start_btn = document.querySelector(".start_btn button");
					const info_box = document.querySelector(".info_box");
					const exit_btn = info_box.querySelector(".buttons .quit");
					const continue_btn = info_box.querySelector(".buttons .continue");
					const result_box = document.querySelector(".result_box");

// if startQuiz button clicked
					start_btn.onclick = ()=>{
						info_box.classList.add("activeInfo"); //show info box
					}

// if exitQuiz button clicked
					exit_btn.onclick = ()=>{
						info_box.classList.remove("activeInfo"); //hide info box
					}

// if continueQuiz button clicked
					continue_btn.onclick = ()=>{
						info_box.classList.remove("activeInfo"); //hide info box
						showResult(); //calling showResult function
					}
					const back_quiz = result_box.querySelector(".buttons .back");
					const next_quiz = result_box.querySelector(".buttons .next");
					const quit_quiz = result_box.querySelector(".buttons .quit");

					function showResult(){
						info_box.classList.remove("activeInfo"); //hide info box
						result_box.classList.add("activeResult"); //show result box
						back_quiz.classList.add("show");
						next_quiz.classList.add("show");
						quit_quiz.classList.add("show");
						showQuetions(que_count);
					}
// if quitQuiz button clicked
					back_quiz.onclick = ()=>{
						que_count--;
						showQuetions(que_count);
					}

					next_quiz.onclick = ()=>{
						que_count++;
						showQuetions(que_count);
					}

					quit_quiz.onclick = ()=>{
						result_box.classList.remove("activeResult") //reload the current window
						que_count=0;
					}


				}
			});
		}
		getList() ;


	});




</script>


</head>
<body>

	<!--Header
==========================-->

	<jsp:include page="template/header.jsp"></jsp:include>
	<input id="baseUrl" value="${pageContext.request.contextPath}"
		style="display: none;" />
	<!--/End Headter-->

	<main id="main">

		<!-- ======= Breadcrumbs ======= -->
		<div class="breadcrumbs">
			<div class="page-header d-flex align-items-center" style="background-image: url('');">
				<div class="container position-relative">
					<div class="row d-flex justify-content-center">
						<div class="col-lg-6 text-center">
							<h2>Bài hướng dẫn học từ vựng</h2>
						</div>
					</div>
				</div>
			</div>
			<nav>
				<div class="container">
					<ol>
						<li><a href="/webtoeic">Home</a></li>
						<li>Vocabulary Detail</li>
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
								${bttuvung.getTenbaituvung()}</h2>

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

									<p>
										<c:forEach items="${listCauHoi}" var="list">

									<div class="row">
										<div class="span3">
											<b>${list.number}.<span style="color: blue"> ${list.content}
											</span>
											</b> <br> <br> <img
												src="${pageContext.request.contextPath}/resources/file/images/vocab/${list.image}"
												alt="image not found" style="height: 210px; width: 300px;" /> <br>

											<br>
										</div>
										<div class="span6">
											<br> <br>
											<p>
												<b>Transcribe:</b> &nbsp; <span style="color: red">${list.transcribe}</span>
											</p>
											<p>
												<b>Từ loại </b>${list.meaning}
											</p>
											<p>
												<b>Ví dụ: </b>${list.sentence}
											</p>
											<audio controls> <source
													src="${pageContext.request.contextPath}/resources/file/audio/vocab/${list.audiomp3}"
													type="audio/wav"></audio>
											<br>

										</div>



									</div>
									<br>

									</c:forEach>

									</p>

								<div class="flash_card_box">
									<!-- start Quiz button -->
									<div class="start_btn"><button type="button" class="btn btn-primary">Luyện Flash Card</button></div>

									<!-- Info Box -->
									<div class="info_box">
										<div class="info-title"><span>Some Rules of this Test</span></div>
										<div class="info-list">
											<div class="info">1. Đây là bài luyện tập từ vựng vừa học</div>
											<div class="info">2. Mặt trước là từ vựng viết bằng tiếng anh</div>
											<div class="info">3. Mặt sau là nghĩ tiếng việt cùng câu ví dụ</div>
											<div class="info">4. Chú bạn học từ vựng vui vẻ</div>
										</div>
										<div class="buttons">
											<button class="quit">Exit Test</button>
											<button class="continue">Continue</button>
										</div>
									</div>



									<!-- Result Box -->
									<div class="result_box">
										<div class="flip-card">
											<div class="flip-card-inner">
												<div class="flip-card-front">
													<div class="que_text">
														<!-- Here I've inserted question from JavaScript -->
													</div>
													<div class="que_pic">
														<!-- Here I've inserted question from JavaScript -->
													</div>
												</div>
												<div class="flip-card-back">
													<div class="que_ans">
														<!-- Here I've inserted question from JavaScript -->
													</div>
												</div>
											</div>
										</div>
										<footer>
										<div class="buttons">
											<button class="back">Back</button>
											<button class="next">Next</button>
											<button class="quit">Quit Test</button>
										</div>
										</footer>
									</div>
	<link href="${pageContext.request.contextPath}/resources/css/Flashcard.css" rel="stylesheet">

</div>
									<br>
									<br>
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
							<img src="/resources/file/images/blog/blog-author.jpg" class="rounded-circle flex-shrink-0" alt="">
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
													${list.cmtvocabularycontent}
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
									<input type="hidden" id="id_bai_grammar" value="${idBaiTuVung}" />

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