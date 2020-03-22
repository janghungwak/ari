<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>견적 문의 입력</title>
<script type="text/javascript">
function board_insert(){
	var bsecchk = $('#bsecchk').is(':checked');
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
	
	if(bsecchk == true){
		$('#bsec').val('Y');
	}else{
		$('#bsec').val('N');
	} 

	if(confirm('등록하시겠습니까?')){
		oEditors.getById["bcontent"].exec("UPDATE_CONTENTS_FIELD", []);
		$('#insertform').submit();
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
	if(file_count > 0){
		$('#file_'+file_count).parent().remove();
		//$('input').remove('#file_'+file_count);
		file_count--;
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
		<div class="table_content" style="table-layout: fixed;">
			<form id="insertform" action="/ari/insertBoard.do?${_csrf.parameterName}=${_csrf.token}" method="POST" enctype="multipart/form-data">
			 <table class="table">
			 	<tbody>
			 		<tr>
			 			<th class="text-left">제목</th>
			 			<td class="text-left"><input type="text" name="btitle" id="btitle"/></td>
			 		</tr>
			 		<tr>
			 			<th class="text-left">작성자</th>
			 			<td class="text-left"><input type="text" name="bwriter" id="bwriter"/>
			 			<p style="padding : 3px 3px 3px 3px; margin-bottom: 0px; display: inline-block;">
			 				<span><input type="checkbox" id="bsecchk"/>비밀글</span>
			 			</p>
			 			<input type="hidden" name="bsec" id="bsec">
			 			</td>
			 		</tr>
			 		<tr>
			 		<td colspan="2">
			 		<textarea rows="10" cols="100" name="bcontent" id="bcontent" style="width: 100%; min-width:260px; height: 300px; display: none;"></textarea> 
			 		<script type="text/javascript">
			 		var oEditors = [];
			 			oAppRef: oEditors,
			 			nhn.husky.EZCreator.createInIFrame({
			 				oAppRef : oEditors,
			 				elPlaceHolder : "bcontent",
			 				sSkinURI : "../../../smarteditor/SmartEditor2Skin.html",
			 			    fCreator: "createSEditor2"		 				
			 			});
			 		</script>
			 		</td>
			 		</tr>
			 		<tr>
			 			<th class="text-left">첨부파일</th>
			 			<td class="text-left"><div class="fileButton"><a onclick="attachFile();" style="cursor: default;">＋</a> <a onclick="removeFile();" style="cursor: default;">－</a></div ><div class="fileInput"></div></td>			 			
			 		</tr>
			 		<tr>
			 			<th class="text-left">비밀번호</th>
			 			<td class="text-left"><input type="password" name="bpass" id="bpass"/></td>
			 		</tr>
			 	</tbody>
			 </table>
			 <a href="javascript:board_insert();" class="btn btn-primary pull-right binsert">등록</a>	
			 <a href="javascript:history.back(-1);" class="btn btn-primary pull-right">취소</a>			 
			</form>
		</div>
	</div>
</body>
</html>