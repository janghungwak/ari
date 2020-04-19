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

function boardView() {
	$('#updateform').attr('action', '/ari/boardView.do');
	$('#updateform').attr('enctype', '');
	$('#updateform').submit();
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
		<div class="table_content" style="table-layout: fixed;">
			<form id="updateform" action="/ari/updateBoard.do?${_csrf.parameterName}=${_csrf.token}" method="POST" enctype="multipart/form-data">
			 <table class="table">
			 	<tbody>
			 		<tr>
			 			<th class="text-left">제목</th>
			 			<td class="text-left"><input type="text" name="btitle" id="btitle" value="${boardVO.btitle }"/></td>
			 		</tr>
			 		<tr>
			 			<th class="text-left">작성자</th>
			 			<td class="text-left"><input type="text" name="bwriter" id="bwriter" value="${boardVO.bwriter }"/> 
						<p style="padding : 3px 3px 3px 3px; margin-bottom: 0px; display: inline-block;">
			 				<span><input type="checkbox" id="bsecchk" <c:if test="${boardVO.bsec eq 'Y' }">checked</c:if>/>비밀글</span>
			 			</p>
			 			<input type="hidden" name="bsec" id="bsec" value="${boardVO.bsec}">
						</td>
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
			 			<th class="text-left">첨부파일</th>
			 			<td class="text-left"><div class="fileButton"><a onclick="attachFile();" style="cursor: default;">＋</a> <a onclick="removeFile();" style="cursor: default;">－</a></div >
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
			 			<th class="text-left">비밀번호</th>
			 			<td class="text-left"><input type="password" name="bpass" id="bpass" value="${boardVO.bpass }"/></td>
			 		</tr>
			 	</tbody>
			 </table>
			 <input type="hidden" name="bno" value="${boardVO.bno }">			 
			 <sec:csrfInput/>
			 <a href="javascript:board_update();" class="btn btn-primary pull-right binsert">수정</a>	
			 <a href="javascript:boardView();" class="btn btn-primary pull-right">취소</a>			 
			</form>
		</div>
	</div>
</body>
</html>