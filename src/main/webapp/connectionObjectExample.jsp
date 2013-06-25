<%@page contentType="text/plain; charset=UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="ca.on.conestogac.*"%>
<%

Connection connection = null;
try
{
	connection = OpenShiftDataSource.getConnection(application.getInitParameter("dburl"));
	out.println("Connected to database");
}
catch(Exception e)
{
	out.println("Exception " + e.getMessage());
}
finally
{
	if(connection != null)
	{
		connection.close();
	}
}

%>