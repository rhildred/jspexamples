<%@page contentType="application/json; charset=UTF-8"%>
<%@page import="ca.on.conestogac.*"%>
<%

WebClient oWebClient = new WebClient();

String sUrl = "http://api.flickr.com/services/feeds/photos_public.gne?id=51035594111@N01&format=json";

try
{
	out.println(oWebClient.downloadString(sUrl));
}
catch(Exception e)
{
	out.println("Exception " + e.getMessage());
}
finally
{
	oWebClient.dispose();
}


%>