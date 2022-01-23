<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Train Information</title>
</head>
<body bgcolor="#E3E2DE">


	<center>
		<h1>Delete Train</h1>
		<form method="post" action="delete_train.jsp">
			<table bgcolor="Pink" border="1" width="30%" cellpadding="5">
				<thead>
					<tr>
						<th colspan="2">Enter Information Here</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Source:</td>
						<td><input type="text" name="source" /></td>
					</tr>
					
					<tr>
					<td>Destination :</td>
						<td><input type="text" name="destination" /></td>
					</tr>
					<tr>
					
					<tr>
						<td>Train Number :</td>
						<td><input type="text" name="train_no" /></td>
					</tr>
					<tr>
					
					<tr>
						<td><input type="submit" value="Submit" /></td>
						<td><input type="reset" value="Reset" /></td>
					</tr>
					<tr>
					<a href="admin_logout.jsp">Logout</a>
					
					</table>
	</center>
	</form>
</body>
</html>
					