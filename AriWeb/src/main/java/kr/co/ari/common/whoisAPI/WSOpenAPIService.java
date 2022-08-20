package kr.co.ari.common.whoisAPI;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.aspectj.apache.bcel.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class WSOpenAPIService implements Constants{
	
	@Value("${whois.api.key}")
	private String apiKey; 
	
	@Value("${whois.api.uri}")
	private String apiUri; 
	
	@Autowired
	private CloseableHttpClient closeableHttpClient;
	
	@Autowired
	private RequestConfig requestConfig;
	
	public Map<String,String> getClientInfoByIPAddress(String ip) {
		
		ObjectMapper objectMapper = null;

		try {
			List<NameValuePair> nameValuePairs= new ArrayList<NameValuePair>();
			
			nameValuePairs.add(new BasicNameValuePair("query",ip));
			nameValuePairs.add(new BasicNameValuePair("key",apiKey));
			nameValuePairs.add(new BasicNameValuePair("answer","json"));
			
			HttpGet httpGet = new HttpGet(apiUri);
			httpGet.setConfig(requestConfig);
			httpGet.addHeader("Content-type", "application/json");
			
			URI uri = new URIBuilder(httpGet.getURI())
					.addParameters(nameValuePairs)
					.build();

			httpGet.setURI(uri);
			
			CloseableHttpResponse response = closeableHttpClient.execute(httpGet);

			int statusCode = response.getStatusLine().getStatusCode();
			
			if(statusCode == HttpStatus.OK.value()) {
				String json = EntityUtils.toString(response.getEntity(), "UTF-8");
				System.out.println("WHO IS API Response json : "+json);
				objectMapper = new ObjectMapper();
				
				Map<String,Map<String,String>> map = objectMapper.readValue(json, Map.class);

				return map.get("whois");
				
			}
			return null;
		} catch (ClientProtocolException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return null;
		} catch (URISyntaxException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return null;
		} catch (IOException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return null;
		}
	}
	
}