<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<title>AIZANT::Adduser</title>
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
<style type="text/css">
.errStyle {
	color: red;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>
<body>
	<br>
	<br>
	<br>
	<div class="container" ng-app="imgApp" ng-controller="imgCtrl">
		<div id="signupbox"
			margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Create Project</div>
				</div>
					<div class="panel-body">

					<c:url var="create_project" value="create_project"></c:url>
					<form:form commandName="CreateProject" method="post" action="store_project">
						<form:errors path="*" cssClass="errStyle" element="div" />
							<table class="table table-user-information">
							<tbody>
								<tr>
									<td><form:label path="projectNo">Project Number </form:label></td>
									<td><form:input path="projectNo" type="text" style="width:50%" />
										<font color="red"><form:errors path="projectNo"></form:errors></font></td>
								</tr>
								<tr>
									<td><form:label path="projectDes">Description </form:label></td>
									<td><form:textarea path="projectDes" rows="2" cols="25"
											 /> <font
										color="red"><form:errors path="projectDes"></form:errors></font></td>
								</tr>
								
								<td><input type="submit" value="submit" class="btn-success" /></td>
								<td><input type="reset" value="reset" class="btn-defult" /></td>
							</tbody>
						</table>
							</tbody>
						
					</form:form>

				</div>
			</div>
		</div>
	</div>




</body>
</html>
