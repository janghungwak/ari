(function ($) {

	$(window).scroll(function () {
    if ($(this).scrollTop() > 100) {
      $('.scrollup').fadeIn();
    } else {
      $('.scrollup').fadeOut();
    }
  });
  $('.scrollup').click(function () {
    $("html, body").animate({
      scrollTop: 0
    }, 1000);
    return false;
  });

  wow = new WOW({}).init();

})(jQuery);

(function($){
	
	$(document).ready(function(){
		//Cannot read property 'add' of null 에러방지를 위해 unslick 설정  
		//$('.slick_slide').slick("unslick");
		
		$('.slick_slide').slick({
			slidesToShow : 1,		// 한 화면에 보여질 컨텐츠 개수
			slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
			fade:true,
			arrows : false, 		// 옆으로 이동하는 화살표 표시 여부
			centerMode : true,
			asNavFor:'.slick_slide_nav',
		});

		$('.slick_slide_nav').slick({
			slidesToShow : 3,		// 한 화면에 보여질 컨텐츠 개수
			slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
			asNavFor:'.slick_slide',
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
})(jQuery);