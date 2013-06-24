package ca.on.conestogac;

import java.io.*;

import org.apache.http.client.*;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.*;

public class WebClient {
	
	public String downloadString(String sUrl) throws ClientProtocolException, IOException
	{
		DefaultHttpClient httpClient = new DefaultHttpClient();
		try {

			HttpGet getRequest = new HttpGet(sUrl);
			getRequest.addHeader("accept", "application/json");

            System.out.println("executing request " + getRequest.getURI());

            // Create a response handler
            ResponseHandler<String> responseHandler = new BasicResponseHandler();
            String responseBody = httpClient.execute(getRequest, responseHandler);
            System.out.println("----------------------------------------");
            System.out.println(responseBody);
            System.out.println("----------------------------------------");
            return responseBody;
 		}
		finally{
			httpClient.getConnectionManager().shutdown();
		}
	}

}
