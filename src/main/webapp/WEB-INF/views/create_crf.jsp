<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<title>AIZANT::Addcrfs</title>
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
	
</head>
<body ng-app="myApp" ng-controller="projectsCtrl">
	<!-- ng-app="myApp" ng-controller="myController" -->


	<br>
	<br>
	<br>

	<div class="container" ng-app="myApp" ng-controller="projectsCtrl">
		<div id="signupbox"
			margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Create CRF</div>
				</div>
				<div class="panel-body">
					<form:form commandName="CrfNumber" method="post" action="store_crf">
					
							<table class="table table-user-information">
								<tr>
									<td>Project Number:</td>
									<td>
										<form:select path="project_Number" style="width:58%">
											<option value="">SELECT</option>
											<option ng-repeat="x in names" value="{{x.projectNo}}">{{x.projectNo}}</option>
										</form:select>
									</td>
								</tr>

								<tr>
									<td>CRF Number:</td>
									<td>
										<form:input path="crf_Number" ng-repeat="x in random_array"
											name="point{{$index}}" />
										<br>
										</td>
										<td><span ng-click="add_input()" class="glyphicon glyphicon-plus"></span></td><br>
								</tr>
							</table>

							<br>
							<tr>
								<td colspan="2" align="center"><input type="submit"
									value="submit" class="btn-success" /></td>
							</tr>
							
							</div>
						</table>
					</form:form>

				</div>
			</div>
		</div>
	</div>
	<!-- <script>
			var app = angular.module("myApp", []);
			app.controller("myController", [ "$scope", function($scope) {
				$scope.random_array = [ 0 ]
				$scope.add_input = function() {
					var i = $scope.random_array.length
					$scope.random_array.push(i)
				}
			} ]);
		</script> -->
	<script>
		var app = angular.module('myApp', []);
		app.controller('projectsCtrl', function($scope, $http) {
			$http.get("list1").then(function(response) {
				$scope.names = response.data;
				$scope.random_array = [ 0 ]
				$scope.add_input = function() {
					var i = $scope.random_array.length
					$scope.random_array.push(i)
				}
			});
		});
	</script>
	</div>



</body>
</html>