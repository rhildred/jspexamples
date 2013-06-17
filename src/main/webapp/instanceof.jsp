<%@page contentType="text/plain; charset=UTF-8"%>
<%@page import="java.util.*"%>
<%

	String sHello = "hello world";
	int nInt = 10;
	Object oHello = nInt;
	//Object oHello = sHello;
	if(oHello instanceof String)
	{
		out.println(oHello + " is a String");
	}
	else
	{
		out.println(oHello + " isn't a string");
	}
	
%>