<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>

<title>Insert title here</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.0.slim.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<body>
	<div>
		시험종류등록<br/>
		<select id=""></select><br/>
		<input type="text" id="testCateSaveText"/>
		<input type="button" value="저장" id="testCateSaveBtn"/>
		
		<br/>
		과목등록<br/>
		<select></select>
		<br/>
		<input type="text" id="subjectCateSaveText"/>
		<input type="button" value="저장" id="subjectCateSaveBtn"/>
		
	</div>
	<br/>
	<hr/>
	<div>
		<select>
		
		</select>
		<br/>
		시험<input type="number"/>
		<br/>
		연도<input type="number"/>
		<br/>
		회차<input type="number"/>
				
	</div>	
	


<script>
$('#testCateSaveBtn').click(function(){
	$testCateSaveText = $('#testCateSaveText').val();
	 
	params = {
		'test_category' : $testCateSaveText
	}
	$.ajax({
		url : 'registTestCategory',
		type : 'post',
		data : JSON.stringify(params),
		dataType : 'json',
		contentType : 'application/json; charset=UTF-8',
		success : function(data){console.log(data);},
		error : function(e){console.log(e);}		
	});
	
});

$('')






</script>

</body>






</html>