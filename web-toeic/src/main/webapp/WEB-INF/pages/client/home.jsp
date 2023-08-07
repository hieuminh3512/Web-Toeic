<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang chủ</title>

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

	<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">


<script src="${pageContext.request.contextPath}/resources/js/jquery-1.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/client/home.js"></script>

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

</head>
<body>

	<!--Header
==========================-->

	<jsp:include page="template/header.jsp"></jsp:include>

	<!--/End Header-->




	<!-- ======= Hero Section ======= -->
	<section id="hero" class="hero">
		<div class="container position-relative">
			<div class="row gy-5" data-aos="fade-in">
				<div class="col-lg-6 order-2 order-lg-1 d-flex flex-column justify-content-center text-center text-lg-start">
					<h2>Welcome to <span>Kusanali</span></h2>
					<p>Chào mừng đến với Kusanali, trang web TOEIC miễn phí cung cấp cho người học các bài luyện tập theo từng part, đề thi thử cũng như các bài tập về từ vựng và ngữ pháp. Bắt đầu hành trình chinh phục chứng chỉ TOEIC với các bài luyện tập trên trang web/ứng dụng của chúng tôi ngay hôm nay</p>
					<div class="d-flex justify-content-center justify-content-lg-start">
						<a href="#about" class="btn-get-started">Get Started</a>
						<a href="https://www.youtube.com/watch?v=v4ZWulN5o0M" class="glightbox btn-watch-video d-flex align-items-center"><i class="bi bi-play-circle"></i><span>Watch Video</span></a>
					</div>
				</div>
				<div class="col-lg-6 order-1 order-lg-2">
					<img src="${pageContext.request.contextPath}/resources/file/images/hero-img.svg" class="img-fluid" alt="" data-aos="zoom-out" data-aos-delay="100">
				</div>
			</div>
		</div>



		</div>
	</section>
	<!-- End Hero Section -->

	<main id="main">

		<!-- ======= About Us Section ======= -->
		<section id="about" class="about">
			<div class="container" data-aos="fade-up">

				<div class="section-header">
					<h2>Tổng quan về bài thi TOEIC</h2>
					<p>TOEIC (the Test of English for International Communication) là bài kiểm tra đánh giá khả năng sử dụng tiếng Anh trong môi trường giao tiếp quốc tế. Kỳ thi thuộc bản quyền của Viện Khảo thí giáo dục Hoa Kỳ.
						<br>
						Các câu hỏi trong bài thi TOEIC liên quan đến các chủ đề như hội họp, du lịch, thông báo, email. </p>
				</div>

				<div class="row gy-4">
					<div class="col-lg-6">
						<h3>Lợi ích của chứng chỉ Toeic</h3>
						<img src="${pageContext.request.contextPath}/resources/file/images/about.jpg" class="img-fluid rounded-4 mb-4" alt="">
						<p>
							Vậy chứng chỉ TOEIC mang lại những lợi ích gì cho người học, dưới đây là những lợi ích hàng đầu của chứng chỉ TOEIC.
						<h4>Sở hữu chứng chỉ được công nhận rộng rãi </h4>
						<p>Đúng như tên gọi “Bài kiểm tra tiếng Anh giao tiếp quốc tế”, chứng chỉ TOEIC là minh chứng rõ ràng về khả năng giao tiếp tiếng Anh của bạn trong môi trường quốc tế. TOEIC đã được hơn 14000 tổ chức tại 160 quốc gia trên thế giới công nhận.</p>
						<h4>Mở ra nhiều cơ hội việc làm hơn</h4>
						<p>Khi thị trường việc làm ngày càng trở nên cạnh tranh, bạn cần phải biết cách làm cho mình nổi bật giữa đám đông. Một CV ấn tượng với chứng chỉ tiếng Anh quốc tế như TOEIC sẽ mang lại cho bạn nhiều cơ hội việc làm hơn cũng như cho thấy kỹ năng giao tiếp tại nơi làm việc của bạn bất kể tuổi tác, giới tính, quốc tịch và xuất thân. Bên cạnh đó, việc sở hữu chứng chỉ tiếng Anh còn cho nhà tuyển dụng thấy rằng bạn sẵn sàng dành thời gian để nâng cao trình độ tiếng Anh cũng như kỹ năng chuyên môn của mình.</p>
						<h4>Tạo cho bạn động lực</h4>
						<p>Động lực đóng một vai trò quan trọng trong việc học một ngôn ngữ mới. Học ngôn ngữ có thể thúc đẩy động lực và hiệu quả học tập. Bằng cách tham gia kỳ thi TOEIC và cải thiện trình độ tiếng Anh của mình, bạn sẽ có thêm động lực để học tập tốt hơn và tiếp tục học và sử dụng ngôn ngữ.</p>
						</p>

					</div>
					<div class="col-lg-6">
						<div class="content ps-0 ps-lg-5">
							<h3>Cấu trúc bài thi TOEIC</h3>
							<p>Bạn có thể tham khảo cấu trúc đề thi TOEIC 4 kĩ năng qua video sau :</p>
							<div class="position-relative mt-4">
								<img src="${pageContext.request.contextPath}/resources/file/images/about-2.jpg" class="img-fluid rounded-4" alt="">
								<a href="https://www.youtube.com/watch?v=h1yDYCKHzns" class="glightbox play-btn"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section><!-- End About Us Section -->

		<!-- ======= Frequently Asked Questions Section ======= -->
		<section id="faq" class="faq">
			<div class="container" data-aos="fade-up">
				<div class="row gy-4">
					<div class="col-lg-4">
						<div class="content px-xl-5">
							<h3>Frequently Asked <strong>Questions</strong></h3>
							<p>
								Các câu hỏi thường gặp về bài thi TOEIC
							</p>
						</div>
					</div>
					<div class="col-lg-8">
						<div class="accordion accordion-flush" id="faqlist" data-aos="fade-up" data-aos-delay="100">
							<div class="accordion-item">
								<h3 class="accordion-header">
									<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-1">
										<span class="num">1.</span>
										Bài kiểm tra TOEIC đánh giá gì?
									</button>
								</h3>
								<div id="faq-content-1" class="accordion-collapse collapse" data-bs-parent="#faqlist">
									<div class="accordion-body">
										Bài thi TOEIC Nghe and Đọc đánh giá khả năng nghe và đọc tiếng Anh.
									</div>
								</div>
							</div><!-- # Faq item-->

							<div class="accordion-item">
								<h3 class="accordion-header">
									<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-2">
										<span class="num">2.</span>
										Đối tượng tham gia kỳ thi TOEIC là ai?
									</button>
								</h3>
								<div id="faq-content-2" class="accordion-collapse collapse" data-bs-parent="#faqlist">
									<div class="accordion-body">
										Nhiều công ty, tập đoàn và tổ chức giáo dục trên thế giới sử dụng bài thi TOEIC Nghe và Đọc để đánh giá trình độ sử dụng tiếng Anh của sinh viên và các chuyên gia kinh doanh.
										Đối tượng tham gia kỳ thi TOEIC bao gồm:
										<br>- Nhân viên làm việc tại khách sạn, bệnh viện, nhà hàng hoặc tham gia hội họp, hội nghị quốc tế và có nhu cầu sử dụng tiếng Anh thường xuyên.
										<br>- Cá nhân làm việc ở các vị trí quản lý, kinh doanh và kỹ thuật trong lĩnh vực kinh doanh quốc tế, thương mại và công nghiệp cần sử dụng tiếng Anh để giao tiếp với đồng nghiệp.
										<br>- Nhân viên tham gia vào thị trường việc làm nước ngoài.
									</div>
								</div>
							</div><!-- # Faq item-->

							<div class="accordion-item">
								<h3 class="accordion-header">
									<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-3">
										<span class="num">3.</span>
										Tại sao trong kỳ thi TOEIC thí sinh chỉ được dùng bút chì?
									</button>
								</h3>
								<div id="faq-content-3" class="accordion-collapse collapse" data-bs-parent="#faqlist">
									<div class="accordion-body">
										Đây là tiêu chuẩn của kỳ thi TOEIC. Thí sinh chỉ được phép sử dụng bút chì để điền đáp án vào phiếu trả lời. Điều này đảm bảo tính chính xác trong quá trình chấm điểm.
										Không được phép sử dụng các loại bút khác như bút bi vì chúng có thể khiến cho câu trả lời bị nhòe và gây ra lỗi khi quét. Bên cạnh đó, việc sử dụng bút chì sẽ giúp bạn dễ dàng thay đổi đáp án.
										Hơn nữa, tính bảo mật cũng là một lý do tại sao thí sinh tham dự kỳ thi TOEIC được yêu cầu chỉ sử dụng bút chì. Các sự cố an ninh trong quá khứ đã chứng minh rằng tài liệu có thể mang được vào phòng thi cũng như đềthi có thể mang được ra khỏi phòng thi.
										Trước khi bắt đầu làm bài kiểm tra, bạn sẽ được phát một cây bút chì và một cục tẩy.
									</div>
								</div>
							</div><!-- # Faq item-->

							<div class="accordion-item">
								<h3 class="accordion-header">
									<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-4">
										<span class="num">4.</span>
										Tại sao đề thi TOEIC và đáp án không được công bố?
									</button>
								</h3>
								<div id="faq-content-4" class="accordion-collapse collapse" data-bs-parent="#faqlist">
									<div class="accordion-body">
										Một số bài thi TOEIC được sử dụng lại nhiều lần và do đó phải luôn được bảo mật một cách cẩn thận. Nếu đề thi và đáp án bị tiết lộ, kỳ thi sẽ mất đi tính bảo mật.

										Hơn nữa, các đề thi TOEIC và đáp án thuộc bản quyền của Viện Khảo thí giáo dục Hoa Kỳ, do đó chúng không được tiết lộ hoặc sử dụng cho bất kỳ mục đích nào mà không có sự cho phép của Viện Khảo thí giáo dục Hoa Kỳ.
									</div>
								</div>
							</div><!-- # Faq item-->

							<div class="accordion-item">
								<h3 class="accordion-header">
									<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-5">
										<span class="num">5.</span>
										Chứng chỉ TOEIC có hiệu lực trong bao lâu?
									</button>
								</h3>
								<div id="faq-content-5" class="accordion-collapse collapse" data-bs-parent="#faqlist">
									<div class="accordion-body">
										Chứng chỉ TOEIC có giá trị trong hai năm. Điểm thi TOEIC đánh giá khả năng tiếng Anh của bạn tại thời điểm bạn tham gia kỳ thi.
										Vì trình độ tiếng Anh của bạn có thể được cải thiện hoặc kém đi theo thời gian nên chứng chỉ TOEIC sẽ không được cấp lại sau 2 năm kể từ ngày thi.
									</div>
								</div>
							</div><!-- # Faq item-->

						</div>

					</div>
				</div>

			</div>
		</section><!-- End Frequently Asked Questions Section -->

		<!-- ======= Call To Action Section ======= -->
		<section id="call-to-action" class="call-to-action">
			<div class="container text-center" id="microtest" data-aos="zoom-out">
				<h3>Test</h3>
				<p> Làm bài thi thử với số lượng câu hỏi và thời gian giảm một nửa so với bài thi thật</p>
				<a class="cta-btn" href="<%=request.getContextPath()%>/listExam">Làm bài</a>
			</div>
			<div class="container text-center" id="minitest" data-aos="zoom-out">
				<h3>Grammar</h3>
				<p> Học ngữ pháp theo chủ đề </p>
				<a class="cta-btn" href="<%=request.getContextPath()%>/listGrammar">Làm bài</a>
			</div>
			<div class="container text-center" id="fulltest" data-aos="zoom-out">
				<h3>Vocabulary</h3>
				<p> Học từ vựng theo chủ đề</p>
				<a class="cta-btn" href="<%=request.getContextPath()%>/listVocab">Làm bài</a>
			</div>
		</section><!-- End Call To Action Section -->

		<!-- ======= Our Services Section ======= -->
		<section id="services" class="services sections-bg">
			<div class="container" data-aos="fade-up">

				<div class="section-header">
					<h2>Chức năng của Web</h2>
				</div>

				<div class="row gy-4" data-aos="fade-up" data-aos-delay="100">

					<div class="col-lg-4 col-md-6">
						<div class="service-item  position-relative">
							<div class="icon">
								<i class="bi bi-laptop"></i>
							</div>
							<h3>Ngân hàng đề thi</h3>
							<p>Ngân hàng đề thi đa dạng với nhiều chủ đề khác nhau sẽ giúp bạn chuẩn bị tốt nhất cho kì thi của mình.</p>

						</div>
					</div><!-- End Service Item -->

					<div class="col-lg-4 col-md-6">
						<div class="service-item position-relative">
							<div class="icon">
								<i class="bi bi-book-half"></i>
							</div>
							<h3>Mô phỏng bài thi thật</h3>
							<p>Các bài thi thử có cấu trúc giống như bài thi thật sẽ giúp bạn vượt qua kì thi một cách thành công</p>

						</div>
					</div><!-- End Service Item -->

					<div class="col-lg-4 col-md-6">
						<div class="service-item position-relative">
							<div class="icon">
								<i class="bi bi-activity"></i>
							</div>
							<h3>Thống kê kết quả chi tiết</h3>
							<p>Sau khi hoàn thành mỗi bài luyện tập, bạn có thể xem thống kê chi tiết kết quả bài làm của mình.</p>

						</div>
					</div><!-- End Service Item -->

					<div class="col-lg-4 col-md-6">
						<div class="service-item position-relative">
							<div class="icon">
								<i class="bi bi-bounding-box-circles"></i>
							</div>
							<h3>Dễ dàng tiếp cận</h3>
							<p>Chỉ cần với một thiếp bị thông minh có kết nối Internet, bạn có thể học mọi lúc mọi nơi. </p>

						</div>
					</div><!-- End Service Item -->

					<div class="col-lg-4 col-md-6">
						<div class="service-item position-relative">
							<div class="icon">
								<i class="bi bi-calendar4-week"></i>
							</div>
							<h3>Nhắc nhở lịch học</h3>
							<p>Web sẽ gửi thông báo nhắc nhở bạn lịch luyện tập hằng ngày dựa trên tiến trình học của bạn.</p>

						</div>
					</div><!-- End Service Item -->

					<div class="col-lg-4 col-md-6">
						<div class="service-item position-relative">
							<div class="icon">
								<i class="bi bi-chat-square-text"></i>
							</div>
							<h3>Kết nối với cộng đồng</h3>
							<p>Thảo luận với cộng đồng người học sẽ giúp bạn mở mang kiến thức.</p>

						</div>
					</div><!-- End Service Item -->

				</div>

			</div>
		</section><!-- End Our Services Section -->

		<!-- ======= Testimonials Section ======= -->
		<section id="testimonials" class="testimonials">
			<div class="container" data-aos="fade-up">

				<div class="section-header">
					<h2>Trải nghiệm người dùng</h2>
				</div>

				<div class="slides-3 swiper" data-aos="fade-up" data-aos-delay="100">
					<div class="swiper-wrapper">

						<div class="swiper-slide">
							<div class="testimonial-wrap">
								<div class="testimonial-item">
									<div class="d-flex align-items-center">
										<img src="${pageContext.request.contextPath}/resources/file/images/testimonials/testimonials-1.jpg" class="testimonial-img flex-shrink-0" alt="">
										<div>
											<h3>Saul Goodman</h3>
											<h4>Ceo &amp; Founder</h4>
											<div class="stars">
												<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
											</div>
										</div>
									</div>
									<p>
										<i class="bi bi-quote quote-icon-left"></i>
										This web really helps you to improve your Endlish by listening while matching it with the picture. I love the web.
										<i class="bi bi-quote quote-icon-right"></i>
									</p>
								</div>
							</div>
						</div><!-- End testimonial item -->

						<div class="swiper-slide">
							<div class="testimonial-wrap">
								<div class="testimonial-item">
									<div class="d-flex align-items-center">
										<img src="${pageContext.request.contextPath}/resources/file/images/testimonials/testimonials-2.jpg" class="testimonial-img flex-shrink-0" alt="">
										<div>
											<h3>Sara Wilsson</h3>
											<h4>Designer</h4>
											<div class="stars">
												<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
											</div>
										</div>
									</div>
									<p>
										<i class="bi bi-quote quote-icon-left"></i>
										Amazing! An easy and practice way to boost your skills for TOEIC exam. I'm sure that it is the best! Thanks. I'm very grateful, i recommended it. Regard.
										<i class="bi bi-quote quote-icon-right"></i>
									</p>
								</div>
							</div>
						</div><!-- End testimonial item -->

						<div class="swiper-slide">
							<div class="testimonial-wrap">
								<div class="testimonial-item">
									<div class="d-flex align-items-center">
										<img src="${pageContext.request.contextPath}/resources/file/images/testimonials/testimonials-3.jpg" class="testimonial-img flex-shrink-0" alt="">
										<div>
											<h3>Jena Karlis</h3>
											<h4>Student</h4>
											<div class="stars">
												<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
											</div>
										</div>
									</div>
									<p>
										<i class="bi bi-quote quote-icon-left"></i>
										Wonderful web to learn English! We can communicate with each other and the questions are similar to the TOEIC test . Ít help me a lot! Thank you
										<i class="bi bi-quote quote-icon-right"></i>
									</p>
								</div>
							</div>
						</div><!-- End testimonial item -->

						<div class="swiper-slide">
							<div class="testimonial-wrap">
								<div class="testimonial-item">
									<div class="d-flex align-items-center">
										<img src="${pageContext.request.contextPath}/resources/file/images/testimonials/testimonials-4.jpg" class="testimonial-img flex-shrink-0" alt="">
										<div>
											<h3>Matt Brandon</h3>
											<h4>Freelancer</h4>
											<div class="stars">
												<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
											</div>
										</div>
									</div>
									<p>
										<i class="bi bi-quote quote-icon-left"></i>
										This web is easy to use, focus to practice for TOEIC. I've tried many web and this is useful. Tks
										<i class="bi bi-quote quote-icon-right"></i>
									</p>
								</div>
							</div>
						</div><!-- End testimonial item -->

						<div class="swiper-slide">
							<div class="testimonial-wrap">
								<div class="testimonial-item">
									<div class="d-flex align-items-center">
										<img src="${pageContext.request.contextPath}/resources/file/images/testimonials/testimonials-5.jpg" class="testimonial-img flex-shrink-0" alt="">
										<div>
											<h3>John Larson</h3>
											<h4>Entrepreneur</h4>
											<div class="stars">
												<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
											</div>
										</div>
									</div>
									<p>
										<i class="bi bi-quote quote-icon-left"></i>
										This web helps me a lot. Really recommended!
										<i class="bi bi-quote quote-icon-right"></i>
									</p>
								</div>
							</div>
						</div><!-- End testimonial item -->

					</div>
					<div class="swiper-pagination"></div>
				</div>

			</div>
		</section><!-- End Testimonials Section -->

		<!-- ======= Portfolio Section ======= -->
		<section id="skill" class="portfolio sections-bg">
			<div class="container" data-aos="fade-up">

				<div class="section-header">
					<h2>Practice Skill</h2>
					<p> Muốn đạt số điểm TOEIC mơ ước? Hãy làm các bài luyện tập trên website của chúng tôi để chuẩn bị 100% cho kỳ thi TOEIC sắp tới!</p>
				</div>

				<div class="portfolio-isotope" data-portfolio-filter="*" data-portfolio-layout="masonry" data-portfolio-sort="original-order" data-aos="fade-up" data-aos-delay="100">

					<div>
						<ul class="portfolio-flters">
							<li data-filter="*" class="filter-active">All</li>
							<li data-filter=".filter-app">Listening</li>
							<li data-filter=".filter-product">Reading</li>
						</ul><!-- End Portfolio Filters -->
					</div>

					<div class="row gy-4 portfolio-container">

						<div class="col-xl-4 col-md-6 portfolio-item filter-app">
							<div class="portfolio-wrap">
								<a href="assets/img/portfolio/app-1.webp" data-gallery="portfolio-gallery-app" class="glightbox"><img src="${pageContext.request.contextPath}/resources/file/images/portfolio/app-1.webp" class="img-fluid" alt=""></a>
								<div class="portfolio-info">
									<h4><a href="<%=request.getContextPath()%>/listening" title="More Details">Part 1: Photographs</a></h4>
									<p>Thí sinh sẽ nghe 1 lần duy nhất 4 câu mô tả vê một bức tranh. Sau đó chọn đáp án mô tả đúng nhất bức tranh đó</p>
								</div>
							</div>
						</div><!-- End Portfolio Item -->

						<div class="col-xl-4 col-md-6 portfolio-item filter-product">
							<div class="portfolio-wrap">
								<a href="assets/img/portfolio/product-1.webp" data-gallery="portfolio-gallery-app" class="glightbox"><img src="${pageContext.request.contextPath}/resources/file/images/portfolio/product-1.webp" class="img-fluid" alt=""></a>
								<div class="portfolio-info">
									<h4><a href="<%=request.getContextPath()%>/reading" title="More Details">Part 1: Incomplete Sentences</a></h4>
									<p>Chọn đáp án đúng nhất trong 4 đáp án để hoàn thành câu</p>
								</div>
							</div>
						</div><!-- End Portfolio Item -->

						<div class="col-xl-4 col-md-6 portfolio-item filter-app">
							<div class="portfolio-wrap">
								<a href="assets/img/portfolio/app-2.webp" data-gallery="portfolio-gallery-app" class="glightbox"><img src="${pageContext.request.contextPath}/resources/file/images/portfolio/app-2.webp" class="img-fluid" alt=""></a>
								<div class="portfolio-info">
									<h4><a href="<%=request.getContextPath()%>/listening" title="More Details">Part 2: Question- Response</a></h4>
									<p>Thí sinh sẽ nghe 1 lần duy nhất 3 câu hồi đáp cho 1 câu hỏi hoặc 1 câu nói. Sau đó chọn câu hồi đáp phù hợp nhất</p>
								</div>
							</div>
						</div><!-- End Portfolio Item -->

						<div class="col-xl-4 col-md-6 portfolio-item filter-product">
							<div class="portfolio-wrap">
								<a href="assets/img/portfolio/product-2.webp" data-gallery="portfolio-gallery-app" class="glightbox"><img src="${pageContext.request.contextPath}/resources/file/images/portfolio/product-2.webp" class="img-fluid" alt=""></a>
								<div class="portfolio-info">
									<h4><a href="<%=request.getContextPath()%>/reading" title="More Details">Part 2: Text Completion</a></h4>
									<p>Chọn đáp án đúng nhất trong 4 đáp án( từ, cụm từ hoặc câu) để hoàn thành đoạn văn. Mỗi đoạn văn sẽ có 4 câu hỏi.</p>
								</div>
							</div>
						</div><!-- End Portfolio Item -->



						<div class="col-xl-4 col-md-6 portfolio-item filter-app">
							<div class="portfolio-wrap">
								<a href="assets/img/portfolio/app-3.webp" data-gallery="portfolio-gallery-app" class="glightbox"><img src="${pageContext.request.contextPath}/resources/file/images/portfolio/app-3.webp" class="img-fluid" alt=""></a>
								<div class="portfolio-info">
									<h4><a href="<%=request.getContextPath()%>/listening" title="More Details">Part 3: Short Conversations</a></h4>
									<p>Thí sinh sẽ nghe 1 lần duy nhất các đoạn hội thoại giữa 2 hoặc 3 người. Mỗi đoạn hội thoại sẽ có 3 câu hỏi, mỗi câu hỏi có 4 lựa chọn. Thí sinh đọc câu hỏi sau đó chọn câu trả lời phù hợp nhất. </p>
								</div>
							</div>
						</div><!-- End Portfolio Item -->

						<div class="col-xl-4 col-md-6 portfolio-item filter-product">
							<div class="portfolio-wrap">
								<a href="assets/img/portfolio/product-3.jpg" data-gallery="portfolio-gallery-app" class="glightbox"><img src="${pageContext.request.contextPath}/resources/file/images/portfolio/product-3.jpg" class="img-fluid" alt=""></a>
								<div class="portfolio-info">
									<h4><a href="<%=request.getContextPath()%>/reading" title="More Details">Part 3: Reading Comprehension</a></h4>
									<p>Thí sinh sẽ đọc các bài đọc hiểu sau đó chọn đáp án đúng nhất cho các câu hỏi. Mỗi bài đọc sẽ bao gồm 2 - 5 câu hỏi.</p>
								</div>
							</div>
						</div><!-- End Portfolio Item -->



						<div class="col-xl-4 col-md-6 portfolio-item filter-app">
							<div class="portfolio-wrap">
								<a href="assets/img/portfolio/part-4.webp" data-gallery="portfolio-gallery-app" class="glightbox"><img src="${pageContext.request.contextPath}/resources/file/images/portfolio/part-4.webp" class="img-fluid" alt=""></a>
								<div class="portfolio-info">
									<h4><a href="<%=request.getContextPath()%>/listening" title="More Details">Part 4: Short Talks</a></h4>
									<p>Thí sinh sẽ nghe 1 lần duy nhất các bài nói ngắn. Mỗi bài sẽ có 3 câu hỏi, mỗi câu hỏi có 4 lựa chọn. Thí sinh đọc câu hỏi sau đó chọn câu trả lời phù hợp nhất.</p>
								</div>
							</div>
						</div><!-- End Portfolio Item -->



					</div><!-- End Portfolio Container -->

				</div>

			</div>
		</section><!-- End Portfolio Section -->


		<!-- ======= Contact Section ======= -->
		<section id="contact" class="contact">
			<div class="container" data-aos="fade-up">

				<div class="section-header">
					<h2>Contact</h2>
					<p>Contact us
						To understand more about our Privacy Policy
						Access your information, or ask questions about our privacy practices or issue a complain
					</p>
				</div>

				<div class="row gx-lg-0 gy-4">

					<div class="col-lg-4">

						<div class="info-container d-flex flex-column align-items-center justify-content-center">
							<div class="info-item d-flex">
								<i class="bi bi-geo-alt flex-shrink-0"></i>
								<div>
									<h4>Location:</h4>
									<p>
										Số 45, Ngõ 192
										Kim Giang Hoàng Mai
										Hà Nội </p>
								</div>
							</div><!-- End Info Item -->

							<div class="info-item d-flex">
								<i class="bi bi-envelope flex-shrink-0"></i>
								<div>
									<h4>Email:</h4>
									<p>info@example.com</p>
								</div>
							</div><!-- End Info Item -->

							<div class="info-item d-flex">
								<i class="bi bi-phone flex-shrink-0"></i>
								<div>
									<h4>Call:</h4>
									<p>+1 5589 55488 55</p>
								</div>
							</div><!-- End Info Item -->

							<div class="info-item d-flex">
								<i class="bi bi-clock flex-shrink-0"></i>
								<div>
									<h4>Open Hours:</h4>
									<p>Mon-Sat: 11AM - 23PM</p>
								</div>
							</div><!-- End Info Item -->
						</div>

					</div>

					<div class="col-lg-8">
						<form action="forms/contact.php" method="post" role="form" class="php-email-form">
							<div class="row">
								<div class="col-md-6 form-group">
									<input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
								</div>
								<div class="col-md-6 form-group mt-3 mt-md-0">
									<input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
								</div>
							</div>
							<div class="form-group mt-3">
								<input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
							</div>
							<div class="form-group mt-3">
								<textarea class="form-control" name="message" rows="7" placeholder="Message" required></textarea>
							</div>
							<div class="my-3">
								<div class="loading">Loading</div>
								<div class="error-message"></div>
								<div class="sent-message">Your message has been sent. Thank you!</div>
							</div>
							<div class="text-center"><button type="submit">Send Message</button></div>
						</form>
					</div><!-- End Contact Form -->

				</div>

			</div>
		</section><!-- End Contact Section -->

	</main><!-- End #main -->

	<!--Footer
==========================-->
	<jsp:include page="include/footerHome.jsp"></jsp:include>
	<!--/.Footer-->

	<a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

	<div id="preloader"></div>


</body>
</html>