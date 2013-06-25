<%@page contentType="application/json; charset=UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*" %>
<%@page import="org.apache.http.*" %>
<%@page import="org.apache.http.client.methods.*" %>
<%@page import="org.apache.http.impl.client.*" %>
<%

String sUrl = "http://api.flickr.com/services/feeds/photos_public.gne?id=51035594111@N01&format=json";

DefaultHttpClient httpClient = new DefaultHttpClient();
try {

	HttpGet getRequest = new HttpGet(
			sUrl);
	getRequest.addHeader("accept", "application/json");

	HttpResponse rRemote = httpClient.execute(getRequest);

	HttpEntity oEntity = rRemote.getEntity();
	BufferedReader br = new BufferedReader(
			new InputStreamReader(oEntity.getContent()));
	long nLength = oEntity.getContentLength();
	char[] buffer = new char[(int)nLength];
	
	br.read(buffer);
	
	out.write(buffer, 0, (int)nLength);
}
catch(Exception e)
{
	out.println(e.getMessage());
}
finally{
	httpClient.getConnectionManager().shutdown();
}

%>