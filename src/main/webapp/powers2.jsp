<%@page contentType="text/plain; charset=UTF-8"%>
<%

int n = 2;

int nNew = 2;
while(nNew < 640)
{
	out.write("next power is " + (nNew * n) + "\n");
	nNew *= n;
}

%>