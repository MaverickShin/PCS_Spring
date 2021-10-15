<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
</script>

<style>

.bigs {
	width: 250px;
	height: 250px;
	align: center;
	margin-top: 20px;
	margin: auto;
}

.bigs td {
	width: 400px;
	height: 400px;
	color: black !important;
}

.bigs td img {
	width: 400px;
	height: 270px;
}

.tds a{
	display:block;
	position:relative;
	color: #2C3E50;
	margin-top: 30px;
	margin-bottom: 30px;
	font-size: 16px;
	font-weight: bolder;
	text-align: center;
}

.tds a:hover {
	font-size: 18px;
	font-weight: bold;
}

.ntcs a span {
	display:block;
	position:absolute;
	top: 300px;
	width: 100%;
}

</style>
</head>

<body>
	<table class= "bigs">
		<tbody>
			<c:forEach var = "i" items="${title}">
				<tr> 
					<td class= "tds">
						${i}	
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>