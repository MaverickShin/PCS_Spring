<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="col-md-6" style="font-family: 'Do Hyeon', sans-serif;">
	<form action="modifyTrainingReviewAction" method="POST" id="contactForm" name="contactForm"
        class="contactForm" enctype="multipart/form-data">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
        <s:csrfInput/>
        <input type="hidden" name="TG_CD" value="${dto.TG_CD}">
        <div class="row">
           <div class="col-md-6">
              <div class="form-group">
                 <label class="label" for="TG_GRADE" style="font-size:20px;">평점</label> 
                 <input type="number" class="form-control" name="TG_GRADE" id="TG_GRADE" step="0.5" max="5" min="0" value="${dto.TG_GRADE}">
              </div>
           </div>
           <div class="col-md-6">
              <div class="form-group">
                 <label class="label" for="TG_CON" style="font-size:20px;">후기글</label> <input
                    type="text" class="form-control" name="TG_CON" id="TG_CON" value="${dto.TG_CON}">
              </div>
           </div>
           <div class="col-md-6">
              <div class="form-group">
                 <label class="label" for="TG_IMG" style="font-size:20px;">사진 첨부</label> 
                 <img alt="프로필 사진" src="${dto.getTG_IMG()}" height="100px" width="100px">
                 <input type="file" class="form-control" name="TG_IMG" id="TG_IMG" value="${dto.TG_IMG}" accept="${imgPath}/*">
              </div>
           </div>
             
           <div class="col-md-12">
              <div class="form-group" align="center">
                 <input type="submit" value="수정하기" 
                    class="btn btn-primary">
                 <div class="submitting"></div>
              </div>
           </div>
           
        </div>
     </form>
</div>
</body>
</html>