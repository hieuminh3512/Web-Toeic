<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


	<article class="blog-details">
		<!-- /. PAGE TITLE-->
		<div id="resultsearchGrammar">
			<div class="row">

				<div class="span9">
					<c:if test="${fn:length(listData) == 0 }">
						<h3>Không tìm thấy dữ liệu</h3>
					</c:if>

					<c:forEach items="${listData}" var="list" varStatus="loop">
						<div class="span9">
							<div class="span3">
								<img class="post-img"
									 src="${pageContext.request.contextPath}/resources/file/images/grammar/${list.anhbaigrammar}" />

							</div>
							<div class="span1"></div>

							<div class="span5">
								<div class="title">
									<h4>${list.tenbaigrammar}</h4>
								</div>
								<div>
									<a
											href=" <c:url value="/detailGram?idGram=${list.baigrammarid}"/>  "
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


