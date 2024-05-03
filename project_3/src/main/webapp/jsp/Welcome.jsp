<%@page import="in.co.rays.project_3.controller.ORSView"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/demos/style.css">

<%
		UserDTO userDto2 = (UserDTO) session.getAttribute("user");

		boolean userLoggedIn2 = userDto2 != null;
		if (userLoggedIn2) {
		%>
<style>

body {
	background-image: url('<%=ORSView.APP_CONTEXT%>/img/user.jpg');
	background-size: cover;
	background-repeat: no-repeat;
}

.cl {
	/* font-family:;
	font-family: Monotype Corsiva;
	font-family: Footlight MT Light;
 */
	
}
</style>

 <div class="text-cs1" scrollamount="15" behavior="alternate">
			<h1 style="padding-top: 20%; color: red;  text-align: center;">
				<b class="cl">Welcome To Online Result System</b>
			</h1>
		
	</div> 
		
	</div>  
<% } else {
	%>
		<style>

body {
	background-image: url('<%=ORSView.APP_CONTEXT%>/img/indexxing.jpg');
	background-size: cover;
	background-repeat: no-repeat;
}

.cl {
	/*  font-family:;
	font-family: Monotype Corsiva;
	font-family: Footlight MT Light;
 */
	
}
</style>
 <div class="text-cs1" scrollamount="15" behavior="alternate">
			<h1 style="padding-top: 22%; color: green;  text-align: center;">
				<b class="cl">Welcome To Online Result System</b>
			</h1>
		
	</div> 
<%
} %>
</head>
<body class="img-fluid">
	<div class="header">
		<%@include file="Header.jsp"%>
	</div>
	<!-- <div class="text-cs1" scrollamount="15" behavior="alternate">
			<h1 style="padding-top: 19%; color: #db3832;  text-align: center;">
				<b class="cl">Welcome To Online Result System</b>
			</h1>
		
	</div>  -->
	<div class="footer">
		<%@include file="FooterView.jsp"%>
	</div>
</body>

</html>