<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>견적 문의 수정</title>
<script type="text/javascript">

function board_update(){
	var btitle = $('#btitle').val();
	var bwriter = $('#bwriter').val();
	var bpass = $('#bpass').val();
	
	if(btitle==""){
		alert('제목을 입력해주세요.');
		return;
	}
	
	if(bwriter==""){
		alert('작성자를 입력해주세요.');
		return;
	}
	
	if(bpass==""){
		alert('비밀번호를 입력해주세요');
		return;
	}
	
	if(confirm('수정하시겠습니까?')){
		oEditors.getById["bcontent"].exec("UPDATE_CONTENTS_FIELD", []);
		$('#updateform').submit();
	}
}

</script>
</head>
<body>
	<div class="wrapper">
		<div id="subTitle">
			<h3 class="subtitle">
				견적 문의
				<span class="smalltitle">
				견적 문의에 <span class="mo">친절히 상담해드립니다.</span>
				</span>
			</h3>
		</div>
		<div class="table_content">
			<form id="updateform" action="/ari/updateBoard.do" method="POST">
			 <table class="table">
			 	<tbody>
			 		<tr>
			 			<th>제목</th>
			 			<td><input type="text" name="btitle" id="btitle" value="${boardVO.btitle }"/></td>
			 		</tr>
			 		<tr>
			 			<th>작성자</th>
			 			<td><input type="text" name="bwriter" id="bwriter" value="${boardVO.bwriter }"/> <span><input type="checkbox"/>비밀글</span></td>
			 		</tr>
			 		<tr>
			 		<td colspan="2">
			 		<textarea rows="10" cols="100" name="bcontent" id="bcontent" style="width: 100%; min-width:260px; height: 300px; display: none;">${boardVO.bcontent }</textarea> 
			 		<script type="text/javascript">
			 			var oEditors = [];			 			
			 			nhn.husky.EZCreator.createInIFrame({
			 				oAppRef : oEditors,
			 				elPlaceHolder : "bcontent",
			 				sSkinURI : "../../../smarteditor/SmartEditor2Skin.html",
			 				fOnAppLoad : function(){
			 					//oEditors.getById["bcontent"].exec("SET_IR",['']);
			 				},
			 			    fCreator: "createSEditor2"		 				
			 			});
			 		</script>
			 		</td>
			 		</tr>
			 		<tr>
			 			<th>비밀번호</th>
			 			<td><input type="text" name="bpass" id="bpass"/></td>
			 		</tr>
			 	</tbody>
			 </table>
			 <input type="hidden" name="bno" value="${boardVO.bno }">			 
			 <sec:csrfInput/>
			 <a href="javascript:board_update();" class="btn btn-primary pull-right binsert">수정</a>	
			 <a href="javascript:history.back(-1);" class="btn btn-primary pull-right">취소</a>			 
			</form>
		</div>
	</div>
</body>
</html>