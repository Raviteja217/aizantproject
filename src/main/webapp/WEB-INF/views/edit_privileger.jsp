<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Aizant::Editprivileger</title>
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
					<div class="panel-title">Edit privilegers</div>
				</div>
				<div class="panel-body">
					<div class="row">


						<div class=" col-md-9 col-lg-9 ">
							<form:form modelAttribute="Privileger" method="post"
								action="update_privileger">
								<table class="table table-user-information">
									<tbody>
										<tr hidden>
											<td><form:label path="id">ID :</form:label></td>
											<td><form:input path="id" value="${mainReport.id}"
													text="readonly" /></td>
										</tr>
										<tr>
											<td><form:label path="userName">User Name  :</form:label></td>
											<td><form:input path="userName"
													value="${mainReport.userName}" style="width:30%"
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
											<td><form:label path="forms">Number of forms:</form:label></td>
											<td><form:textarea path="forms" rows="2" cols="25"
													value="${mainReport.forms}" text="readonly" /></td>
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