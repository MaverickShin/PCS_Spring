<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* .title {
	font-size: 20pt;
	height: 60px;
	margin-bottom: 10px;
}

table tr {
	text-align: center;
}

table tr td {
	will-change: transform;
	transform : translate3d(0px, 0px, 0px);
}

.big {
	width: 80%;
	margin: auto;
	align: center;
	margin-top: 20px;
	border-radius: 15px;
}

.seongbukNews1, .seongbukNews2 {
	width: 100%;
}

.seongbukNews1 tr, .seongbukNews2 tr {
	height: 50px;
}
/* div {
	text-align: center;
} */
/*.seongbukNews1 tr, .seongbukNews1 td, .seongbukNews2 tr, .seongbukNews2 td
	{
	border-collapse: separate;
	border-spacing: 1px;
	border: 3px solid #ccc;
} */
</style>
</head>

<body>
	<table class=big border="1">
		<thead>
			<tr>
				<th colspan="3" style="text-align:center">NEWS LETTER</th>
			</tr>
		</thead>
		<tbody>

			<!-- 제목 불러오는 공간 추가 - 21.09.23 -->
			<c:forEach var="i" items="${item}">
				<tr>
					<td>
					${i}<br>
					</td>
					<%-- <td>${i}</td> --%>
				</tr>
			</c:forEach>
			
		</tbody>
	</table>
</body>
</html>