<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div class="row">
	  <div class="col-md-6 col-md-offset-3">
	    <div class="blogs">
	      <div class="text-center">
	        <h2>ORGANIZATION CHART</h2>
	        <p>(주)아리의 체계적인 조직도만큼 체계적이고 완벽한 제품생산을 통해<br>고객님들께 최고의 품질을 약속드리겠습니다.</p>
	      </div>
	      <hr>
	      <img src="../../../img/orgChart.png" class="img-responsive" style="width:100%;">
	    </div>
	  </div>
	</div>

	<div class="container">
		<div class="row">
	 			<div class="col-md-6 col-md-offset-3">
				<div class="blogs">
					<div class="text-center">
						<h2>LOCATION</h2>
							<p>(주)아리를 찾아오시는 길입니다.</p>
					</div>
	     				<hr>
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
</body>
</html>