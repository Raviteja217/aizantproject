<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<title>AIZANT::Privilege s</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/Privileges_controller.js" /></script>
<style type="text/css">
.errStyle {
	color: red;
	font-style: italic;
	font-weight: bold;
}

#leftContainer {
	float: left;
}

#rightContainer {
	float: right;
}
</style>
</head>
<body>
	<br>
	<br>
	<br>
	<div class="container">
		<div id="signupbox"
			margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">
						<b>Create Privileges</b>
					</div>
				</div>
				<div class="panel-body">


					<form:errors path="*" cssClass="errStyle" element="div" />
					<table class="table table-hover table-bordered">
						<tbody ng-app="myApp" ng-controller="PrivilegesCtrl">
							<tr>
								<th>User Name:</th>
								<td><select class="form-control"  path="username" style="width:58%">
										<option value="">SELECT</option>
										<option ng-repeat="x in names" value="{{x.username}}">{{x.username}}</option>
									</select></td>
							</tr>
							<tr>
								<th>Project Number</th>
								<td><select class="form-control"  id="country" ng-model="states"
									ng-options="country for (country, states) in countries track by country">
										<option value=''>Select</option>
								</select> </select></td>


							</tr>
							<tr>
								<th>CRF Number</th>
								<td><select  class="form-control"  id="state" ng-disabled="!states"
									ng-model="cities" ng-options="state for (state,city) in states"><option
											value=''>Select</option></select> </select></td>
							</tr>
							<tr>
								<th>Forms</th>
								<td><select  class="form-control"  id="city" ng-disabled="!cities || !states"
									ng-model="city"><option value=''>Select</option>
										<option ng-repeat="city in cities" value='{{city}}'>{{city}}</option></select></td>
							</tr>



						</tbody>

					</table>
					<input type="submit" value="submit" class="btn btn-primary" />
					&emsp;<input type="reset" value="reset" class="btn btn-info" /><br>
					<br>
					<div id="leftContainer">
						<a href="Admin"><span class="glyphicon glyphicon-menu-left"></span>Home</a>
					</div>
					<div id="rightContainer">

						<a href="#"><span class="glyphicon glyphicon-plus"></span>
							click here to Assign Forms</a>
					</div>

				</div>
			</div>
		</div>
	</div>




</body>
</html>