<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp"%>
<jsp:include page="menu.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 목록</title>
</head>
<body>

	<div class="jumbotron baeumbig">
		<div class="container">
			<p class="display-3">도서목록</p>
		</div>
	</div>
	<div class="container daum">
		<div class="row" align="left">
			<%
			String sql = "select * from book";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
			%>
			<div class="col-md-2">
				<img src="./resources/images/<%=rs.getString("b_fileName")%>"
					style="width: 75%">
			</div>
			<div class="col-md-7">
				<h3><%="[" + rs.getString("b_category") + "] " + rs.getString("b_name")%></h3>
				<%
				String str = rs.getString("b_description");
				if (str.length() > 100)
					out.println(str.substring(0, 100) + "...");
				else out.println(str);
				%>
				<%-- <p><%=rs.getString("b_description").substring(0, 100)%>... --%>
				<p><%=rs.getString("b_author") + " | " + rs.getString("b_publisher") + " | " + rs.getString("b_unitPrice")%>원
			</div>
			<div class="col-md-3 align-self-center">
				<p>
					<a href="./book.jsp?id=<%=rs.getString("b_id")%>"
						class="btn btn-secondary" role="button"> 상세 정보 &raquo;</a>
			</div>
			<div class="col-md-12">
				<hr>
			</div>
			<%
			}
			%>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>