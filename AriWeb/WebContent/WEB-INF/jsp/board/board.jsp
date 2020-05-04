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
.pagination {
	margin-top: 5px;
	margin-bottom: 5px;
}

.search_group {
	float: right;
	margin: 0 20px 3px 0;
}

#search_btn {
	margin-top: 0px;
	margin-left: 5px;
	padding: 3px 20px;
}

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
		var message = "${passMatch}";
		var currentPageNo = "${currentPageNo}";
		if(message == "false"){
			alert('비밀번호를 다시 확인해주세요.');
			$('#currentPageNo').val(currentPageNo);
			$('#boardForm').submit();
			//location.href='/ari/board.do';
		}
	})

	function linkPage(pageNo) {
		$('#currentPageNo').val(pageNo);
		$('#boardForm').submit();
	}

	function search() {
		var initPageNo = 1;
		$('#currentPageNo').val(initPageNo);
		$('#boardForm').submit();
	}

	function boardView(bno) {
		var bsec = $('#bsec_' + bno).val();
		var adminVO = '${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.memberVO}';
		$('input[name="bno"]').val(bno);
		if(adminVO == ''){
			if (bsec == 'Y') {
				$('#passChkModal').modal();
			} else {
				$('#boardForm').attr('action', '/ari/board/boardView.do');
				$('#boardForm').submit();
			}
		}else{
			$('#boardForm').attr('action', '/ari/board/boardView.do');
			$('#boardForm').submit();			
		}
	}
	
	function passChk(){
		var currentPageNo = '${paginationInfo.currentPageNo}'; 
		$('#currentPageNo').val(currentPageNo);	
		$('#boardForm').attr('action', '/ari/board/boardPassChk.do');
		$('#boardForm').submit();
	}
	
	function adminBoardView(bno){
		$('input[name="bno"]').val(bno);
		$('#boardForm').attr('action', '/ari/board/boardView.do');
		$('#boardForm').submit();
	}
</script>
</head>
<body>
	<div class="wrapper">
	<form method="POST" id="boardForm" action="/ari/board/board.do">	
		<div id="subTitle">
				<h3 class="subtitle">
					견적 문의
					<span class="smalltitle">
					견적 문의에 <span class="mo">친절히 상담해드립니다.</span>
					</span>
				</h3>
		</div>
		<div class="search_group">
			<select name="searchtype">
				<option value="btitle" <c:out value="${searchtype == 'btitle' ? 'selected' : '' }"/>>제목</option>
				<option value="bwriter" <c:out value="${searchtype == 'bwriter' ? 'selected' : '' }"/>>작성자
				<option value="bcontent" <c:out value="${searchtype == 'bcontent' ? 'selected' : '' }"/>>내용</option>
			</select>
			<input type="text" name="keyword" id="keyword" value="${keyword }"/>
			<a href="javascript:search();" class="btn btn-primary pull-right" id="search_btn">검색</a>
		</div>
		<div class ="table_content">
			<table class="table table-striped" style="table-layout: fixed;">
				<thead>
					<tr>
						<th class="text-center">제목</th>
						<th class="text-center">작성자</th>
						<th class="text-center">작성일</th>
						<th class="text-center">첨부파일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="boardList" items="${boardList }">
						<tr>
							<td class="text-left">
								<a href="javascript:boardView(${boardList.bno});">
								<input type="hidden" name="bno" id="bno_${boardList.bno}" value="${boardList.bno }"/>
								<input type="hidden" name="bsec" id="bsec_${boardList.bno}" value="${boardList.bsec }">
								<c:if test="${boardList.bnorelev > 0 }">
									<img src="../../../img/reply.png" style="margin-left : ${boardList.bnorelev * 15}px"/>
								</c:if>
								<c:out value="${boardList.btitle }"/>
								<c:if test="${boardList.bsec eq 'Y' }">
									<img src="../../../img/icon_lock.gif" style="margin-left : 3px;">
								</c:if>
								</a>
							</td>
							<td class="text-center"><c:out value="${boardList.bwriter }"/></td>
							<td class="text-center"><c:out value="${boardList.bregdate }"/></td>
							<td class="text-center">
								<c:if test="${boardList.fileExist eq 'Y' }">
									<img src="../../../img/ic-attachment.ico" style="width: 16px; height: 16px;"/>
								</c:if>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="text-center" style="min-width:330px;">
				<ul class="pagination pagination-sm">
					<ui:pagination paginationInfo="${paginationInfo }" type="text" jsFunction="linkPage"/>
				</ul>
			</div>
			<sec:csrfInput/>
			<input type="hidden" name="currentPageNo" id="currentPageNo"/>
			<a href="/ari/board/insertBoardPage.do" class="btn btn-primary pull-right">글쓰기</a>
		</div>
		
		<!-- Modal -->
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
							<button type="button" class="btn btn-primary" id="bpassButton" onclick="passChk();">확인</button>					
						</div>
					</div>
				</div>
			</div>
		</form>		
	</div>
</body>
</html>