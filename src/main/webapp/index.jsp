<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
  org.apache.log4j.Logger logger = org.apache.log4j.Logger.getLogger(Object.class);

	Object counterObj = session.getAttribute("counter");
	int counter = 0;
	if(counterObj != null && counterObj instanceof Integer) {
		counter = ((Integer) counterObj).intValue();
	}
	counter++;
	session.setAttribute("counter",new Integer(counter));
	
	logger.info("CECI EST TEST");
	
	//Thread.sleep(200000);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cluster Test</title>
</head>
<body>
	<h1>Socle Test V1.1.1.?</h1>
	<p>You have visited this application <%= counter %> times.</p>
	<br/>
	<p>This page is being served from <b><%= request.getServerName() %>:<%= request.getServerPort() %></b></p>
	<br/>
	<p>The user is <b><%= request.getRemoteUser() %></b></p>
	<br/>
	<p>The id session is <b><%= session.getId() %></b></p>
	<br/>
	<p>The id node is <b><%= System.getProperty("jboss.node.name") %></b></p>
	<br/>
	<p>The host name is <b><%= System.getProperty("jboss.host.name") %></b></p>
	<br/>
</body>
</html>
