<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>User Feedback | Feedback APP</title>
    <%@include file="./components/styles.jsp" %>
  </head>
  <body>
  	<%@include file="./components/header.jsp" %>
  	
  	<h2 class="text-center my-3">Feedback Page</h2>
  	
  	<table class="container table table-striped-columns">
  		<tr>
  			<th>Name</th>
  			<th>Phone</th>
  			<th>Email</th>
  			<th>Feedback</th>
  		</tr>
  		<tr>
  			<td><%= request.getAttribute("name") %></td>
  			<td><%= request.getAttribute("phone") %></td>
  			<td><%= request.getAttribute("email") %></td>
  			<td><%= request.getAttribute("feedback") %></td>
  		</tr>
  	</table>
    
    <%@include file="./components/scripts.jsp" %>
  </body>
</html>
