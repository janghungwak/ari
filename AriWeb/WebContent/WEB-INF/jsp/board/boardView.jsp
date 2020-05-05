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
<script type="text/javascript">
 $(document).ready(function(){
	 var bsec = "${boardVO.bsec}";	 
	 var passMatch = "${passMatch}";
	 var adminVO = '${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.memberVO}';
	 if(adminVO == ''){
		 if(bsec == "Y"){
		 	if(passMatch == ""){
				 $('.wrapper').html('');
			 	location.href="/ari/board/board.do";
		 	}
	 	}
	 }
 })

 /* 일반 사용자에 대한 수정, 삭제 페이지 이동 */
 function board_movePage(chkValue){
	 
	 $('#anonymousModal').find('h5').remove();
	 
	 $('#bpassButton').attr('onClick', 'passChk("'+chkValue+'")');
	 $('#mod').val(chkValue);
	 
	 var pageNm = "";
	 var msg = ""; 
	 
	 if(chkValue == 'update'){
		 pageNm = '수정';
	 }else if(chkValue == 'delete'){
		 pageNm = '삭제';
	 }
	 msg = "<h5>견적문의에 답글이 있는 경우에는 게시글을 "+ pageNm +" 하실 수 없습니다.</h5>";
	 
	 $('#anonymousModal').prepend(msg);
	 
	 $('#passChkModal').modal();
 }

 /* 관리자에 대한 수정, 삭제 페이지 이동 */
 function board_adminMovePage(chkValue){
	 
	 $('#bpassButton').attr('onClick', 'passChk("'+chkValue+'")');
	 $('#mod').val(chkValue);
	 
	 /* 수정인 경우에는 별도  모달처리를 하지 않고 바로 passchk Controller로 넘어가서 수정화면으로 이동한다.*/
	 if(chkValue == 'update'){
		$('#formAction').attr('action', '/ari/board/boardPassChk.do');
		$('#formAction').submit();
		 
	 }else{
		 $('#passChkModal').modal();	 
	 }
 }
 
 function board_fileDownload(fno){
	 var html = "<input type='hidden' name='fno' value='"+fno+"' />"
	 $('#formAction').append(html);
	 $('#formAction').attr('action', '/ari/board/downloadFile.do');
	 $('#formAction').submit();
	 $('#formAction').find('input[name=fno]').remove();
 }
 
 function board_reply(){
	 $('#formAction').attr('action', '/ari/board/boardReplyPage.do');
	 $('#formAction').submit();
 }
 
 function passChk(mod){
	 
	$('#formAction').attr('action', '/ari/board/boardPassChk.do');
	$('#formAction').submit();
 }
 
 function closeModal(){
	 $('.modal').modal("hide");
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
						<th class="board-textLf" scope="row">제목</th>
						<td class="board-textLf" colspan="3"><c:out value="${boardVO.btitle }"/></td>
					</tr>
					<tr>
						<th class="board-textLf" scope="row">작성자</th>
						<td class="board-textLf"><c:out value="${boardVO.bwriter }"/></td>
						<th class="board-textLf" scope="row">등록일</th>
						<td class="board-textLf" colspan="2"><c:out value="${boardVO.bregdate }"/></td>
					</tr>
					<tr>
						<th class="board-textLf">첨부파일</th>
						<td class="board-textLf" colspan="4">
							<c:forEach items="${fileList }" var="file">
								<p style="padding: 3px 3px 3px 0px; margin-bottom: 0px">
									<a href="javascript:board_fileDownload(${file.fno });">${file.fname }(${file.fsize }Byte)</a>
								</p>
							</c:forEach>
						</td>
					</tr>
					<tr>
						<th class="board-textLf" style="border-bottom: 1px solid #ddd;">내용</th>
						<td class="board-textLf" colspan="4" style="border-bottom: 1px solid #ddd;">
						${boardVO.bcontent }
						</td>
					</tr>
				</tbody>
			</table>
			<form id="formAction" method="post">
				<input type="hidden" name="bno" value="${boardVO.bno }">
				<input type="hidden" name="bpass" value="${boardVO.bpass }">
				<input type="hidden" name="bnoreref" value="${boardVO.bnoreref }">
				<input type="hidden" name="bnorelev" value="${boardVO.bnorelev }">
				<input type="hidden" name="mod" id="mod">
				<sec:csrfInput/>
				
				<div class="modal fade" id="passChkModal" role="dialog" style="width: auto;">
					<sec:authorize access="isAnonymous()">
						<c:choose>
							<c:when test="${boardReplyCnt > 0}">
								<div class="modal-dialog">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-body" id="anonymousModal">						
											<div class="modalBtn"> 
												<button type="button" class="btn btn-primary" onclick="closeModal();">확인</button>
											</div>
										</div>
									</div>
								</div>
							</c:when>
							<c:otherwise>
								<div class="modal-dialog">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">×</button>
											<h4 class="modal-title">게시판 비밀번호 입력</h4>
										</div>
										<div class="modal-body">						
											<input type="password" name="bpass" id="bpass" style="width: 70%"/>	
											<button type="button" class="btn btn-primary" id="bpassButton">확인</button>				
										</div>
									</div>
								</div>
							</c:otherwise>
						</c:choose>
					</sec:authorize>
					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<div class="modal-dialog">
							<button type="button" class="close" data-dismiss="modal">×</button>
							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-body">		
									<c:choose>
										<c:when test="${boardVO.bnorelev == 0 }">
											<h5>삭제 시 견적문의 및 답글이 삭제됩니다.<br>정말로 삭제하시겠습니까?</h5>
										</c:when>
										<c:otherwise>
											<h5>해당 게시글을 삭제하시겠습니까?</h5>
										</c:otherwise>
									</c:choose>
									<div class="modalBtn">
										<button type="button" class="btn btn-primary" id="bpassButton">확인</button>					
										<button type="button" class="btn btn-primary" onclick="closeModal();">취소</button>
									</div>					
								</div>
							</div>
						</div>
					</sec:authorize>
				</div> 
			</form>
			<sec:authorize access="isAnonymous()">
				<a href="javascript:board_movePage('update');" class="btn btn-primary pull-right binsert">수정</a>	
				<a href="javascript:board_movePage('delete');" class="btn btn-primary pull-right binsert">삭제</a>
			</sec:authorize>
			<sec:authorize access="hasRole('ROLE_ADMIN')">
				<a href="javascript:board_adminMovePage('update');" class="btn btn-primary pull-right binsert">수정</a>	
				<a href="javascript:board_adminMovePage('delete');" class="btn btn-primary pull-right binsert">삭제</a>
				<a href="javascript:board_reply();" class="btn btn-primary pull-right binsert">답글</a>
			</sec:authorize>	
			<a href="/ari/board/board.do" class="btn btn-primary pull-right">목록</a>	
		</div>
	</div>
</body>
</html>