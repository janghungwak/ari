<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript">

	$(document).ready(function() {
			$('.bxslider').bxSlider({
				auto:true,
				speed:500,
				pause:4000,
				controls : true,
			});
		});
</script>
</head>
<body>
	<div style ="background-image: url(../../../img/mainBanner/bg.png); background-repeat:repeat-x; background-position: bottom; min-height:768px;">	 
		<div class="container">
			<div class="row">
				<div class="slider" >
					<div class="img-responsive">
						<ul class="bxslider">
							<li><img src="../../../img/mainBanner/leftMain_1.png" alt="" style="width: 100%; height:100%"/></li>
							<li><img src="../../../img/mainBanner/coil1.jpg" alt="" style="width: 100%; height:100%"/></li>
							<li><img src="../../../img/mainBanner/stsPan1.png" alt="" style="width: 100%; height:100%"/></li>
							<li><img src="../../../img/mainBanner/stsPan2.png" alt="" style="width: 100%; height:100%"/></li>
						</ul>
					</div>

					<div class="img-responsive">
						<ul class="bxslider">
							<li><img src="../../../img/mainBanner/rightMain.png" alt="" style="width: 90%; height:100%"/></li>
							<li><img src="../../../img/mainBanner/stsPan1.png" alt="" style="width: 100%; height:100%"/></li>
							<li><img src="../../../img/mainBanner/stsPan3.png" alt="" style="width: 100%; height:100%"/></li>
							<li><img src="../../../img/mainBanner/stsPan2.png" alt="" style="width: 100%; height:100%"/></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="text-center">
					<h2>(주)아리는</h2>
					<p>풍부한 경험을 갖춘 직원들의 기술력으로 최고의 제품을 생산하여 오랜 실무<br>노하우로 고객사 여러분들에게 기성품과 더불어 주문제작 제품들도<br>신속, 정확도를 높여 합리적인 가격과 최상의 상품으로 <br>공급할 것을 약속드립니다.</p>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="box">
				<div class="col-md-4">
					<div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.4s">
						<h4>회사소개</h4>
						<div class="icon">
							<i class="fa fa-heart-o fa-3x"></i>
						</div>
						<p>(주)아리의 회사소개, 연혁 등을 확인 하실 수 있습니다.</p>
						<div class="ficon">
							<a href="/ari/companyIntro/selectCompanyIntroList.do" class="btn btn-default" role="button">Read more</a>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="wow bounceIn" data-wow-offset="0" data-wow-delay="1.0s">
						<h4>제품소개</h4>
						<div class="icon">
							<i class="fa fa-desktop fa-3x"></i>
						</div>
						<p>(주)아리에서 생산 및 납품을 하는 제품에 대한 정보를 확인 하실 수 있습니다.</p>
						<div class="ficon">
							<a href="/ari/product/Distribution/selectPanList.do" class="btn btn-default" role="button">Read more</a>
						</div>
					</div>
				</div>
				
				<div class="col-md-4">
					<div class="wow bounceIn" data-wow-offset="0" data-wow-delay="1.0s">
						<h4>견적문의</h4>
						<div class="icon">
							<i class="fa fa-desktop fa-3x"></i>
						</div>
						<p>(주)아리에서 생산하는 제품에 대한 문의를 하실 수 있습니다.</p>
						<div class="ficon">
							<a href="/ari/board.do" class="btn btn-default" role="button">Read more</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="text-center">
					<h2>제품소개</h2>
					<p>(주)아리에서 생산 및 제조하는 대표 제품입니다.</p>
				</div>
				<hr>
			</div>
		</div>
	</div>

	<div class="content">
		<div class="grid">
			<figure class="effect-zoe">
				<img src="../../../img/mainBanner/product1.jpg" alt="" style="width:100%; height:360px;"/>
				<!-- 
				<figcaption>
					<h2>Title <span>Name</span></h2>
					<p class="icon-links">
						<a href="#"><span class="icon-heart"></span></a>
						<a href="#"><span class="icon-eye"></span></a>
						<a href="#"><span class="icon-paper-clip"></span></a>
					</p>
					<p class="description">Zoe never had the patience of her sisters. She deliberately punched the bear in his face.</p>
				</figcaption> -->
			</figure>
			<figure class="effect-zoe">
				<img src="../../../img/mainBanner/product2.jpg" alt="" style="width:100%; height:360px;"/>
				<!-- 
				<figcaption>
					<h2>Title <span>Name</span></h2>
					<p class="icon-links">
						<a href="#"><span class="icon-heart"></span></a>
						<a href="#"><span class="icon-eye"></span></a>
						<a href="#"><span class="icon-paper-clip"></span></a>
					</p>
					<p class="description">Zoe never had the patience of her sisters. She deliberately punched the bear in his face.</p>
				</figcaption> -->
			</figure>
		</div>
	</div>

	<div class="content">
		<div class="grid">
			<figure class="effect-zoe">
				<img src="../../../img/mainBanner/product3.jpg" alt="" style="width:100%; height:360px;"/>
				<!-- 
				<figcaption>
					<h2>Title <span>Name</span></h2>
					<p class="icon-links">
						<a href="#"><span class="icon-heart"></span></a>
						<a href="#"><span class="icon-eye"></span></a>
						<a href="#"><span class="icon-paper-clip"></span></a>
					</p>
					<p class="description">Zoe never had the patience of her sisters. She deliberately punched the bear in his face.</p>
				</figcaption> -->
			</figure>
			<figure class="effect-zoe">
				<img src="../../../img/mainBanner/product4.jpg" alt="" style="width:100%; height:360px;"/>
				<!-- 
				<figcaption>
					<h2>Title <span>Name</span></h2>
					<p class="icon-links">
						<a href="#"><span class="icon-heart"></span></a>
						<a href="#"><span class="icon-eye"></span></a>
						<a href="#"><span class="icon-paper-clip"></span></a>
					</p>
					<p class="description">Zoe never had the patience of her sisters. She deliberately punched the bear in his face.</p>
				</figcaption> -->
			</figure>
		</div>
	</div>

	<footer>
		<div class="inner-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-13 f-contact">
						<h3 class="widgetheading">문의사항 및 오시는길</h3>
						<p>
							<i class="fa fa-envelope"></i><a href="mailto:kms@arists.co.kr">원자재 유통 : kms@arists.co.kr</a><br>
							<i class="fa fa-envelope"></i><a href="mailto:niri.19@hanmail.net">분전함 제조 : niri.19@hanmail.net</a>
						</p>
						<p>
							<i class="fa fa-phone"></i> 원자재 유통 : TEL) 031-354-6994&nbsp;&nbsp;&nbsp;FAX) 031-354-6937<br> 
							<i class="fa fa-phone"></i> 분전함 제조 : TEL) 031-8055-0860 FAX) 031-8055-0870
						</p>
						<p><i class="fa fa-home"></i> (주)아리 | 경기도 화성시 정남면 서봉로 877</p>
					</div>
					<div class="col-md-4 f-contact">
						<h3 class="widgetheading"></h3>
						<div id="map_view"></div>
							<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d5832f06f2f46f5e9d24ec29001ef968"></script>
							<script>
								var mapContainer = document.getElementById('map_view'), // 지도를 표시할 div 
								mapOption = { 
								    center: new kakao.maps.LatLng(37.15286124275842, 126.96288548524096), // 지도의 중심좌표
								    level: 3 // 지도의 확대 레벨
								};
								
								var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
								
								//마커가 표시될 위치입니다 
								var markerPosition  = new kakao.maps.LatLng(37.15286124275842, 126.96288548524096); 
								
								//마커를 생성합니다
								var marker = new kakao.maps.Marker({
								position: markerPosition
								});
								
								//마커가 지도 위에 표시되도록 설정합니다
								marker.setMap(map);
								
								//아래 코드는 지도 위의 마커를 제거하는 코드입니다
								//marker.setMap(null);   
							</script>
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>