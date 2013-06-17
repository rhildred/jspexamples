<%@page contentType="text/plain; charset=UTF-8"%>
<%@page import="java.util.*"%>
<%

	String [] myStrings = new String [] {"string1", "string2", "string3", "string4"};
	
//	for(String sCurrent: myStrings)
	for(int i = 0; i < myStrings.length; i++)
	{
		//out.println(sCurrent);
		if(i != 0)
		{
			out.print(", ");
		}
		out.print(myStrings[i]);
	}

%>