<%@page contentType="application/json; charset=UTF-8"%>
<%@page import="org.json.simple.*"%>
<%@page import="java.util.*"%>
<%
List  l1 = new LinkedList();
//note a single Random object is reused here
Random randomGenerator = new Random();

for(int i = 0; i < 10; i++){
	Map m1 = new HashMap();
	m1.put("X", i);
	m1.put("Y", randomGenerator.nextInt(40));
	l1.add(m1);
}
Map m2 = new HashMap();
m2.put("values", l1);
out.print(JSONValue.toJSONString(m2));
out.flush();
%>
