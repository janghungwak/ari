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
						<p>아리에서 생산하는 SUS 방수함의 제품사진입니다.</p>
					</div>
					<hr>
					<div class="slick-div">
						<div id="slick_stanGnrCoverSlide">
							<div><img src="../../../../img/product/distribution/susWaterProofBox/susWaterProofBox1.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susWaterProofBox/susWaterProofBox2.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susWaterProofBox/susWaterProofBox3.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susWaterProofBox/susWaterProofBox4.jpg" alt="" /></div>
						</div>
					</div>
	
					<div class="slick-nav">
						<div id="slick_stanGnrCoverSlide_nav">
							<div><img src="../../../../img/product/distribution/susWaterProofBox/susWaterProofBox1.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susWaterProofBox/susWaterProofBox2.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susWaterProofBox/susWaterProofBox3.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susWaterProofBox/susWaterProofBox4.jpg" alt="" /></div>
						</div>
					</div>
				</div>
			</div>	
		</div>
	
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
			    <div class="blogs">
					<div class="text-left">
						<img class="productImg" src="../../../../img/product/distribution/title/susWaterProofBoxTitle.jpg" alt=""/>
					</div>
					<div class="text-center">
						<table class="ariTable ariTable-hover">
							<colgroup>
								<col width="10%"/>
								<col width="20%"/>
								<col width="10%"/>
								<col width="10%"/>
								<col width="10%"/>
								<col width="40%"/>
							</colgroup>
							<thead>
								<tr>
									<th scope="col" rowspan="2" style="text-align: center; vertical-align: middle;">NO</th>
									<th scope="col" rowspan="2" style="text-align: center; vertical-align: middle;">MODEL</th>
									<th scope="col" colspan="3" style="text-align: center; vertical-align: middle;">BOX SIZE (mm)</th>
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
									<td>2030</td>
									<td>200</td>
									<td>300</td>
									<td>150</td>
									<td>150 X 210</td>
								</tr>
								<tr>
									<td scope="row">2</td>
									<td>2535</td>
									<td>250</td>
									<td>350</td>
									<td>150</td>
									<td>160 X 260</td>
								</tr>
								<tr>
									<td scope="row">3</td>
									<td>3040</td>
									<td>300</td>
									<td>400</td>
									<td>150</td>
									<td>210 X 310</td>
								</tr>
								<tr>
									<td scope="row">4</td>
									<td>3545</td>
									<td>350</td>
									<td>450</td>
									<td>150</td>
									<td>260 X 360</td>
								</tr>
								<tr>
									<td scope="row">5</td>
									<td>4050</td>
									<td>400</td>
									<td>500</td>
									<td>150</td>
									<td>310 X 410</td>
								</tr>
								<tr>
									<td scope="row">6</td>
									<td>5060</td>
									<td>500</td>
									<td>600</td>
									<td>150</td>
									<td>410 X 510</td>
								</tr>
								<tr>
									<td scope="row">7</td>
									<td>5070</td>
									<td>500</td>
									<td>700</td>
									<td>150</td>
									<td>410 X 610</td>
								</tr>
								<tr>
									<td scope="row">8</td>
									<td>6070</td>
									<td>600</td>
									<td>700</td>
									<td>150</td>
									<td>510 X 610</td>
								</tr>
								<tr>
									<td scope="row">9</td>
									<td>6080</td>
									<td>600</td>
									<td>800</td>
									<td>150</td>
									<td>510 X 710</td>
								</tr>
								<tr>
									<td scope="row">10</td>
									<td>6090</td>
									<td>600</td>
									<td>900</td>
									<td>150</td>
									<td>610 X 810</td>
								</tr>
								<tr>
									<td scope="row">11</td>
									<td>60100</td>
									<td>600</td>
									<td>1000</td>
									<td>150</td>
									<td>610 X 910</td>
								</tr>
								<tr>
									<td scope="row">12</td>
									<td>60120</td>
									<td>600</td>
									<td>1200</td>
									<td>150</td>
									<td>510 X 1110</td>
								</tr>
								<tr>
									<td scope="row">13</td>
									<td>7080</td>
									<td>700</td>
									<td>800</td>
									<td>150</td>
									<td>610 X 710</td>
								</tr>
								<tr>
									<td scope="row">14</td>
									<td>7090</td>
									<td>700</td>
									<td>900</td>
									<td>150</td>
									<td>610 X 810</td>
								</tr>
								<tr>
									<td scope="row">15</td>
									<td>70100</td>
									<td>700</td>
									<td>1000</td>
									<td>150</td>
									<td>610 X 910</td>
								</tr>
								<tr>
									<td scope="row">16</td>
									<td>70120</td>
									<td>700</td>
									<td>1200</td>
									<td>150</td>
									<td>410 X 1110</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			    <div class="blogs">
					<div class="text-left">
						<img class="productImg" src="../../../../img/product/distribution/title/susODWaterProofBoxTitle.jpg" alt=""/>
					</div>
					<div class="text-center">
						<table class="ariTable ariTable-hover">
							<colgroup>
								<col width="10%"/>
								<col width="20%"/>
								<col width="10%"/>
								<col width="10%"/>
								<col width="10%"/>
								<col width="40%"/>
							</colgroup>
							<thead>
								<tr>
									<th scope="col" rowspan="2" style="text-align: center; vertical-align: middle;">NO</th>
									<th scope="col" rowspan="2" style="text-align: center; vertical-align: middle;">MODEL</th>
									<th scope="col" colspan="3" style="text-align: center; vertical-align: middle;">BOX SIZE (mm)</th>
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
									<td>2030</td>
									<td>200</td>
									<td>300</td>
									<td>150</td>
									<td>150 X 210</td>
								</tr>
								<tr>
									<td scope="row">2</td>
									<td>3040</td>
									<td>300</td>
									<td>400</td>
									<td>150</td>
									<td>150 X 210</td>
								</tr>
								<tr>
									<td scope="row">3</td>
									<td>4050</td>
									<td>400</td>
									<td>500</td>
									<td>150</td>
									<td>210 X 310</td>
								</tr>
								<tr>
									<td scope="row">4</td>
									<td>5060</td>
									<td>500</td>
									<td>600</td>
									<td>150</td>
									<td>410 X 510</td>
								</tr>
								<tr>
									<td scope="row">5</td>
									<td>5070</td>
									<td>500</td>
									<td>700</td>
									<td>150</td>
									<td>410 X 610</td>
								</tr>
								<tr>
									<td scope="row">6</td>
									<td>6080</td>
									<td>600</td>
									<td>800</td>
									<td>150</td>
									<td>510 X 710</td>
								</tr>
								<tr>
									<td scope="row">7</td>
									<td>6090</td>
									<td>600</td>
									<td>900</td>
									<td>150</td>
									<td>510 X 810</td>
								</tr>
								<tr>
									<td scope="row">8</td>
									<td>70100</td>
									<td>700</td>
									<td>1000</td>
									<td>150</td>
									<td>610 X 910</td>
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