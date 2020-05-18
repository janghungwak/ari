<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="naver-site-verification" content="49e391132c654d6253a23f9b937b501a1db2b9ce"/>
<script type="text/javascript">
$(document).ready(function(){

	
});
</script>
</head>
<body>

	<div class="col-md-6 col-md-offset-3">
		<p id ="blinkEle">
			<marquee scrolldelay="100">스텐레스,일반강 원자재 일체 도,소매/스텐레스 분전함 Cover&Box (주문제작) 전문</marquee>
		</p>
	</div>
	
	<div class="mainImageContainer">
		<div class="col-md-8 col-md-offset-2" style="height:88%; ">
			<img class="leftMainImg"  src="../../../img/mainBanner/leftMain.gif"/>
			<img class="rightMainImg" src="../../../img/mainBanner/rightMain.gif"/>
		</div>
	</div>
		<!-- <img src="../../../img/mainBanner/bg.gif" style="background-repeat: repeat-x; background-position: bottom; height: 450px; width: 100%;"> -->
	

	<!-- 모바일 용 화면과 pc용 화면 2가지를 구분지어서 개발처리
		col-mb-class : 모바일 전용 화면 클래스 미디어설정 css 스타일
		col-pc-class : PC 전용 화면 클래스 미디어 설정 css 스타일
		
		cssStyle 파일 위치 : style.css 
	 -->
	<div class="mainContainer col-pc-class">
		<div class="row">
			<div class="box">
				<div class="col-mainFotter-box">
						<h3 class="widgetheading">회사소개</h3>
						<div class="icon">
							<i class="fa fa-heart-o fa-3x"></i>
						</div>
						<p>(주)아리의 회사소개, 연혁 등을 확인 하실 수 있습니다.</p>
						<div class="ficon">
							<a href="/ari/companyIntro/selectCompanyIntroList.do" class="btn btn-default" role="button">Read more</a>
						</div>
				</div>

				<div class="col-mainFotter-box">
						<h3 class="widgetheading">제품소개</h3>
						<div class="icon">
							<i class="fa fa-desktop fa-3x"></i>
						</div>
						<p>(주)아리에서 생산 및 납품을 하는 제품에 대한 정보를 확인 하실 수 있습니다.</p>
						<div class="ficon">
							<a href="/ari/product/distribution/selectStanGnrCoverList.do" class="btn btn-default" role="button">Read more</a>
						</div>
				</div>
				
				<div class="col-mainFotter-box">
					<!--추후에 애니메이션 효과 추가해달라고 하면 해당 div사용하면 됨
					 <div class="wow bounceIn" data-wow-offset="0" data-wow-delay="1.6s"> 
					-->
						<h3 class="widgetheading">견적문의</h3>
						<div class="icon">
							<i class="fa fa-comment fa-3x"></i>
						</div>
						<p>(주)아리에서 생산하는 제품에 대한 문의를 하실 수 있습니다.</p>
						<div class="ficon">
							<a href="/ari/board/board.do" class="btn btn-default" role="button">Read more</a>
						</div>
				</div>
			</div>
			
			<div class="col-mainFotter-box">
				<h3 class="widgetheading text-center">문의사항</h3>
					<i class="fa fa-envelope"></i><a href="mailto:kms@arists.co.kr">&nbsp;원자재 유통 : kms@arists.co.kr</a><br>
					<i class="fa fa-envelope"></i><a href="mailto:niri.19@hanmail.net">&nbsp;분전함 제조 : niri.19@hanmail.net</a>
					<br><br>
					<i class="fa fa-phone"></i> 원자재 유통<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TEL) 031-354-6994 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FAX) 031-354-6937<br> 
					<i class="fa fa-phone"></i> 분전함 제조<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TEL) 031-8055-0860<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FAX) 031-8055-0870
					<br><br>
				<i class="fa fa-home"></i> (주)아리 | 경기도 화성시 정남면 서봉로 877
			</div>
		</div>
	</div>
	
	<!-- 112 ~ 176Line : Moblie 전용 화면에 대한 소스 -->
	<div class="mainContainer col-mb-class">
		<div class="row">
			<div class="box">
				<div class="col-md-4">
					<!-- <div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.4s"> -->
						<h4>회사소개</h4>
						<div class="icon">
							<i class="fa fa-heart-o fa-3x"></i>
						</div>
						<p>(주)아리의 회사소개, 연혁 등을 확인 하실 수 있습니다.</p>
						<div class="ficon">
							<a href="/ari/companyIntro/selectCompanyIntroList.do" class="btn btn-default" role="button">Read more</a>
						</div>
				</div>

				<div class="col-md-4">
					<!-- <div class="wow bounceIn" data-wow-offset="0" data-wow-delay="1.0s"> -->
						<h4>제품소개</h4>
						<div class="icon">
							<i class="fa fa-desktop fa-3x"></i>
						</div>
						<p>(주)아리에서 생산 및 납품을 하는 제품에 대한<br>정보를 확인 하실 수 있습니다.</p>
						<div class="ficon">
							<a href="/ari/product/distribution/selectStanGnrCoverList.do" class="btn btn-default" role="button">Read more</a>
						</div>
				</div>
				
				<div class="col-md-4">
					<!-- <div class="wow bounceIn" data-wow-offset="0" data-wow-delay="1.6s"> -->
						<h4>견적문의</h4>
						<div class="icon">
							<i class="fa fa-comment fa-3x"></i>
						</div>
						<p>(주)아리에서 생산하는 제품에 대한<br>문의를 하실 수 있습니다.</p>
						<div class="ficon">
							<a href="/ari/board/board.do" class="btn btn-default" role="button">Read more</a>
						</div>
				</div>
			</div>
		</div>
	</div>
	
	<footer class ="col-mb-class">
		<div class="inner-footer">
			<div class="mainContainer">
				<div class="row">
					<div class="col-md-13 f-contact">
						<h3 class="widgetheading">문의사항</h3>
							<i class="fa fa-envelope"></i><a href="mailto:kms@arists.co.kr">원자재 유통 : kms@arists.co.kr</a><br>
							<i class="fa fa-envelope"></i><a href="mailto:niri.19@hanmail.net">분전함 제조 : niri.19@hanmail.net</a>
							<br><br>
							<i class="fa fa-phone"></i> 원자재 유통 : TEL) 031-354-6994&nbsp;&nbsp;&nbsp;FAX) 031-354-6937<br> 
							<i class="fa fa-phone"></i> 분전함 제조 : TEL) 031-8055-0860 FAX) 031-8055-0870
							<br><br>
							<i class="fa fa-home"></i> (주)아리 | 경기도 화성시 정남면 서봉로 877
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>