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
function board_replyInsert(){
	var bsecchk = $('#bsecchk').is(':checked');
	var btitle = $('#btitle').val();
	var bwriter = $('#bwriter').val();
	
	if(btitle==""){
		alert('제목을 입력해주세요.');
		return;
	}
	
	if(bwriter==""){
		alert('작성자를 입력해주세요.');
		return;
	}
	
	if(bsecchk == true){
		$('#bsec').val('Y');
	}else{
		$('#bsec').val('N');
	} 
	
	if(confirm('등록하시겠습니까?')){
		oEditors.getById["bcontent"].exec("UPDATE_CONTENTS_FIELD", []);
		$('#insertReplyform').submit();
	}
}

var file_count=0;
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
		$('#file_'+file_count).parent().remove();
		file_count--;
}

function boardView() {
	$('#insertReplyform').attr('action', '/ari/board/boardView.do');
	$('#insertReplyform').attr('enctype', '');
	$('#insertReplyform').submit();
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
			<form id="insertReplyform" action="/ari/board/insertReplyBoard.do?${_csrf.parameterName}=${_csrf.token}" method="POST" enctype="multipart/form-data">
			 <table class="table">
			 	<tbody>
			 		<tr>
			 			<th>제목</th>
			 			<td class="board-textLf"><input type="text" name="btitle" id="btitle" value="[RE]:${boardVO.btitle }" style="width: 50%;"/></td>
			 		</tr>
			 		<tr>
			 			<th>작성자</th>
			 			<td class="board-textLf"><input type="text" name="bwriter" id="bwriter" value='<sec:authentication property="Principal.memberVO.name"/>'/>
			 			<p style="padding : 3px 3px 3px 3px; margin-bottom: 0px; display: inline-block;">
			 				<span><input type="checkbox" id="bsecchk" <c:if test="${boardVO.bsec eq 'Y' }">checked</c:if>/>비밀글</span>
			 			</p>
			 			<input type="hidden" name="bsec" id="bsec">
			 			</td>
			 		</tr>
			 		<tr>
			 			<th style="border-bottom: 1px solid #ddd;">내용</th>
				 		<td>
				 			<textarea rows="10" cols="100" name="bcontent" id="bcontent" style="width: 100%; min-width:260px; height: 300px; display: none;">
				 				<br>------${boardVO.bwriter }님의 글------<br>
				 					${boardVO.bcontent }
			 				</textarea> 
			 				<script type="text/javascript">
				 				var oEditors = [];			 			
				 				nhn.husky.EZCreator.createInIFrame({
				 					oAppRef : oEditors,
				 					elPlaceHolder : "bcontent",
					 				sSkinURI : "../../../smarteditor/SmartEditor2Skin.html",
					 				fOnAppLoad : function(){
					 					//커서위치를 최상단으로 포커싱
					 					var oSelection = oEditors.getById["bcontent"].getEmptySelection();
					 					oSelection.selectNodeContents(oEditors.getById["bcontent"].getWYSIWYGDocument().body);
					 					oSelection.collapseToStart();
					 					oSelection.select();
					 					oEditors.getById["bcontent"].exec("FOCUS");
				 					},
				 			    	fCreator: "createSEditor2"		 				
				 				});
				 			</script>
				 		</td>
			 		</tr>
			 		<tr>
			 			<th>첨부파일</th>
			 			<td class="board-textLf"><div class="fileButton"><a onclick="attachFile();" style="cursor: default;">＋</a> <a onclick="removeFile();" style="cursor: default;">－</a><div class="fileInput"></div></div>		 			
			 		</tr>
			 		<tr>
			 			<th>비밀번호</th>
			 			<td class="board-textLf"><input type="text" name="bpass" id="bpass" value="${boardVO.bpass }" disabled="disabled"/></td>
			 		</tr>
			 	</tbody>
			 </table>
			 <input type="text" name="bno" value="${boardVO.bno }">
			 <input type="text" name="orginlBno" value="${boardVO.bno }">		
			 <input type="hidden" name="bnoreref" value="${boardVO.bnoreref }">
			 <input type="hidden" name="bnorelev" value="${boardVO.bnorelev }">
			 <input type="hidden" name="bnoreseq" value="${boardVO.bnoreseq }">			 
			 <input type="hidden" name="bpass" value="${boardVO.bpass }">		
			 <sec:csrfInput/>
			 <a href="javascript:board_replyInsert();" class="btn btn-primary pull-right binsert">등록</a>	
			 <a href="javascript:boardView();" class="btn btn-primary pull-right">취소</a>			 
			</form>
		</div>
	</div>
</body>
</html>