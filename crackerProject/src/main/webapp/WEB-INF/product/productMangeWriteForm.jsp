<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="productMangeWriteForm" method="post">
	<div>
		<span>상품명</span>
		<select name="productCategory">
			<option value="밀키트">밀키트</option>
			<option value="냉동음식">냉동음식</option>
			<option value="고기">고기</option>
			<option value="생선">생선</option>
			<option value="채소">채소</option>
		</select>
		<input type="text" name="productName"/>	
	</div>
	
	
	<div>
		<span>제목</span>
		
		<input type="text" name="productSubject"/>	
	</div>
	<div>
		<span>메인사진</span><input type="file" name="mainPhoto" id="mainPhoto"/>	
	</div>
	<div style='width: 300px; height: auto; border: solid red 1px;'>
		<img id="showMainPhoto" src="#" alt="이미지 미리보기" style="width:100%; height: 100%;">
	</div>
	<div>
		<span>내용</span><textarea id="productContent1" name="productContent1" ></textarea>
	</div>
	<div>
		<span>가격</span><input type="text" name="productPrice"/>	
	</div>
	<div>
		<span>수량</span><input type="text" name="productQty"/>	
	</div>
	<div>
		<span>원산지</span><input type="text" name="productOrigin"/>	
	</div>
	<div>
		<span>중량</span><input type="text" name="productWeight"/>	
	</div>
	<div>
		<span>유통기한</span><input type="text" name="productLife"/>	
	</div>
	<input type="hidden" id="productContent" name="productContent">
	<button type="button" id="productMangeWriteFormBtn">작성하기</button>
</form>
<script type="text/javascript"
		src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../js/product/productWrite.js"></script>
<script type="text/javascript" src="../js/info/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
		// 글쓰기 editor 및 사진 업로드 기능
		CKEDITOR.replace('productContent1', {
			filebrowserUploadUrl : '/index/board/imageUpload'
		});
</script>
</body>
</html>