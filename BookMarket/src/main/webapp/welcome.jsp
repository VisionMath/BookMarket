<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="menu.jsp"%>
<html>
<head>
<title>Welcome</title>
</head>
<body>

	<%!String greeting = "도서 웹 쇼핑몰";
	String tagline = "도서 웹 쇼핑몰에 오신 것을 환영합니다.";%>
	<div class="jumbotron baeumbig">
		<div class="container">
			<p class="text-center">
				<%=greeting%>
			</p>
		</div>
	</div>
	<div class="container daum">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>
		</div>
		<hr>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>