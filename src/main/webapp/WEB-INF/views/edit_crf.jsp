<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Aizant::Edit CRF</title>
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
		<div
			class="col-xs-12 col-sm-12 col-md-6 col-lg-6
		col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3
		toppad">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Edit CRF</div>
				</div>
				
						<div class=" col-md-9 col-lg-9 ">

								<form:form modelAttribute="CrfNumber" method="post"
									action="update_crf ">
									<table class="table table-user-information">
										<tbody>
											<tr hidden>
												<td><form:label path="id">ID :</form:label></td>
												<td><form:input path="id" value="${crfNumber.id}"
														text="readonly" /></td>
											</tr>
											<tr>
												<td><form:label path="project_Number">Project Number :</form:label></td>
												<td><form:input path="project_Number" value="${crfNumber.project_Number}"
														text="readonly" /></td>
											</tr>
											<tr>
												<td><form:label path="crf_Number">CRF Number :</form:label></td>
												<td><form:input path="crf_Number"
														value="${crfNumber.crf_Number}" text="readonly" /></td>
											</tr>
												<td><input type="submit" value="submit" /></td>
										</tbody>
									</table>
								</form:form>

							</div>
											
			</div>
		</div>

	</div>
	</div>
</body>
</html>