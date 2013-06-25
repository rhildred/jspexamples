<%@page contentType="text/plain; charset=UTF-8"%>
<%@page import="java.util.*"%>
<%

out.println("Database Credentials");
out.println("My Database Password is " + System.getenv("OPENSHIFT_MYSQL_DB_PASSWORD"));
out.println("My Database Username is " + System.getenv("OPENSHIFT_MYSQL_DB_USERNAME"));

%>