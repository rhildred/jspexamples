<%@page contentType="text/plain; charset=UTF-8"%>
<%@page import="java.util.*"%>
<%


ILOOP: for(int i = 0; i < 10; i++)
{	
	if(i == 5)
	{
		continue ILOOP;
	}
	out.println("I am on the " + i + "th one");
}

%>