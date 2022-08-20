<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>              	  
  <script  src="https://code.jquery.com/jquery-3.4.1.min.js"  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="  crossorigin="anonymous"></script>
  <script  src="https://code.jquery.com/jquery-migrate-3.1.0.min.js"  integrity="sha256-ycJeXbll9m7dHKeaPbXBkZH8BuP99SmPm/8q5O+SbBc="  crossorigin="anonymous"></script>
  <script src="../../../smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>  
  <script src="../../../js/slick.js"></script>  
  <script src="../../../js/bootstrap.min.js"></script>
  <script src="../../../js/jquery.easing.1.3.js"></script>
  <script src="../../../js/jquery.isotope.min.js"></script> 
  <script src="../../../js/wow.min.js"></script> 
  <script src="../../../js/functions.js"></script> 
  <script src="../../../js/menuScript.js"></script> 
  <script src="../../../js/freeze-table.min.js"></script> 
  <script src="../../../js/jquery.bxslider.min.js"></script> 
  <script type="text/javascript" src="http://jsgetip.appspot.com"></script>

 <script type="text/javascript">
 
//F12 버튼 방지
  $(document).ready(function() {
 	$(document).bind('keydown', function(e) {
 		if (e.keyCode == 123 /* F12 */) {
 			e.preventDefault();
 			e.returnValue = false;
 		}
 	});
 }); 

 // 우측 클릭 방지
 document.onmousedown = disableclick;
 status = "마우스 우클릭은 사용하실 수 없습니다.";
 function disableclick(event) {
 	if (event.button == 2) {
 		alert(status);
 		return false;
 	}
 }

</script>  