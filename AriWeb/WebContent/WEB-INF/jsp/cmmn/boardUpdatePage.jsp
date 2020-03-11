<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

var file_count=0;
$(document).ready(function(){
	file_count = parseInt($('#fileCnt').val());
})
function attachFile() {	
	file_count++;
	
	if(file_count > 5){
		alert("최대 첨부파일 수량은 5개 입니다.");
		return false;
	}
	
	var html = "<p><input type='file' name='file_"+file_count+"' id='file_"+file_count+"' class='pfile'/></p>"
	$('.fileInput').append(html);
	
}

function removeFile() {
	//var fileCnt = parseInt($('#fileCnt').val());
	//if(file_count > fileCnt){
		$('#file_'+file_count).parent().remove();
		//$('input').remove('#file_'+file_count);
		file_count--;
	//}
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
			<form id="updateform" action="/ari/updateBoard.do?bno=${boardVO.bno }&${_csrf.parameterName}=${_csrf.token}" method="POST" enctype="multipart/form-data">
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
			 			<th>첨부파일</th>
			 			<td><div class="fileButton"><a onclick="attachFile();">＋</a> <a onclick="removeFile();">－</a></div >
			 			<div class="fileInput">
			 			<c:set var="fileCnt" value="${fn:length(fileList)}" />
			 			<input type="hidden" id="fileCnt" name="fileCnt" value="${fileCnt }">	 
			 				<c:forEach items="${fileList }" var="file" varStatus="idx">
			 					<p><input type="hidden" name="IDX_${idx.count }" id="IDX" value="${file.fno }" />
			 					<a href="#this" name="name_${idx.count }" id="name_${idx.count }">${file.fname }</a>
			 			    	<input type="file" name="file_${idx.count }" id="file_${idx.count }" class='pfile'/></p>
			 				</c:forEach>		 
			 			</div></td>			 			
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