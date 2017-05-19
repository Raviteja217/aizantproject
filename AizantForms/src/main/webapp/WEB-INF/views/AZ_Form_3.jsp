<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<meta charset="ISO-8859-1">
<title>AZ_FORM_3</title>
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

#yn {
	margin-right: 3cm;
	margin-left: 3cm;
}

#box {
	width: 320px;
	padding: 10px;
	border: 3px solid gray;
	margin-right: 5cm;
	margin-left: 5cm;
	margin-top: 1cm;
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
</style>
</head>
<body>
	<div class="allbody">
		<div>
			<img src="http://allianceinstitute.org/placementlogos/aizant.jpg"
				alt="Aizant" align="right">
		</div>
		<%-- <div id="container" style="width: 100%;">
			<div id="right" style="float: right; width: 85%;">
				<img src="<c:url value="/resources/images/Aizant.png" />"
					alt="Aizant" align="right">
			</div> --%>

		<br> <br> <br> <br> <br>
		<div id="leftContainer">
			<span>Form No.: CPF070/02</span>
		</div>
		<div id="rightContainer">
			<span>Reference SOP No.: CP079</span>
		</div>
		<br>

		<hr>

		<div id="container" style="width: 100%;">
			<div id="leftContainer">CRF No. :</div>
			<div align="center" style="width: 67%">Project No.:</div>
			<br>

			<div id="left" style="float: left; width: 33%;">
				Registration No.: &emsp;<input type="text" ng-model="">
			</div>
			<div id="left" style="float: left; width: 33%;">
				Period No.: &emsp;<input type="text" ng-model="">
			</div>
			<div align="right" style="float: right; width: 33%;">
				Subject No.: &emsp;<input type="text" ng-model="">
			</div>
		</div>

		<br>

		<hr>
		<center>
			<p>(Put &#10004; tick mark on appropriate box)</p>
		</center>
		<b>A. </b> <b>Is the subject verified for Volunteer Cross
			Participation?</b> &emsp;&emsp; &emsp;&emsp;&emsp;&emsp;<select>
						<option value="YES">YES</option>
						<option value="NO">NO</option>
						<option value="N/A">N/A</option>

				</select> <br> (applicable for period-1) <br>
		<br> <b>B.</b> <b> Is the subject eligible to participate in
			the study?</b> &emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp;
		&emsp;<select>
						<option value="YES">YES</option>
						<option value="NO">NO</option>

				</select> <br> <br>
		<b>C.</b> <b><u>RESTRICTION COMPLIANCE</u> </b> <br> <br>

		<table style="width: 100%">
			<tr>
				<td>1. Have you taken any prescribed medication in the last 14
					days prior to dosing / since previous period check-out?</td>
				<td><select>
						<option value="YES">YES</option>
						<option value="NO">NO</option>

				</select></td>
			</tr>
			<tr>
				<td>2. Have you taken any OTC medicinal products, herbal
					products for therapeutic purpose in the last 07 days prior to <br>&emsp;dosing
					/ since previous period check-out?
				</td>
				<td><select>
						<option value="YES">YES</option>
						<option value="NO">NO</option>

				</select></td>


			</tr>
			<tr>
				<td>3. Have you consumed any caffeine and xanthine-containing
					foods or beverages (i.e. coffee, tea, chocolate, <br>&emsp;and
					caffeine-containing sodas, colas, etc.) in the last 48.00 hours
					prior to check-in/ since previous period check-out?
				</td>
				<td><select>
						<option value="YES">YES</option>
						<option value="NO">NO</option>

				</select></td>
			</tr>
			<tr>
				<td>4. Have you consumed any Grapefruit juice or related
					products in the last 72.00 hours prior to check-in/ since previous<br>&emsp;
					period check-out?
				</td>
				<td><select>
						<option value="YES">YES</option>
						<option value="NO">NO</option>

				</select></td>

			</tr>
			<tr>
				<td>5. Have you consumed / chewed any tobacco containing
					products {pan masala, gutkha, supari (betel nut)} etc. <br>&emsp;in
					the last 48.00 hours prior to check-in/ since previous period
					check-out?
				</td>
				<td><select>
						<option value="YES">YES</option>
						<option value="NO">NO</option>

				</select></td>
			</tr>
			<tr>
				<td>6. Have you participated in any drug research study within
					past 90 days / since previous period check-out?</td>
				<td><select>
						<option value="YES">YES</option>
						<option value="NO">NO</option>

				</select></td>

			</tr>
			<tr>
				<td>7. Have you donated blood within past 90 days / since
					previous period check-out??</td>
				<td><select>
						<option value="YES">YES</option>
						<option value="NO">NO</option>

				</select></td>

			</tr>
		</table>
		<br>
		<table style="width: 100%">
			<tr>
				<td>Does the subject comply with Restriction compliance?</td>
				<td><select>
						<option value="YES">YES</option>
						<option value="NO">NO</option>

				</select></td>

			</tr>
		</table>
		<br>
		<p>Comments:</p>
		<textarea rows="5" cols="175">
</textarea>
		<br>
		<div align="left">
			<br> &emsp;Recorded by : <input type="text" ng-model="">&emsp;<input
				type="file"><br>
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="date"
				ng-model=""><br>
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;(Sign & Date) <br>
		</div>
		<br>

		<footer>

		<div align="right">
			<br> &emsp;Reviewed by : <input type="text" ng-model=""><br>
			<input type="file"><br> <input type="date"><br>
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;(Sign & Date) <br>
		</div>
		<div align="left">Page 2 of 15</div>
		</footer>
	</div>
	<div align="center">
		<a href="Form2" class="btn btn-primary" type="button">PREVIOUS</a>&emsp;&emsp;
		<a href="#" class="btn btn-primary" type="button">SUBMIT</a>&emsp;&emsp;
		<a href="Form4" class="btn btn-primary">NEXT</a>
	</div>
	</div>
</body>
</html>