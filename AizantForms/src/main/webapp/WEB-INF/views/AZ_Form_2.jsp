<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/user_details_controller.js" /></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.js"></script>
<script
	src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.6.0.js"></script>
<script src="example.js"></script>
<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css"
	rel="stylesheet">

<meta charset="ISO-8859-1">
<title>AZ_FORM_2</title>
<style>
.allbody {
	border-style: double;
	margin: 30px;
}

#leftContainer {
	float: left;
}

#rightContainer {
	float: right;
}

#centerContainer {
	float: center;
}

#border {
	margin: 5px;
	padding: 5px;
	border-style: ridge;
}

.small {
	line-height: 80%;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
}

th {
	text-align: left;
}

.half {
	width: 50%;
	border: 1px solid red;
	float: left;
	display: inline;
}
</style>
</head>
<body>
	<div class="allbody">
		<div>
			<img src="http://allianceinstitute.org/placementlogos/aizant.jpg"
				alt="Aizant" align="right">
		</div>
		<br> <br> <br> <br> <br>
		<div id="leftContainer">
			<span>Form No.: CPF070/02</span>
		</div>
		<div id="rightContainer">
			<span>Reference SOP No.: CP079</span>
		</div>
		<br>

		<hr>
		<center>
			<h2>
				<u>CASE REPORT FORM</u>
			</h2>
		</center>
		<br>
		<div id="container" style="width: 100%;">
			<div id="left" style="float: left; width: 35%;">
				<b>CRF No.</b>
			</div>
			<div id="right" style="float: right; width: 65%;">
				<b>:</b> &emsp;<input type="text" ng-model="">
			</div>
			<br> <br>

			<div id="left" style="float: left; width: 35%;">
				<b>Project No.</b>
			</div>
			<div id="right" style="float: right; width: 65%;">
				<b>:</b> &emsp;<input type="text" ng-model="">
			</div>
			<br> <br>
			<div id="left" style="float: left; width: 35%;">
				<b>Project Title</b>
			</div>
			<div id="right" style="float: right; width: 65%;">
				<b>:</b> &emsp;
				<textarea rows="5" cols="80"></textarea>
			</div>
			<br> <br> <br> <br>
		</div>
		<hr color="#ffffff">
		<div id="container" style="width: 100%;">
			<div id="left" style="float: left; width: 35%;">
				<b>Protocol No.</b>
			</div>
			<div id="right" style="float: right; width: 65%;">
				<b>:</b> &emsp;<input type="text" ng-model="">
			</div>
			<br> <br>
			<div id="left" style="float: left; width: 35%;">
				<b>Protocol Version</b>
			</div>
			<div id="right" style="float: right; width: 65%;">
				<b>:</b> &emsp;<input type="text" ng-model="">
			</div>
			<br> <br>
		</div>
		<hr color="#000">
		<div id="container" style="width: 100%;">
			<div id="left" style="float: left; width: 40%;">
				<b>Period</b>
			</div>
			<div id="right" style="float: right; width: 60%;">
				<b>:</b> &emsp;<input type="text" ng-model="">
			</div>
			<br> <br>
			<div id="left" style="float: left; width: 40%;">
				<b>Registration No.</b>
			</div>
			<div id="right" style="float: right; width: 60%;">
				<b>:</b> &emsp;<input type="text" ng-model="" value="R">
			</div>
			<br> <br>
			<div id="left" style="float: left; width: 40%;">
				<b>Subject No.</b>
			</div>
			<div id="right" style="float: right; width: 60%;">
				<b>:</b> &emsp;<input type="text" ng-model="">
			</div>
			<br> <br>
			<div id="left" style="float: left; width: 40%;">
				<b>Date and Time of Reporting</b>
			</div>
			<div id="right" style="float: right; width: 60%;">
				<b>:</b> &emsp;<input type="date" ng-model=""><b>:</b>
				&emsp;<input type="time" ng-model="">
			</div>
			<br> <br>
			<div id="left" style="float: left; width: 40%;">
				<b>Date and Time of Check in</b>
				<!-- 			<p style="font-size: 10px;">(Clinical ward)</p> -->
				<br>
			</div>
			<div id="right" style="float: right; width: 60%;">
				<b>:</b> &emsp;<input type="date" ng-model=""><b>:</b>
				&emsp;<input type="time" ng-model="">
			</div>
			<br> <br>
			<div id="left" style="float: left; width: 40%;" align="left">
				<b>Date and Time of Check in</b>
				<p style="font-size: 10px;">(Clinical ward)</p>
			</div>
			<div id="right" style="float: right; width: 60%;">
				<b>:</b> &emsp;<input type="date" ng-model=""><b>:</b>
				&emsp;<input type="time" ng-model="">
			</div>
			<br> <br> <br>
			<table style="width: 100%">

				<tr>
					<td></td>
					<td align="center">Prepared By 
						
					
					</td>
					<td>
						<div ng-app="userDetails" ng-controller="userCtrl">
							<input type="text" ng-model="pinNumber "
								typeahead="user.details as user.pin for user in users">
							<pre>{{ pinNumber| json}}</pre>
						
						</div>

					</td>
					
					<td colspan="2" align="center">Reviewed By
						<table style="width: 100%">
							<tr>
								<td>PI</td>
								<td>QA</td>
							</tr>
						</table>
					</td>
				</tr>
				


				
				<tr>

					<td>Name</td>
					<td><input type="text" ng-model=""></td>
					<td><input type="text" ng-model=""></td>
					<td><input type="text" ng-model=""></td>
				</tr>
				<tr>

					<td>Sign & Date</td>
					<td><input type="file" ng-model=""><input type="date"
						ng-model=""></td>
					<td><input type="file" ng-model=""><input type="date"
						ng-model=""></td>
					<td><input type="file" ng-model=""><input type="date"
						ng-model=""></td>
				</tr>
			</table>
		</div>
	</div>
	<div align="center">
		<a href="#" class="btn btn-primary" type="button">SUBMIT</a>&emsp;&emsp;
		<a href="Form3" class="btn btn-primary">NEXT</a>
		<a href="SampleReport" class="btn btn-primary">print</a>
		
		
	</div>
	<!-- 	<a href="create_project" class="btn btn-primary">manage</a> -->
</body>
</html>