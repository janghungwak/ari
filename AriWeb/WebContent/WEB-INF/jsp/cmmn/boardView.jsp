<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>견적문의 상세조회</title>
<style type="text/css">
#bpassButton {
	margin-top: 0px;
	margin-bottom: 4px;
	margin-left: 5px;
	padding: 3px 15px;
}

.modal {
        text-align: center;
}
 
@media screen and (min-width: 300px) { 
        .modal:before {
                display: inline-block;
                vertical-align: middle;
                content: " ";
                height: 100%;
        }
}
 
.modal-dialog {
        display: inline-block;
        text-align: left;
        vertical-align: middle;
        width: 300px;
}
</style>
<script type="text/javascript">
 $(document).ready(function(){
	 var bsec = "${boardVO.bsec}";	 
	 var passMatch = "${passMatch}";
	 var adminVO = '${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.memberVO}';
	 if(adminVO == ''){
		 if(bsec == "Y"){
		 	if(passMatch == ""){
				 $('.wrapper').html('');
			 	location.href="/ari/board.do";
		 	}
	 	}
	 }
 })

 function board_updatePage(){
	 $('#bpassButton').attr('onClick', 'passChk("update")');
	 $('#mod').val('update');
	 $('#passChkModal').modal();
		/* $('#formAction').attr('action', '/ari/updateBoardPage.do');
		$('#formAction').submit(); */
 }

 function board_delete(){
	 $('#bpassButton').attr('onClick', 'passChk("delete")');
	 $('#mod').val('delete');
	 $('#passChkModal').modal();
	/*  if(confirm("삭제하시겠습니까?")){		 
		$('#formAction').attr('action', '/ari/deleteBoard.do');
		$('#formAction').submit();
	 } */
 }
 
 function board_fileDownload(fno){
	 var html = "<input type='hidden' name='fno' value='"+fno+"' />"
	 $('#formAction').append(html);
	 $('#formAction').attr('action', '/ari/downloadFile.do');
	 $('#formAction').submit();
	 $('#formAction').find('input[name=fno]').remove();
 }
 
 function board_reply(){
	 $('#formAction').attr('action', '/ari/boardReplyPage.do');
	 $('#formAction').submit();
 }
 
 function passChk(mod){
	$('#formAction').attr('action', '/ari/boardPassChk.do');
	$('#formAction').submit();
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
			<table class="table" style="table-layout: fixed;">
				<tbody>
					<tr>
						<th class="text-left" scope="row">제목</th>
						<td class="text-left" colspan="3"><c:out value="${boardVO.btitle }"/></td>
					</tr>
					<tr>
						<th class="text-left" scope="row">작성자</th>
						<td class="text-left"><c:out value="${boardVO.bwriter }"/></td>
						<th class="text-left" scope="row">등록일</th>
						<td class="text-left" colspan="2"><c:out value="${boardVO.bregdate }"/></td>
					</tr>
					<tr>
						<th class="text-left">첨부파일</th>
						<td class="text-left" colspan="4">
							<c:forEach items="${fileList }" var="file">
								<p style="padding: 3px 3px 3px 0px; margin-bottom: 0px">
									<a href="javascript:board_fileDownload(${file.fno });">${file.fname }(${file.fsize }Byte)</a>
								</p>
							</c:forEach>
						</td>
					</tr>
					<tr>
						<td class="text-left" colspan="5" style="border-bottom: 1px solid #ddd;">
						${boardVO.bcontent }
						</td>
					</tr>
				</tbody>
			</table>
			<form id="formAction" method="post">
				<input type="hidden" name="bno" value="${boardVO.bno }">
				<input type="hidden" name="mod" id="mod">
				<sec:csrfInput/>
				
			<div class="modal fade" id="passChkModal" role="dialog" style="width: auto;">
				<div class="modal-dialog">
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">×</button>
							<h4 class="modal-title">게시판 비밀번호 입력</h4>
						</div>
						<div class="modal-body">						
							<input type="text" name="bpass" id="bpass" style="width: 70%"/>	
							<button type="button" class="btn btn-primary" id="bpassButton">확인</button>					
						</div>
					</div>
				</div>
			</div> 
			</form>
			<a href="javascript:board_updatePage();" class="btn btn-primary pull-right binsert">수정</a>	
			<a href="javascript:board_delete();" class="btn btn-primary pull-right binsert">삭제</a>
			<sec:authorize access="hasRole('ROLE_ADMIN')">
			<a href="javascript:board_reply();" class="btn btn-primary pull-right binsert">답글</a>
			</sec:authorize>	
			<a href="/ari/board.do" class="btn btn-primary pull-right">목록</a>	
		</div>
	</div>
</body>
</html>