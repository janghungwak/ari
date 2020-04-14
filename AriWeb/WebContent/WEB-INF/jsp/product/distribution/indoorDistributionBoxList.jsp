<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
$(document).ready(function(){
	
	/* $('#slick_indoorDistributionBoxSlide').slick({
		slidesToShow : 1,		// 한 화면에 보여질 컨텐츠 개수
		slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
		fade:true,
		arrows : false, 		// 옆으로 이동하는 화살표 표시 여부
		centerMode : true,
		asNavFor:'#slick_indoorDistributionBoxSlide_nav',
	});

	$('#slick_indoorDistributionBoxSlide_nav').slick({
		slidesToShow : 3,		// 한 화면에 보여질 컨텐츠 개수
		slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
		asNavFor:'#slick_indoorDistributionBoxSlide',
		centerMode : true,
		focusOnSelect:true,
		arrows : true,
		
		responsive: [ // 반응형 웹 구현 옵션
			{  
				breakpoint: 960, //화면 사이즈 960px
				settings: {
					//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
					slidesToShow:2 
				} 
			},
			{ 
				breakpoint: 768, //화면 사이즈 768px
				settings: {	
					//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
					slidesToShow:2 
				} 
			}
		]
	}); */
});
</script>
</head>
<body>
	<div class="productContainer">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
			    <div class="blogs">
					<div class="text-center">
						<h2>제품 사진</h2>
						<p>아리에서 생산하는 옥내방수함의 제품사진입니다.</p>
					</div>
					<hr>
					<!-- 사진 주면 div영역 제거예정 (57 ~ 60Line 제거예정)-->
					<div style="text-align: center;">
						<img src="../../../../img/contentReadyImg.png" class="img-responsive" style="width:50%;">
					</div>
					<!-- <div class="slick-div">
						<div id="slick_indoorDistributionBoxSlide">
							<div><img src="../../../../img/product/distribution/indoorDistributionBox/indoorDistributionBox1.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/indoorDistributionBox/indoorDistributionBox2.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/indoorDistributionBox/indoorDistributionBox3.jpg" alt="" /></div>
						</div>
					</div>
	
					<div class="slick-nav">
						<div id="slick_indoorDistributionBoxSlide_nav">
							<div><img src="../../../../img/product/distribution/indoorDistributionBox/indoorDistributionBox1.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/indoorDistributionBox/indoorDistributionBox2.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/indoorDistributionBox/indoorDistributionBox3.jpg" alt="" /></div>
						</div>
					</div>-->
				</div>
			</div>	
		</div>
	
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
			    <div class="blogs">
					<div class="text-center">
						<h2>규격</h2>
					</div>
					<div class="text-center">
						<table class="ariTable ariTable-hover">
							<colgroup>
								<col width="10%"/>
								<col width="20%"/>
								<col width="70%"/>
							</colgroup>
							<thead>
								<tr>
									<th scope="col" style="text-align: center;">NO</th>
									<th scope="col" style="text-align: center;">규격(가로 * 세로 * 깊이)</th>
									<th scope="col" style="text-align: center;">비고</th>
								</tr>
							</thead>					
							<tbody>
								<tr>
									<td scope="row">1</td>
									<td>200*300*150</td>
									<td class="lgContent" rowspan="14">가로 * 세로 * 깊이 사이즈 주문제작 가능</td>
								</tr>
								<tr>
									<td scope="row">2</td>
									<td>250*350*150</td>
								</tr>
								<tr>
									<td scope="row">3</td>
									<td>300*400*150</td>
								</tr>
								<tr>
									<td scope="row">4</td>
									<td>350*450*150</td>
								</tr>
								<tr>
									<td scope="row">5</td>
									<td>400*500*150</td>
								</tr>
								<tr>
									<td scope="row">6</td>
									<td>500*600*150</td>
								</tr>
								<tr>
									<td scope="row">7</td>
									<td>500*700*150</td>
								</tr>
								<tr>
									<td scope="row">8</td>
									<td>600*700*150</td>
								</tr>
								<tr>
									<td scope="row">9</td>
									<td>600*800*150</td>
								</tr>
								<tr>
									<td scope="row">10</td>
									<td>600*900*150</td>
								</tr>
								<tr>
									<td scope="row">11</td>
									<td>600*1000*150</td>
								</tr>
								<tr>
									<td scope="row">12</td>
									<td>700*800*150</td>
								</tr>
								<tr>
									<td scope="row">13</td>
									<td>700*900*150</td>
								</tr>
								<tr>
									<td scope="row">14</td>
									<td>700*1000*150</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>	
		</div>
	</div>
</body>
</html>