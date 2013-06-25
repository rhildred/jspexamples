<%@page contentType="text/plain; charset=UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%
	String sConn = application.getInitParameter("dburl"); 
	
	//"jdbc:mysql://localhost:53153/myjspapplication?user=admin55MwFMm&password=Uriyh8xJXPtV";

	Connection connection = null;
	PreparedStatement statement = null;
	ResultSet rs = null;

	try {

		Class.forName("com.mysql.jdbc.Driver").newInstance();

		connection = DriverManager.getConnection(sConn);
		out.println("Connection Succeeded");
		
		statement = connection.prepareStatement("SELECT * FROM test");
		
		rs = statement.executeQuery();
		
		while(rs.next())
		{
			out.println(rs.getString("theNumber"));
		}

		
		
		
		
	} catch (Exception e) {
		out.println("Exception " + e.getMessage());
	} finally {
		if(connection != null){
			connection.close();
		}
	}
%>