<%@page contentType="text/plain; charset=UTF-8"%>
<%

for(int i = 1; i <= 10; i++){
	switch(i)
	{
	case 1:
		out.println("this is the 1st time through");
		break;
	case 2:
		out.println("this is the 2nd time through");
	case 3:
		out.println("this is the 3rd time through the loop");
		break;
	default:
		out.println("looping is fun for the " + i + "th time");
	}
}

%>
