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
						<p>아리에서 생산하는 SUS 계량기함의 제품사진입니다.</p>
					</div>
					<hr>
					<div class="slick-div">
						<div id="slick_stanGnrCoverSlide">
							<div><img src="../../../../img/product/distribution/susOutdoorMeterBox/susGnrlMeterBox1.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susOutdoorMeterBox/susGnrlMeterBox2.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susOutdoorMeterBox/susGnrlMeterBox3.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susOutdoorMeterBox/susOutdoorAggregateMeter1.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susOutdoorMeterBox/susOutdoorAggregateMeter2.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susOutdoorMeterBox/susOutdoorAggregateMeter3.jpg" alt="" /></div>
						</div>
					</div>
	
					<div class="slick-nav">
						<div id="slick_stanGnrCoverSlide_nav">
							<div><img src="../../../../img/product/distribution/susOutdoorMeterBox/susGnrlMeterBox1.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susOutdoorMeterBox/susGnrlMeterBox2.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susOutdoorMeterBox/susGnrlMeterBox3.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susOutdoorMeterBox/susOutdoorAggregateMeter1.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susOutdoorMeterBox/susOutdoorAggregateMeter2.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susOutdoorMeterBox/susOutdoorAggregateMeter3.jpg" alt="" /></div>
						</div>
					</div>
				</div>
			</div>	
		</div>
	
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
			    <div class="blogs">
					<div class="text-left">
						<img class="productImg" src="../../../../img/product/distribution/title/susGnrlMeterBoxTitle.jpg" alt=""/>
					</div>
					<div class="text-center">
						<table class="ariTable ariTable-hover">
							<colgroup>
								<col width="8%"/>
								<col width="12%"/>
								<col width="10%"/>
								<col width="10%"/>
								<col width="10%"/>
								<col width="10%"/>
								<col width="20%"/>
								<col width="20%"/>
							</colgroup>
							<thead>
								<tr>
									<th scope="col" rowspan="2" style="text-align: center; vertical-align: middle;">NO</th>
									<th scope="col" rowspan="2" colspan="2" style="text-align: center; vertical-align: middle;">용량</th>
									<th scope="col" rowspan="2" style="text-align: center; vertical-align: middle;">MODEL</th>
									<th scope="col" colspan="3" style="text-align: center; vertical-align: middle;">BURYING BOX SIZE (mm)</th>
									<th scope="col" rowspan="2" style="text-align: center; vertical-align: middle;">INNER PLATE SIZE<br>속판치수 (WxH)</th>
								</tr>
								<tr>
									<th scope="col" style="text-align: center; vertical-align: middle;">W(가로)</th>
									<th scope="col" style="text-align: center; vertical-align: middle;">H(세로)</th>
									<th scope="col" style="text-align: center; vertical-align: middle;">D(깊이)</th>
								</tr>
							</thead>						
							<tbody>
								<tr>
									<td scope="row">1</td>
									<td rowspan="2" style="text-align: center; vertical-align: middle;">단상<br>(1p2w)</td>
									<td>1회로</td>
									<td>WHB 1C</td>
									<td>200</td>
									<td>300</td>
									<td>160</td>
									<td>150 X 210</td>
								</tr>
								<tr>
									<td scope="row">2</td>
									<td>2회로</td>
									<td>WHB 2C</td>
									<td>400</td>
									<td>330</td>
									<td>160</td>
									<td>310 X 340</td>
								</tr>
								<tr>
									<td scope="row">3</td>
									<td rowspan="2" style="text-align: center; vertical-align: middle;">동력<br>(3p4w)</td>
									<td>1회로</td>
									<td>WHB 1D</td>
									<td>300</td>
									<td>430</td>
									<td>190</td>
									<td>210 X 420</td>
								</tr>
								<tr>
									<td scope="row">4</td>
									<td>2회로</td>
									<td>WHB 2D</td>
									<td>550</td>
									<td>430</td>
									<td>200</td>
									<td>440 X 320</td>
								</tr>
							</tbody>
						</table>
					</div>
					<br>
					<div class="text-left">
						<img class="productImg" src="../../../../img/product/distribution/title/susOutdoorAggregateMeterTitle.jpg" alt=""/>
					</div>
					<div class="text-center">
						<table class="ariTable ariTable-hover">
							<colgroup>
								<col width="12%"/>
								<col width="20%"/>
								<col width="12%"/>
								<col width="12%"/>
								<col width="12%"/>
								<col width="12%"/>
								<col width="20%"/>
							</colgroup>
							<thead>
								<tr>
									<th scope="col" rowspan="2" style="text-align: center; vertical-align: middle;">NO</th>
									<th scope="col" style="text-align: center; vertical-align: middle;">CAPACITY</th>
									<th scope="col" rowspan="2" style="text-align: center; vertical-align: middle;">MODEL</th>
									<th scope="col" colspan="3" style="text-align: center; vertical-align: middle;">BOX SIZE (mm)</th>
									<th scope="col" rowspan="2" style="text-align: center; vertical-align: middle;">INNER PLATE SIZE<br>속판치수 (WxH)</th>
								</tr>
								<tr>
									<th scope="col" style="text-align: center; vertical-align: middle;">용량</th>
									<th scope="col" style="text-align: center; vertical-align: middle;">W(가로)</th>
									<th scope="col" style="text-align: center; vertical-align: middle;">H(세로)</th>
									<th scope="col" style="text-align: center; vertical-align: middle;">D(깊이)</th>
								</tr>
							</thead>						
							<tbody>
								<tr>
									<td scope="row" rowspan="2" style="text-align: center; vertical-align: middle;">1</td>
									<td rowspan="2" style="text-align: center; vertical-align: middle;">PLATFOEM 1회로</td>
									<td rowspan="2" style="text-align: center; vertical-align: middle;">WHEB 1C</td>
									<td rowspan="2" style="text-align: center; vertical-align: middle;">250</td>
									<td rowspan="2" style="text-align: center; vertical-align: middle;">580</td>
									<td rowspan="2" style="text-align: center; vertical-align: middle;">160</td>
									<td>상 170 X 210</td>
								</tr>
								<tr>
									<td style="font-weight: normal;">하 170 X 170</td>
								</tr>
								<tr>
									<td scope="row" rowspan="2" style="text-align: center; vertical-align: middle;">2</td>
									<td rowspan="2" style="text-align: center; vertical-align: middle;">단상(1p2w) 2회로</td>
									<td rowspan="2" style="text-align: center; vertical-align: middle;">WHEB 2C</td>
									<td rowspan="2" style="text-align: center; vertical-align: middle;">400</td>
									<td rowspan="2" style="text-align: center; vertical-align: middle;">580</td>
									<td rowspan="2" style="text-align: center; vertical-align: middle;">160</td>
									<td>상 320 X 210</td>
								</tr>
								<tr>
									<td style="font-weight: normal;">하 320 X 170</td>
								</tr>
								<tr>
									<td scope="row" rowspan="2" style="text-align: center; vertical-align: middle;">3</td>
									<td rowspan="2" style="text-align: center; vertical-align: middle;">POWER 1회로</td>
									<td rowspan="2" style="text-align: center; vertical-align: middle;">WHEB 1D</td>
									<td rowspan="2" style="text-align: center; vertical-align: middle;">300</td>
									<td rowspan="2" style="text-align: center; vertical-align: middle;">730</td>
									<td rowspan="2" style="text-align: center; vertical-align: middle;">200</td>
									<td>상 220 X 330</td>
								</tr>
								<tr>
									<td style="font-weight: normal;">하 220 X 200</td>
								</tr>
								<tr>
									<td scope="row" rowspan="2" style="text-align: center; vertical-align: middle;">4</td>
									<td rowspan="2" style="text-align: center; vertical-align: middle;">동력(3p4w) 2회로</td>
									<td rowspan="2" style="text-align: center; vertical-align: middle;">WHEB 2D</td>
									<td rowspan="2" style="text-align: center; vertical-align: middle;">550</td>
									<td rowspan="2" style="text-align: center; vertical-align: middle;">730</td>
									<td rowspan="2" style="text-align: center; vertical-align: middle;">200</td>
									<td>상 470 X 330</td>
								</tr>
								<tr>
									<td style="font-weight: normal;">하 470 X 200</td>
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