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
		
		// find out the "action"
		
		String sAction = request.getParameter("action");
		
		if(sAction.equals("add"))
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
		else
		{
			// delete from database

			PreparedStatement stmt = connection.prepareStatement("DELETE FROM test WHERE id = ?");
			int n1 = Integer.parseInt(request.getParameter("id"));
			stmt.setInt(1, n1);
			
			int nRows = stmt.executeUpdate();
			if(nRows != 1){
				throw new Exception(nRows + " deleted expected 1");
			}
		}		
	}
	
	PreparedStatement stmt = connection.prepareStatement("SELECT id, theNumber FROM test ORDER BY id");
	ResultSet rs = stmt.executeQuery();
	
	while(rs.next())
	{
		sResults += "<p><input type=\"button\" class=\"deleteButton\" value=\"Delete\" id=\""
			+ rs.getString("id") + "\" />"
			+ rs.getString("theNumber") + "</p>";
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