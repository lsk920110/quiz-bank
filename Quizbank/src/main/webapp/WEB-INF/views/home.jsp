<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>Home</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.0.slim.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>



<style>
	

</style>

<body>
<!-- 
1.문제등록
2.시험-과목 등록
3.풀기
4.수정
5.삭제
 -->

<div>
	<a href="registQuizPage">문제 등록</a>
	<div>
		<textarea>
		</textarea>
	</div>
</div>

<h5>문제 등록</h5>
<table class="table table-hover">
	<tr>
		<th>번호</th>
		<th>내용</th>
		<th>해설</th>
		<th>문제유형</th>
		<th>보기1</th>
		<th>보기2</th>
		<th>보기3</th>
		<th>보기4</th>
		<th>보기5</th>
		<th>답</th>
	</tr>
	<tr>
		<th><input type="number"/></th>
		<th><input type="text"/></th>
		<th><input type="text"/></th>
		<th><select id="type">
			<option value="0">선택하세요</option>
			<option value="1">주관식</option>
			<option value="2">2지선다</option>
			<option value="3">3지선다</option>
			<option value="4">4지선다</option>
			<option value="5">5지선다</option>
		</select></th>
		<th><input class="option 1" type="text"/></th>
		<th><input class="option 2" type="text"/></th>
		<th><input class="option 3" type="text"/></th>
		<th><input class="option 4" type="text"/></th>
		<th><input class="option 5" type="text"/></th>
		<th><select id="answer"></select></th>
	</tr>
</table>
<script>
$('#type').change(function(){
	var num = this.value;
	var option = $('.option');
	console.log(option);
	for (var i = 5; i > num; i--) {
		$('.option.'+i).attr('disabled',true);
		$('.option.'+i).val('');
	}
	for (var i = 1; i <= num; i++) {
		$('.option.'+i).attr('disabled',false);
	}
	var txt = '';
	for (var i = 1; i <= num; i++) {
		txt += '<option value="'+i+'">보기'+i+'</option>';		
	}

	
	$('#answer').empty();	
	$('#answer').append(txt);
	
});


</script>

</body>
</html>
