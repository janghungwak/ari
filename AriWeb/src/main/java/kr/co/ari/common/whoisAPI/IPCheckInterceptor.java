package kr.co.ari.common.whoisAPI;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.ObjectUtils;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class IPCheckInterceptor extends HandlerInterceptorAdapter {
	
	private static String LOCAL_HOST = "127.0.0.1";
	private static String KOREA_COUNTRY_CODE = "KR";
	
	@Autowired
	private WSOpenAPIService WSService;

	@Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
	
		String clientIp = request.getHeader("X-Forwarded-For");
	    if (ObjectUtils.isEmpty(clientIp) || "unknown".equalsIgnoreCase(clientIp)) {
	        clientIp = request.getHeader("Proxy-Client-IP");
	    }
	    if (ObjectUtils.isEmpty(clientIp) || "unknown".equalsIgnoreCase(clientIp)) {
	        clientIp = request.getHeader("WL-Proxy-Client-IP");
	    }
	    if (ObjectUtils.isEmpty(clientIp) || "unknown".equalsIgnoreCase(clientIp)) {
	        clientIp = request.getHeader("HTTP_CLIENT_IP");
	    }
	    if (ObjectUtils.isEmpty(clientIp) || "unknown".equalsIgnoreCase(clientIp)) {
	        clientIp = request.getHeader("HTTP_X_FORWARDED_FOR");
	    }
	    if (ObjectUtils.isEmpty(clientIp) || "unknown".equalsIgnoreCase(clientIp)) {
	        clientIp = request.getRemoteAddr();
	    }
		
	    // cafe24에서 IP추출한 정보 러시아 IP
	    //clientIp = "178.214.245.217";
	    
	    if(!LOCAL_HOST.equals(clientIp)) {
	    	Map<String,String> clientInfo = WSService.getClientInfoByIPAddress(clientIp);
	    	
	    	if(clientInfo == null) {
	    		System.out.println("IP에 대한 클라이언트 정보 조회에 실패하였습니다.");
	    		return false;
	    	}
	    	
	    	String country = clientInfo.get("countryCode");

	    	if(!KOREA_COUNTRY_CODE.equals(country)) {
	    		System.out.println("해외 IP가 감지되었습니다. 접근을 차단합니다. IP : " + clientIp + ", Country : " + country );
	    		return false;
	    	}
	    }
	    
	    return true;
	}

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}
}
