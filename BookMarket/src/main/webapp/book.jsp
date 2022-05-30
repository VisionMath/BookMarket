<%@ page contentType="text/html; charset=utf-8"%>
<%@ page errorPage="exceptionNoBookId.jsp"%>
<jsp:include page="menu.jsp" />
<%@ include file="dbconn.jsp"%>
<html>
<head>
<title>도서 상세 정보</title>
<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>
</head>
<body>

	<div class="jumbotron baeumbig">
		<div class="container">
			<h1 class="display-3">도서 정보</h1>
		</div>
	</div>
	<%
	String id = request.getParameter("id");

	String sql = "select * from book where b_id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();
	while (rs.next()) {
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="./resources/images/<%=rs.getString("b_fileName")%>"
					style="width: 90%" />
			</div>
			<div class="col-md-6">
				<h3><%=rs.getString("b_name")%></h3>
				<p><%=rs.getString("b_description")%>
				<p>
					<b>도서 코드 : </b><span class="badge badge-danger"> <%=rs.getString("b_id")%></span>
				<p>
					<b>출판사</b> :
					<%=rs.getString("b_publisher")%>
				<p>
					<b>분류</b> :
					<%=rs.getString("b_category")%>
				<p>
					<b>재고 수</b> :
					<%=rs.getString("b_unitsInStock")%>
				<h4><%=rs.getString("b_unitPrice")%>원
				</h4>
				<p>
				<form name="addForm"
					action="./addCart.jsp?id=<%=rs.getString("b_id")%>" method="post">
					<a href="#" class="btn btn-info" onclick="addToCart()"> 도서 주문
						&raquo;</a> <a href="./cart.jsp" class="btn btn-info"> 장바구니
						&raquo;</a> <a href="./books.jsp" class="btn btn-secondary"> 도서 목록
						&raquo;</a>
				</form>
			</div>
		</div>
		<hr>
	</div>

	<%
	}

	if (rs != null)
	rs.close();
	if (pstmt != null)
	pstmt.close();
	if (conn != null)
	conn.close();
	%>
	<jsp:include page="footer.jsp" />
</body>
</html>
