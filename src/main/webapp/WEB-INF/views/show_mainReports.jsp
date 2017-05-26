<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<html>
<head>
<link rel="stylesheet"
	href='<x:url value="/resources/css/bootstrap.min.css"></x:url>' />
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 25px;
}

container {
	padding: 25cm;
	margin-top: 5cm;
	margin-bottom: 5cm;
}
</style>
</head>
<br>
<br>
<br>
<br>
<body>


	<%--  <h1>Welcome... <%=session.getAttribute("loggedInUser")%></h1>
    <div class="container"> --%>

	<div ng-app="myApp" ng-controller="reportsCtrl">
		<!-- <input type="text" class="form-control" ng-model="searchBy.name"/> -->

		<div class="container">
			<%-- div class="row"> <div
		class="col-md-5 toppad pull-right col-md-offset-3 "> <A
		href="#"><%=session.getAttribute("loggedInUser")%></A> <A
		href="${pageContext.request.contextPath}/Logout">Logout</A> <br>
		</div> --%>
			<div>
				<div
					class="col-xs-0 col-sm-0 col-md-0 col-lg-0
		col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-0
		toppad">
					<div class="panel panel-info">
						<div class="panel-heading">
							<%-- <h3 class="panel-title">${user.username}</h3> --%>
							<div class="panel-title">Reports</div>
							</span>

						</div>
						<div class="panel-body">
							<div>
								<div align="center"></div>

								<table class="table table-hover table-bordered">
									<tr>
										<th>Project Number</th>
										<th>CRF Number</th>
										<th>Project Title</th>
										<th>Protocol Number</th>
										<th>Protocol Version</th>
										<th>Period Number</th>
										<th>Registration Number</th>
										<th>Subject Number</th>
										<th>Actions</th>
									</tr>
									<tr ng-repeat="x in names | filter:searchBy">
										<td>{{x.projectNo}}</td>
										<td>{{x.crfNo}}</td>
										<td>{{x.projectTitle}}</td>
										<td>{{x.protocolNo}}</td>
										<td>{{x.protocolVersion}}</td>
										<td>{{x.periodNo}}</td>
										<td>{{x.registrationNo}}</td>
										<td>{{x.subjectNo}}</td>

										<td>
											<%-- <a href="${pageContext.servletContext.contextPath}/viewproduct?id={{x.id}}"><span>View</span></a>
     --%> <a
											href="${pageContext.servletContext.contextPath}/edit_mainReport?id={{x.id}}"><span
												class="glyphicon glyphicon-pencil"></span></a> <a
											href="${pageContext.servletContext.contextPath}/deleteReport?id={{x.id}}"><span
												class="glyphicon glyphicon-trash"></span></a>


										</td>
									</tr>

								</table>
							</div>

							<div align="right">
								<a href="create_mainReport"><span
									class="glyphicon glyphicon-plus"></span> click here to add
									Report</a>
							</div>
							<br>

						</div>

					</div>
				</div>

			</div>
		</div>
		<a></a>
		<script>
			var app = angular.module('myApp', []);
			app.controller('reportsCtrl', function($scope, $http) {
				$http.get("list2").then(function(response) {
					$scope.names = response.data;
				});
			});
		</script>
	</div>
</body>
</html>
