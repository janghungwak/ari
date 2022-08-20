<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <style type="text/css">
  	a.adm{
  	     display: inline-block;
    	line-height: 100%;
    	margin-left: 10px;
    	padding: 3px 10px 5px 10px;
    	color: #fff;
    	border: 1px solid #fff;
  	}
  </style>
  <script type="text/javascript">
  function logout(){
	var frm = document.frm;
	frm.submit();
  }
  </script>
</head>
<body>
	<footer id="footer">
    <div class="last-div">
      <div class="container">
        <div class="row">
          <div class="copyright">
          <form name="frm" action="/logout" method="post">
            <div class="credits" style="float: left;">
            Copyright 2020. (주)아리 All Rights Reserved.<br>
              <!--
                All the links in the footer should remain intact. 
                You can delete the links only if you purchased the pro version.
                Licensing information: https://bootstrapmade.com/license/
                Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=eNno
              -->
              Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a><br>Directed by KIM&GWAK 
              <sec:authorize access="isAnonymous()">
              <a class="adm" href="/ari/login.do">ADMIN</a>
              </sec:authorize>
              <sec:authorize access="hasRole('ROLE_ADMIN')">
              <a class="adm" id="logout" href="javascript:logout();">LOGOUT</a>
              <sec:csrfInput/>
              </sec:authorize>
            </div>
           </form>
           <div style="float: left;">
          <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/" ><img alt="크리에이티브 커먼즈 라이선스" src="https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png" /></a>
			이 저작물은 <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">크리에이티브 커먼즈 저작자표시-비영리-변경금지 4.0 국제 라이선스</a>에 따라 이용할 수 있습니다. <br><br>
          </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <ul class="social-network">
            <li><a href="http://www.facebook.com" data-placement="top" title="Facebook"><i class="fa fa-facebook fa-1x"></i></a></li>
            <li><a href="http://www.twitter.com" data-placement="top" title="Twitter"><i class="fa fa-twitter fa-1x"></i></a></li>
            <li><a href="http://google.co.kr" data-placement="top" title="Google plus"><i class="fa fa-google-plus fa-1x"></i></a></li>
          </ul>
        </div>
      </div>
      <a href="#" class="scrollup"><i class="fa fa-chevron-up"></i></a>

    </div>
  </footer>
</body>
</html>