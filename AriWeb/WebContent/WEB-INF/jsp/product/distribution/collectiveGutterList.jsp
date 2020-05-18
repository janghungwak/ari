<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
$(document).ready(function(){
	
	 $('#slick_collectiveGutterSlide').slick({
		slidesToShow : 1,		// 한 화면에 보여질 컨텐츠 개수
		slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
		fade:true,
		arrows : false, 		// 옆으로 이동하는 화살표 표시 여부
		centerMode : true,
		asNavFor:'#slick_collectiveGutterSlide_nav',
	});

	$('#slick_collectiveGutterSlide_nav').slick({
		slidesToShow : 2,		// 한 화면에 보여질 컨텐츠 개수
		slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
		asNavFor:'#slick_collectiveGutterSlide',
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
						<p>아리에서 생산하는 집합계량기의 제품사진입니다.</p>
					</div>
					<hr>
					<div class="slick-div">
						<div id="slick_collectiveGutterSlide">
							<div><img src="../../../../img/product/distribution/collectiveGutter/collectiveGutter1.gif"/></div>
							<div><img src="../../../../img/product/distribution/collectiveGutter/collectiveGutter2.gif"/></div>
						</div>
					</div>
	
					<div class="slick-nav">
						<div id="slick_collectiveGutterSlide_nav">
							<div><img src="../../../../img/product/distribution/collectiveGutter/collectiveGutter1.gif"/></div>
							<div><img src="../../../../img/product/distribution/collectiveGutter/collectiveGutter2.gif"/></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="collectiveGutterSlideMemo text-center">
			※ 주문제작으로 별도 문의 부탁드립니다. ※
		</div>
	</div>
</body>
</html>