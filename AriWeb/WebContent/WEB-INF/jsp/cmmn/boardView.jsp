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
 function board_updatePage(){
		$('#formAction').attr('action', '/ari/updateBoardPage.do');
		$('#formAction').submit();
 }

 function board_delete(){
	 if(confirm("삭제하시겠습니까?")){		 
		$('#formAction').attr('action', '/ari/deleteBoard.do');
		$('#formAction').submit();
	 }
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
						<th scope="row">제목</th>
						<td colspan="3"><c:out value="${boardVO.btitle }"/></td>
					</tr>
					<tr>
						<th scope="row">작성자</th>
						<td><c:out value="${boardVO.bwriter }"/></td>
						<th scope="row">등록일</th>
						<td colspan="2"><c:out value="${boardVO.bregdate }"/></td>
					</tr>
					<tr>
						<th>첨부파일</th>
						<td colspan="4">
							<c:forEach items="${fileList }" var="file">
								<p>
									<a href="javascript:board_fileDownload(${file.fno });">${file.fname }(${file.fsize }Byte)</a>
								</p>
							</c:forEach>
						</td>
					</tr>
					<tr>
						<td colspan="5" style="border-bottom: 1px solid #ddd;">
						${boardVO.bcontent }
						</td>
					</tr>
				</tbody>
			</table>
			<form id="formAction" method="post">
				<input type="hidden" name="bno" value="${boardVO.bno }">
				<sec:csrfInput/> 
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