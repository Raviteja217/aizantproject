<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table class="table table-user-information">
									<tbody>
										
										<tr>
											<td>User Name:</td>
											<td>${user.username}</td>
										</tr>
										<tr>
											<td>Authority</td>
											<td>${user.role}</td>
										</tr>

										<tr>
										<tr>
											<td>Signature</td>
											<td>${user.image}</td>
										</tr>

									</tbody>
								</table>
 <i class="glyphicon glyphicon-bookmark"></i>${user.role}</p>
                          <img
					src='<x:url value="/resources/images/${user.image}"/>' />
                         
</body>
</html>