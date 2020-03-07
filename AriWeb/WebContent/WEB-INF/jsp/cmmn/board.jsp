<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>  
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>견적문의</title>
<style type="text/css">
.pagination{
	margin-top: 5px;
	margin-bottom: 5px;
}
</style>
<script type="text/javascript">
	function linkPage(pageNo){
		$('#currentPageNo').val(pageNo);
		$('#boardForm').submit();
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
		<div class ="table_content">
			<form id="boardForm" action="/ari/board.do">
			<table class="table table-striped">
				<colgroup>
					<col width="40%"/>
					<col width="20%"/>
					<col width="20%"/>
					<col width="20%"/>
				</colgroup>
				<thead>
					<tr>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>첨부파일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="boardList" items="${boardList }">
						<c:url var="link" value="/ari/boardView.do">
							<c:param name="bno" value="${boardList.bno }"></c:param>
						</c:url>
						<tr>
							<td><div style="width: 100px; text-overflow: ellipsis; overflow: hidden;"><a href="${link }"><c:out value="${boardList.btitle }"/></a></div></td>
							<td><c:out value="${boardList.bwriter }"/></td>
							<td><c:out value="${boardList.bregdate }"/></td>
							<td>첨부</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="text-center" style="min-width:330px;">
				<ul class="pagination pagination-sm">
					<ui:pagination paginationInfo="${paginationInfo }" type="text" jsFunction="linkPage"/>
				</ul>
			</div>
			<input type="hidden" name="currentPageNo" id="currentPageNo"/>
			</form>
			<a href="/ari/insertBoardPage.do" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
	
</body>
</html>