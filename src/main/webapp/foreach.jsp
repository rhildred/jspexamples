<%@page contentType="text/plain; charset=UTF-8"%>
<%@page import="java.util.*"%>
<%

	String [] myStrings = new String [] {"string1", "string2", "string3", "string4"};

	for(String sCurrent: myStrings)
	{
		out.println(sCurrent);
	}

%>