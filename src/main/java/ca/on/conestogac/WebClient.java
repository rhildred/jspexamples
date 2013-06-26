package ca.on.conestogac;

import java.io.*;

import org.apache.http.client.*;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.*;

public class WebClient {
	
	private DefaultHttpClient httpClient;
	
	public WebClient()
	{
		this.httpClient = new DefaultHttpClient();
	}

	public void dispose()
	{
		this.httpClient.getConnectionManager().shutdown();
	}

	public String downloadString(String sUrl) throws ClientProtocolException,
			IOException {

		// put the URL in a HttpGet
		HttpGet getRequest = new HttpGet(sUrl);

		// Create a response handler that will create a String on our behalf 
		ResponseHandler<String> responseHandler = new BasicResponseHandler();
		
		// Execute the request with the responseHandler
		return this.httpClient.execute(getRequest,
				responseHandler);
	}
	
}