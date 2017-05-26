<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<title>AIZANT::Assign Forms</title>
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
	src="<%=request.getContextPath()%>/resources/js/Assign_forms_controller.js" /></script>
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
<body >
	<br>
	<br>
	<br>
	<div >
		<div id="signupbox"
			margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">
						<b>Assign forms</b>
					</div>
				</div>
				<div class="panel-body">


					<form:errors path="*" cssClass="errStyle" element="div" />
					<table class="table table-hover table-bordered">
						<tbody ng-app="myApp" ng-controller="FormsCtrl">
							<tr>
								<th>Project Number</th>
								<td><select style="width: 50%"; class="form-control" ng-model="selectedSource"
									ng-options="source.name for source in sourceList">
										<option value="">-- Select item --</option>
								</select></td>


							</tr>
							<tr>
								<th>CRF Number</th>
								<td><select  style="width: 50%"; class="form-control" ng-model="selectedItem"
									ng-options="item.name for item in selectedSource.suboptions">
										<option value="">-- Select item --</option>
								</select></td>
							</tr>
							<tr>
								<th>Forms</th>
								<td><select style="width: 50%"; class="form-control" multiple="multiple">
											
											<option value="AZ_Form_2">AZ_FORM_2</option>
											<option value="AZ_Form_3">AZ_FORM_3</option>
											<option value="AZ_Form_4">AZ_FORM_4</option>
											<option value="AZ_Form_5">AZ_FORM_5</option>
											<option value="AZ_Form_6">AZ_FORM_6</option>
											<option value="AZ_Form_7">AZ_FORM_7</option>
											<option value="AZ_Form_8">AZ_FORM_8</option>
											<option value="AZ_Form_9">AZ_FORM_9</option>
											<option value="AZ_Form_10">AZ_FORM_10</option>
											<option value="AZ_Form_11">AZ_FORM_11</option>
											<option value="AZ_Form_12">AZ_FORM_12</option>
											<option value="AZ_Form_13">AZ_FORM_13</option>
											<option value="AZ_Form_14">AZ_FORM_14</option>
											<option value="AZ_Form_15">AZ_FORM_15</option>
											<option value="AZ_Form_16">AZ_FORM_16</option>

								</select></td>
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