<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="text/javascript">

	$(document).ready(function(){
		$(".snb").hide();
		$(".lnb").mouseenter(function(){	
				$(this).find(".snb").stop().slideDown(100);
		});
		 $(".lnb").mouseleave(function(){	
				 $(".snb").hide();
		});
		 
	});
	
</script>

<title>(주)아리에 오신것을 환영합니다.</title>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
    	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <a class="navbar-brand" href="/ari/main.do" ><img src="../../../img/logo.jpg" style="margin-top: -10px;"/></a>
      </div>
      <div class="navbar-collapse collapse">
        <div class="menu">
          <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="lnb">
            	<a href="/ari/main.do">회사소개</a>
            	<ul class="snb">
            		<li><a href="/ari/main.do">연혁</a></li>
            		<li><a href="/ari/main.do">조직도</a></li>
            	</ul>
            </li>
            
            <li role="presentation" class="lnb">
            	<a href="/ari/main.do">제품소개</a>
            	<ul class="snb">
            		<li><a href="/ari/main.do">원자재 유통</a></li>
            		<li><a href="/ari/main.do">분전함 제조</a></li>
            	</ul>
            </li>
            
            <li role="presentation" class="lnb"><a href="/ari/board.do">견적문의</a></li>
          </ul>
        </div>
      </div>
    </div>
  </nav>
</body>
</html>