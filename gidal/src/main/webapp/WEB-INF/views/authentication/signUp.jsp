<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>기달</title>

<%@ include file = "/WEB-INF/views/include/head.jsp" %>

</head>
<body>

<%@ include file = "/WEB-INF/views/include/nav.jsp" %>

	<div style="max-width: 1000px; margin-right: auto; margin-left: auto;">
		<div class="jumbotron">
			<h1>회원가입</h1>

			<hr class="my-4">
			<!-- <p class="lead">This is a simple hero unit, a simple
			jumbotron-style component for calling extra attention to featured
			content or information.</p>
		<p>It uses utility classes for typography and spacing to space
			content out within the larger container.</p>
		<p class="lead">
			<a class="btn btn-primary btn-lg" href="#" role="button">Learn
				more</a>
		</p> -->

			<div class="form-group" style = "max-width : 400px; margin : auto;">
				<p>
					<a href="/user/individual" style = "text-decoration : none">
						<button type="button" class="btn btn-primary btn-lg btn-block">
							개인회원</button>
					</a>
				</p>
				<p>
					<a href="/enterprise/enterprise" style = "text-decoration : none">
						<button type="button" class="btn btn-primary btn-lg btn-block">
							기업회원</button>
					</a>
				</p>
			</div>

		</div>

	</div>

</body>
</html>