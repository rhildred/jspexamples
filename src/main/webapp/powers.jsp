<%@page contentType="text/plain; charset=UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="ca.on.conestogac.*"%>
<%

FunctionTest fTest = new FunctionTest(2);
fTest.power(2, out);

%>