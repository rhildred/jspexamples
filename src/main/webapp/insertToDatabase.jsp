<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="ca.on.conestogac.*"%>
<%

String sResults = "";
Connection connection = null;
try
{
	connection = OpenShiftDataSource.getConnection(application.getInitParameter("dburl"));
	
	if(request.getMethod().equalsIgnoreCase("post"))
	{
		// insert into database
		
		PreparedStatement stmt = connection.prepareStatement("INSERT INTO test(theNumber) VALUES (?)");
		int n1 = Integer.parseInt(request.getParameter("number"));
		stmt.setInt(1, n1);
		
		int nRows = stmt.executeUpdate();
		if(nRows != 1){
			throw new Exception(nRows + " inserted expected 1");
		}
	}
	
	PreparedStatement stmt = connection.prepareStatement("SELECT theNumber FROM test ORDER BY id");
	ResultSet rs = stmt.executeQuery();
	
	while(rs.next())
	{
		sResults += "<p>" + rs.getString("theNumber") + "</p>";
	}

}
catch(Exception e)
{
	sResults = "Exception " + e.getMessage();
}
finally
{
	if(connection != null)
	{
		connection.close();
	}
}
%>
<%= sResults %>