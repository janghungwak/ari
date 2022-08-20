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
						<p>아리에서 생산하는 SUS POST의 제품사진입니다.</p>
					</div>
					<hr>
					<div class="slick-div">
						<div id="slick_stanGnrCoverSlide">
							<div><img src="../../../../img/product/distribution/susPost/susPost1.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susPost/susPost2.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susPost/susPost3.jpg" alt="" /></div>
						</div>
					</div>
	
					<div class="slick-nav">
						<div id="slick_stanGnrCoverSlide_nav">
							<div><img src="../../../../img/product/distribution/susPost/susPost1.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susPost/susPost2.jpg" alt="" /></div>
							<div><img src="../../../../img/product/distribution/susPost/susPost3.jpg" alt="" /></div>
						</div>
					</div>
				</div>
			</div>	
		</div>
	
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
			    <div class="blogs">
					<div class="text-left">
						<img class="productImg" src="../../../../img/product/distribution/title/susBaseTItle.jpg" alt=""/>
					</div>
					<div class="text-center">
						<table class="ariTable ariTable-hover">
							<colgroup>
								<col width="10%"/>
								<col width="60%"/>
								<col width="30%"/>
							</colgroup>
							<thead>
								<tr>
									<th scope="col" style="text-align: center; vertical-align: middle;">NO</th>
									<th scope="col" style="text-align: center; vertical-align: middle;">MODEL</th>
									<th scope="col" style="text-align: center; vertical-align: middle;">비고</th>
								</tr>
							</thead>					
							<tbody>
								<tr>
									<td scope="row">1</td>
									<td>SUS304 Φ100 X 1000H</td>
									<td class="lgContent" rowspan="2">규격품 외 주문사양</td>
								</tr>
								<tr>
									<td scope="row">2</td>
									<td>SUS304 Φ150 X 1000H</td>
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