<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Aizant::EditReport</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<br>
	<br>
	<br>

	<div class="container">
		<%-- div class="row"> <div
		class="col-md-5 toppad pull-right col-md-offset-3 "> <A
		href="#"><%=session.getAttribute("loggedInUser")%></A> <A
		href="${pageContext.request.contextPath}/Logout">Logout</A> <br>
		</div> --%>
		<div
			class="col-xs-12 col-sm-12 col-md-6 col-lg-6
		col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3
		toppad">
			<div class="panel panel-info">
				<div class="panel-heading">
					<%-- <h3 class="panel-title">${user.username}</h3> --%>
					<div class="panel-title">Edit Report</div>
				</div>
				<div class="panel-body">
					<div class="row">


						<div class=" col-md-9 col-lg-9 ">
							<form:form modelAttribute="MainReport" method="post"
								action="update_mainReport">
								<table class="table table-user-information">
									<tbody>
										<tr hidden>
											<td><form:label path="id">ID :</form:label></td>
											<td><form:input path="id" value="${mainReport.id}"
													text="readonly" /></td>
										</tr>
										<tr>
											<td><form:label path="projectNo">Project Number :</form:label></td>
											<td><form:input path="projectNo"
													value="${mainReport.projectNo}" style="width:30%"
													text="readonly" /></td>
										</tr>

										<tr>
											<td><form:label path="crfNo">CRF Number:</form:label></td>
											<td><form:input path="crfNo" style="width:50%"
													value="${mainReport.crfNo}" text="readonly" /></td>
										</tr>
										<tr>
											<td><form:label path="projectTitle">Project Title:</form:label></td>
											<td><form:textarea path="projectTitle" rows="2"
													cols="25" value="${mainReport.projectTitle}"
													text="readonly" /></td>
										</tr>
										<tr>
											<td><form:label path="protocolNo">Protocol Number:</form:label></td>
											<td><form:input path="protocolNo" style="width:50%"
													value="${mainReport.protocolNo}" text="readonly" /></td>
										</tr>
										<tr>
											<td><form:label path="protocolVersion">protocolVersion:</form:label></td>
											<td><form:input path="protocolVersion" style="width:50%"
													value="${mainReport.protocolVersion}" text="readonly" /></td>
										</tr>
										<tr>
											<td><form:label path="periodNo">Period Number:</form:label></td>
											<td><form:input path="periodNo" style="width:20%"
													value="${mainReport.periodNo}" text="readonly" /></td>
										</tr>
										<tr>
											<td><form:label path="registrationNo">Registration Number:</form:label></td>
											<td><form:input path="registrationNo" style="width:30%"
													value="${mainReport.registrationNo}" text="readonly" /></td>
										</tr>
										<tr>
											<td><form:label path="subjectNo">Subject Number:</form:label></td>
											<td><form:input path="subjectNo" style="width:20%"
													value="${mainReport.subjectNo}" text="readonly" /></td>
										</tr>
										<td><input type="submit" value="submit"
											class="btn-success" /></td>
										<td><input type="reset" value="rest" class="btn-defult" /></td>
									</tbody>

								</table>
							</form:form>


						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>