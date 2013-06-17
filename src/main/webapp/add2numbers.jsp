
<%
	String sResults = "";
	try {
		int n1 = Integer.parseInt(request.getParameter("number1"));
		int n2 = Integer.parseInt(request.getParameter("number2"));
		int nSum = n1 + n2;
		sResults = String.format("The sum of %d and %d is %d", n1, n2,
				nSum);
	} catch (Exception e) {
		sResults = "Exception " + e.getMessage();
	}
%>
<!Doctype html>
<html>
<head>
<title>Add 2 numbers</title>
</head>
<body>
	<h1>Add 2 numbers</h1>
	<form method="post" action="">
		<p>
			<label for="number1">Enter First Number</label><br /> <input
				type="text" id="textInput1" name="number1" />
		</p>
		<p>
			<label for="number2">Enter Second Number</label><br /> <input
				type="text" id="textInput2" name="number2" />
		</p>
		<input type="submit" id="submitButton" value="Add" />
	</form>
	<div id="results"><%=sResults%></div>
</body>
<script type="text/javascript"
	src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript">
	jQuery("#submitButton").click(function() {
		jQuery("#results").html("<img src=\"images/turningArrow.gif\" />");
		var oData = {
			number1 : jQuery("#textInput1").val(),
			number2 : jQuery("#textInput2").val()
		};
		jQuery("#results").load("add2numbers.jsp #results", oData);
		return false;
	});
</script>
</html>