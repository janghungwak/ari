<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
$(document).ready(function(){
	
	 $('#slick_outdoorDistributionBoxSlide').slick({
		slidesToShow : 1,		// 한 화면에 보여질 컨텐츠 개수
		slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
		fade:true,
		arrows : false, 		// 옆으로 이동하는 화살표 표시 여부
		centerMode : true,
		asNavFor:'#slick_outdoorDistributionBoxSlide_nav',
	});

	$('#slick_outdoorDistributionBoxSlide_nav').slick({
		slidesToShow : 4,		// 한 화면에 보여질 컨텐츠 개수
		slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
		asNavFor:'#slick_outdoorDistributionBoxSlide',
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
	});
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
						<p>아리에서 생산하는 옥외분전함의 제품사진입니다.</p>
					</div>
					<hr>
					<div class="slick-div">
						<div id="slick_outdoorDistributionBoxSlide">
							<div><img src="../../../../img/product/distribution/outdoorDistributionBox/outdoorDistributionBox1.png" alt="" /></div>
							<div><img src="../../../../img/product/distribution/outdoorDistributionBox/outdoorDistributionBox2.png" alt="" /></div>
							<div><img src="../../../../img/product/distribution/outdoorDistributionBox/outdoorDistributionBox3.png" alt="" /></div>
							<div><img src="../../../../img/product/distribution/outdoorDistributionBox/outdoorDistributionBox4.png" alt="" /></div>
						</div>
					</div>
	
					<div class="slick-nav">
						<div id="slick_outdoorDistributionBoxSlide_nav">
							<div><img src="../../../../img/product/distribution/outdoorDistributionBox/outdoorDistributionBox1.png" alt="" /></div>
							<div><img src="../../../../img/product/distribution/outdoorDistributionBox/outdoorDistributionBox2.png" alt="" /></div>
							<div><img src="../../../../img/product/distribution/outdoorDistributionBox/outdoorDistributionBox3.png" alt="" /></div>
							<div><img src="../../../../img/product/distribution/outdoorDistributionBox/outdoorDistributionBox4.png" alt="" /></div>
						</div>
					</div>
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
								<col width="40%"/>
								<col width="50%"/>
							</colgroup>
							<thead>
								<tr>
									<th scope="col" style="text-align: center; vertical-align: middle;">NO</th>
									<th scope="col" style="text-align: center; vertical-align: middle;">규격<br>(가로 X 세로 X 깊이)</th>
									<th scope="col" style="text-align: center; vertical-align: middle;">비고</th>
								</tr>
							</thead>					
							<tbody>
								<tr>
									<td scope="row">1</td>
									<td>200 X 300 X 150</td>
									<td class="lgContent" rowspan="14">가로 X 세로 X 깊이 사이즈 주문제작 가능</td>
								</tr>
								<tr>
									<td scope="row">2</td>
									<td>250 X 350 X 150</td>
								</tr>
								<tr>
									<td scope="row">3</td>
									<td>300 X 400 X 150</td>
								</tr>
								<tr>
									<td scope="row">4</td>
									<td>350 X 450 X 150</td>
								</tr>
								<tr>
									<td scope="row">5</td>
									<td>400 X 500 X 150</td>
								</tr>
								<tr>
									<td scope="row">6</td>
									<td>500 X 600 X 150</td>
								</tr>
								<tr>
									<td scope="row">7</td>
									<td>500 X 700 X 150</td>
								</tr>
								<tr>
									<td scope="row">8</td>
									<td>600 X 700 X 150</td>
								</tr>
								<tr>
									<td scope="row">9</td>
									<td>600 X 800 X 150</td>
								</tr>
								<tr>
									<td scope="row">10</td>
									<td>600 X 900 X 150</td>
								</tr>
								<tr>
									<td scope="row">11</td>
									<td>600 X 1000 X 150</td>
								</tr>
								<tr>
									<td scope="row">12</td>
									<td>700 X 800 X 150</td>
								</tr>
								<tr>
									<td scope="row">13</td>
									<td>700 X 900 X 150</td>
								</tr>
								<tr>
									<td scope="row">14</td>
									<td>700 X 1000 X 150</td>
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