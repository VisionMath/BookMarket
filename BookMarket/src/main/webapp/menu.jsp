<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>BookMarket</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<link rel="stylesheet" href="./resources/css/style.css" />
<style>
@font-face {
	font-family: 'WooridaumB';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/WooridaumB.woff2')
		format('woff2');
	font-weight: 700;
	font-style: normal;
}

@font-face {
	font-family: 'EliceDigitalBaeum_Bold';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_220508@1.0/EliceDigitalBaeum_Bold.woff2')
		format('woff2');
	font-weight: 700;
	font-style: normal;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-xl bg-info navbar-dark daum">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="./welcome.jsp"><i
					class="fa fa-home" style="font-size: 30px"></i></a>
			</div>
			<div>
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="navbar-brand"
						href="./books.jsp">도서목록</a></li>
					<li class="nav-item"><a class="navbar-brand"
						href="./addBook.jsp">도서등록</a></li>
					<li class="nav-item"><a class="navbar-brand"
						href="./editBook.jsp?edit=update">도서수정</a></li>
					<li class="nav-item"><a class="navbar-brand"
						href="./editBook.jsp?edit=delete">도서삭제</a></li>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>