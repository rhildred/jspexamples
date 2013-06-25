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
	
	// insert into database
	
	PreparedStatement stmt = connection.prepareStatement("INSERT INTO test(theNumber) VALUES (?)");
	Random randomGenerator = new Random();
	stmt.setInt(1, randomGenerator.nextInt(100));
	
	int nRows = stmt.executeUpdate();
	if(nRows != 1){
		throw new Exception(nRows + " inserted expected 1");
	}
	
	out.println(nRows + " row(s) inserted");
	
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