<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Bootstrap modals -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/ui-bootstrap-custom-2.5.0-csp.css" />
<script
	src="<%=request.getContextPath()%>/resources/js/ui-bootstrap-custom-2.5.0.min.js" /></script>
<script
	src="<%=request.getContextPath()%>/resources/js/ui-bootstrap-custom-tpls-2.5.0.min.js" /></script>

 <script
	src="<%=request.getContextPath()%>/resources/js/displaycontroller.js" /></script> 
<title>SUBJECT_FORM</title>
<style>
.allbody {
	border-style: double;
	margin: 30px;
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
</style>
</head>
<body ng-app="myApp">
	<div class="allbody" ng-controller="UserCtrl">
		<div id="container" style="width: 100%;">

			<center align="center">
				<h2>Welcome To Aizant Drug Research Solutions</h2>
			</center>
			<div align="right" style="float: right; width: 33%;"
				ng-repeat="s in names">
				<a href="${pageContext.servletContext.contextPath}/view_user?id={{s.id}}">View Profile</a>
			</div>

			<table style="width: 90%" align="center">
				<tr>
					<th>S.No</th>
					<th>SUBJECT NAME</th>
					<th>ACTION</th>
				</tr>
				<tr>
					<td>1</td>
					<th>Subject_1</th>
					<td><a href="Forms" class="btn btn-primary">Click Here</a></td>
				</tr>
				<tr>
					<td>2</td>
					<th>Subject_2</th>
					<td><a href="Forms" class="btn btn-primary">Click Here</a></td>
				</tr>
				<tr>
					<td>3</td>
					<th>Subject_3</th>
					<td><a href="Forms" class="btn btn-primary">Click Here</a></td>
				</tr>
				<tr>
					<td>4</td>
					<th>Subject_4</th>
					<td><a href="Forms" class="btn btn-primary">Click Here</a></td>
				</tr>
				<tr>
					<td>5</td>
					<th>Subject_5</th>
					<td><a href="Forms" class="btn btn-primary">Click Here</a></td>
				</tr>
				<tr>
					<td>6</td>
					<th>Subject_6</th>
					<td><a href="Forms" class="btn btn-primary">Click Here</a></td>
				</tr>
				<tr>
					<td>7</td>
					<th>Subject_7</th>
					<td><a href="Forms" class="btn btn-primary">Click Here</a></td>
				</tr>
				<tr>
					<td>8</td>
					<th>Subject_8</th>
					<td><a href="Forms" class="btn btn-primary">Click Here</a></td>
				</tr>
				<tr>
					<td>9</td>
					<th>Subject_9</th>
					<td><a href="Forms" class="btn btn-primary">Click Here</a></td>
				</tr>
				<tr>
					<td>10</td>
					<th>Subject_10</th>
					<td><a href="Forms" class="btn btn-primary">Click Here</a></td>
				</tr>
				<tr>
					<td>11</td>
					<th>Subject_11</th>
					<td><a href="Forms" class="btn btn-primary">Click Here</a></td>
				</tr>
				<tr>
					<td>12</td>
					<th>Subject_12</th>
					<td><a href="Forms" class="btn btn-primary">Click Here</a></td>
				</tr>
				<tr>
					<td>13</td>
					<th>Subject_13</th>
					<td><a href="Forms" class="btn btn-primary">Click Here</a></td>
				</tr>
				<tr>
					<td>14</td>
					<th>Subject_14</th>
					<td><a href="Forms" class="btn btn-primary">Click Here</a></td>
				</tr>
				<tr>
					<td>15</td>
					<th>Subject_15</th>
					<td><a href="Forms" class="btn btn-primary">Click Here</a></td>
				</tr>
				<tr>
					<td>16</td>
					<th>Subject_16</th>
					<td><a href="Forms" class="btn btn-primary">Click Here</a></td>
				</tr>
				<tr>
					<td>17</td>
					<th>Subject_17</th>
					<td><a href="Forms" class="btn btn-primary">Click Here</a></td>
				</tr>
				<tr>
					<td>18</td>
					<th>Subject_18</th>
					<td><a href="Forms" class="btn btn-primary">Click Here</a></td>
				</tr>
				<tr>
					<td>19</td>
					<th>Subject_19</th>
					<td><a href="Forms" class="btn btn-primary">Click Here</a></td>
				</tr>
				<tr>
					<td>20</td>
					<th>Subject_20</th>
					<td><a href="Forms" class="btn btn-primary">Click Here</a></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>