<%@page contentType="text/plain; charset=UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%
	String sConn = "jdbc:mysql://localhost:52352/myjspapplication?user=admin55MwFMm&password=Uriyh8xJXPtV";

	Connection connection = null;

	try {

		Class.forName("com.mysql.jdbc.Driver").newInstance();

		connection = DriverManager.getConnection(sConn);
		out.println("Connection Succeeded");
	} catch (Exception e) {
		out.println("Exception " + e.getMessage());
	} finally {
		//connection.close();
	}
%>