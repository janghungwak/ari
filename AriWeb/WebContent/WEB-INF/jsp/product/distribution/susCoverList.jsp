<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
$(document).ready(function(){
	//Cannot read property 'add' of null 에러방지를 위해 unslick 설정  
	//$('.slick_slide').slick("unslick");
	
	$('#slick_stanGnrCoverSlide').slick({
		slidesToShow : 1,		// 한 화면에 보여질 컨텐츠 개수
		slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
		fade:true,
		arrows : false, 		// 옆으로 이동하는 화살표 표시 여부
		centerMode : true,
		asNavFor:'#slick_stanGnrCoverSlide_nav',
	});

	$('#slick_stanGnrCoverSlide_nav').slick({
		slidesToShow : 3,		// 한 화면에 보여질 컨텐츠 개수
		slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
		asNavFor:'#slick_stanGnrCoverSlide',
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
						<p>아리에서 생산하는 SUS COVER의 제품사진입니다.</p>
					</div>
					<hr>
					<div class="slick-div">
						<div id="slick_stanGnrCoverSlide">
							<div><img src="../../../../img/product/distribution/susCover/susCover1.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susCover/susCover2.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susCover/susCover3.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susCover/susCover4.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susCover/susCover5.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susCover/susCover6.jpg" alt="" /></div>
						</div>
					</div>
	
					<div class="slick-nav">
						<div id="slick_stanGnrCoverSlide_nav">
							<div><img src="../../../../img/product/distribution/susCover/susCover1.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susCover/susCover2.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susCover/susCover3.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susCover/susCover4.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susCover/susCover5.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susCover/susCover6.jpg" alt="" /></div>
						</div>
					</div>
				</div>
			</div>	
		</div>
	
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
			    <div class="blogs">
					<div class="text-left">
						<img class="productImg" src="../../../../img/product/distribution/title/susCoverTitle.jpg" alt="">
					</div>
					<div class="text-center">
						<table class="ariTable ariTable-hover">
							<colgroup>
								<col width="10%"/>
								<col width="30%"/>
								<col width="20%"/>
								<col width="40%"/>
							</colgroup>
							<thead>
								<tr>
									<th scope="col" style="text-align: center; vertical-align: middle;" rowspan="2">NO</th>
									<th scope="col" style="text-align: center; vertical-align: middle;" rowspan="2">MODEL</th>
									<th scope="col" style="text-align: center;">COVER SIZE (mm)</th>
									<th scope="col" style="text-align: center; vertical-align: middle;" rowspan="2">비고</th>
								</tr>
								<tr>
									<th scope="col" style="text-align: center;">WxH</th>
								</tr>
							</thead>					
							<tbody>
								<tr>
									<td scope="row">1</td>
									<td>2030</td>
									<td>200 X 300</td>
									<td class="lgContent" rowspan="29">SUS 강종, 두께 사이즈 주문제작 가능</td>
								</tr>
								<tr>
									<td scope="row">2</td>
									<td>2535</td>
									<td>250 X 350</td>
								</tr>
								<tr>
									<td scope="row">3</td>
									<td>3030</td>
									<td>300 X 300</td>
								</tr>
								<tr>
									<td scope="row">4</td>
									<td>3040</td>
									<td>300 X 400</td>
								</tr>
								<tr>
									<td scope="row">5</td>
									<td>3545</td>
									<td>350 X 450</td>
								</tr>
								<tr>
									<td scope="row">6</td>
									<td>4030</td>
									<td>400 X 300</td>
								</tr>
								<tr>
									<td scope="row">7</td>
									<td>4040</td>
									<td>400 X 400</td>
								</tr>
								<tr>
									<td scope="row">8</td>
									<td>4050</td>
									<td>400 X 500</td>
								</tr>
								<tr>
									<td scope="row">9</td>
									<td>5040</td>
									<td>500 X 400</td>
								</tr>
								<tr>
									<td scope="row">10</td>
									<td>5050</td>
									<td>500 X 500</td>
								</tr>
								<tr>
									<td scope="row">11</td>
									<td>5060</td>
									<td>500 X 600</td>
								</tr>
								<tr>
									<td scope="row">12</td>
									<td>5070</td>
									<td>500 X 700</td>
								</tr>
								<tr>
									<td scope="row">13</td>
									<td>5560</td>
									<td>550 X 600</td>
								</tr>
								<tr>
									<td scope="row">14</td>
									<td>5570</td>
									<td>550 X 700</td>
								</tr>
								<tr>
									<td scope="row">15</td>
									<td>6050</td>
									<td>600 X 500</td>
								</tr>
								<tr>
									<td scope="row">16</td>
									<td>6060</td>
									<td>600 X 600</td>
								</tr>
								<tr>
									<td scope="row">17</td>
									<td>6070</td>
									<td>600 X 700</td>
								</tr>
								<tr>
									<td scope="row">18</td>
									<td>6080</td>
									<td>600 X 800</td>
								</tr>
								<tr>
									<td scope="row">19</td>
									<td>6090</td>
									<td>600 X 900</td>
								</tr>
								<tr>
									<td scope="row">20</td>
									<td>60100</td>
									<td>600 X 1000</td>
								</tr>
								<tr>
									<td scope="row">21</td>
									<td>60120</td>
									<td>600 X 1200</td>
								</tr>
								<tr>
									<td scope="row">22</td>
									<td>7080</td>
									<td>700 X 800</td>
								</tr>
								<tr>
									<td scope="row">23</td>
									<td>7090</td>
									<td>700 X 900</td>
								</tr>
								<tr>
									<td scope="row">24</td>
									<td>70100</td>
									<td>700 X 1000</td>
								</tr>
								<tr>
									<td scope="row">25</td>
									<td>70120</td>
									<td>700 X 1200</td>
								</tr>
								<tr>
									<td scope="row">26</td>
									<td>8090</td>
									<td>800 X 900</td>
								</tr>
								<tr>
									<td scope="row">27</td>
									<td>80100</td>
									<td>800 X 1000</td>
								</tr>
								<tr>
									<td scope="row">28</td>
									<td>80120</td>
									<td>800 X 1200</td>
								</tr>
								<tr>
									<td scope="row">29</td>
									<td>80140</td>
									<td>800 X 1400</td>
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