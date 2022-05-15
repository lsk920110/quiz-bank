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
	문제 등록
	<div>
		번호
		<input type="number" min="1" max="100" name="index"/>
		<br/>
		<select></select>
		<select></select>
		
		내용
		<textarea name="content"></textarea>
		<br/>
		해설
		<textarea name="explation"></textarea>
		
		<ol>
			<li><input type="radio" name="answer" value="1"/><input type="text" name="option1"/></li>
			<li><input type="radio" name="answer" value="2"/><input type="text" name="option2" /></li>
			<li><input type="radio" name="answer" value="3"/><input type="text" name="option3" /></li>
			<li><input type="radio" name="answer" value="4"/><input type="text" name="option4" /></li>
		</ol>
		
		<input type="button" value="save"/>
	
	</div>
</div>


<script>
$('input[value="save"]').click(function(){
	alert('save!');
	$content = $('textarea[name="content"]').val();
	$explation = $('textarea[name="explation"]').val();
	$answer = $('input[name="answer"]').val();
	$option1 = $('input[name="option1"]').val();
	$option2 = $('input[name="option1"]').val();
	$option3 = $('input[name="option1"]').val();
	$option4 = $('input[name="option1"]').val();
	console.log($content + $explation );
	params = {
		'test_seq' : 0,
		'test_category_seq' : 0,
		'subject_category_seq' : 0,
		'quiz_index' : 0,
		'quiz_content' : $content,
		'quiz_explation' : $explation,
		'quiz_point' : 1,
		'quiz_answer' : $answer,
		'option1' : $option1,
		'option2' : $option2,
		'option3' : $option3,
		'option4' : $option4
	}
	console.log(params);
	
	
	$.ajax({
		url : 'registQuiz',
		data : JSON.stringify(params),
		type : 'post',
		contentType: "application/json; charset=utf-8",
		dataType : 'json',
		success : function(data){
			console.log(data);
		},
		error : function(e){console.log(e);}
		
	});

	
});


</script>

</body>
</html>
