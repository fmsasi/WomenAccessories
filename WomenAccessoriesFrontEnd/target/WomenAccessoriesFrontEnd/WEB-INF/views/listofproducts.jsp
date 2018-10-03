<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<div class="container">
	<b>List of Products</b>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Product Name</th>
					<th>Price</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
			<!-- For each object in the list, tr has to be repeated -->
			<!--  items refers to the collection of objects -->
			<!-- var is local variable ,takes objects one by one from the collection -->
			<c:forEach var="p" items="${productsList }" >
				<tr>
					<td>${p.productname }</td><td>${p.price }</td>
					<td>
					<a href=""><span class="glyphicon glyphicon-info-sign"></span></a>
					<a href=""><span class="glyphicon glyphicon-trash"></span></a>
					<a href=""><span class="glyphicon glyphicon-pencil"></span></a>
					</td>

				</tr>
			</c:forEach>
			</tbody>
		</table>

	</div>
</body>
</html>