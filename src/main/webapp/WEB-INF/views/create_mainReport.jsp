<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<title>AIZANT::Addreport</title>
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
					<div class="panel-title">Create MainReport</div>
				</div>
				<div class="panel-body">

					<c:url var="create_mainReport" value="create_mainReport"></c:url>
					<form:form commandName="MainReport" method="post"
						action="store_mainReport">
						<form:errors path="*" cssClass="errStyle" element="div" />
						<table class="table table-user-information">
							<tbody>
								<tr>
									<td><form:label path="projectNo">Project Number </form:label></td>
									<td><form:input path="projectNo" type="text"
											style="width:30%" /> <font color="red"><form:errors
												path="projectNo"></form:errors></font></td>
								</tr>
								<tr>
									<td><form:label path="crfNo">CRF Number</form:label></td>
									<td><form:input path="crfNo" type="text" style="width:50%" />
										<font color="red"><form:errors path="crfNo"></form:errors></font></td>
								</tr>
								<tr>
									<td><form:label path="projectTitle">ProjectTitle </form:label></td>
									<td><form:textarea path="projectTitle" rows="2" cols="25"
											style="width:75%" /> <font color="red"><form:errors
												path="projectTitle"></form:errors></font></td>
								</tr>
								<tr>
									<td><form:label path="protocolNo">Protocol Number </form:label></td>
									<td><form:input path="protocolNo" type="text"
											style="width:50%" /> <font color="red"><form:errors
												path="protocolNo"></form:errors></font></td>
								</tr>
								<tr>
									<td><form:label path="protocolVersion">Protocol Version </form:label></td>
									<td><form:input path="protocolVersion" type="text"
											style="width:50%" /> <font color="red"><form:errors
												path="protocolVersion"></form:errors></font></td>
								</tr>
								<tr>
									<td><form:label path="periodNo"> Period Number </form:label></td>
									<td><form:input path="periodNo" type="text"
											style="width:20%" /> <font color="red"><form:errors
												path="periodNo"></form:errors></font></td>
								</tr>
								<tr>
									<td><form:label path="registrationNo">Registration Number  </form:label></td>
									<td><form:input path="registrationNo" type="text"
											style="width:30%" /> <font color="red"><form:errors
												path="registrationNo"></form:errors></font></td>
								</tr>
								<tr>
									<td><form:label path="subjectNo"> Subject Number </form:label></td>
									<td><form:input path="subjectNo" type="text"
											style="width:20%" /> <font color="red"><form:errors
												path="subjectNo"></form:errors></font></td>
								</tr>

								<td><input type="submit" value="submit" class="btn-success" /></td>
								<td><input type="reset" value="reset" class="btn-defult" /></td>
							</tbody>
						</table>
						</tbody>
						</table>
					</form:form>

				</div>
			</div>
		</div>
	</div>




</body>
</html>