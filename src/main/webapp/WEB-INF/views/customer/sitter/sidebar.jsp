<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(function(){ // document ready
	   if ($('.list_div1').length) { // make sure ".list_div1" element exists
	      var el = $('.list_div1');
	      var stickyTop = $('.list_div1').offset().top; // returns number
	      var stickyHeight = $('.list_div1').height();

	      $(window).scroll(function(){ // scroll event
	          var limit = $('footer').offset().top - stickyHeight - 20;

	          var windowTop = $(window).scrollTop(); // returns number

	          if (stickyTop < windowTop){
	             el.css({ position: 'fixed', top: 100 });
	          }
	          else {
	             el.css('position','absolute');
	             el.css("top", "60px");
	          }

	          if (limit < windowTop) {
	          	var diff = limit - windowTop;
	          	el.css({top: diff});
	          }
	        });
	   }
	});
</script>
</head>
<body>

		<nav class ="list_nav1" style="width: 400px; padding: 100px; min-height:700px">
			<div class = "list_div1" id = "list_div_id1" style = "margin-bottom:150px;">
				<table class = "list_tb1">
					<tr>
						<th><strong>고객</strong></th>
					</tr>
					
					<tr>
						<td><a href="/tpj/sitter/sitter">펫시터 찾기</a></td>
					</tr>
					
					<tr>
						<td><a href="/tpj/sitter/MysitterSerList">이용 내역</a></td>
					</tr>
					
					<tr>
						<td><a href="/tpj/sitter/MyreviewList">나의 리뷰 관리</a></td>
					</tr>	
					
					<tr>
						<td><a href="/tpj/sitter/feeInfo">요금안내</a></td>
					</tr>
					<tr>
						<td style = "background-color: white; color:#00bd56; font-size: 24px;"><strong>펫 시터</strong></td>
					</tr>
					
					<tr>
						<td><a href="/tpj/sitter/applySitter">펫 시터 지원</a></td>
					</tr>
					
					<tr>
						<td style = "margin-bottom:20px;"><a href="/tpj/sitter/requestForSitter">나에게 온 의뢰</a></td>
					</tr>
				</table>
			</div>
		</nav>


</body>
</html>