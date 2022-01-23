<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Train Information</title>
</head>
<body bgcolor="#E3E2DE">


	<center>
		<h1>Add Train</h1>
		<form method="post" action="insert_train.jsp">
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
						<td>Date of journey :</td>
						<td><input type="text" name="doj" /></td>
					</tr>
					<tr>
					
					<td>Class :</td>
						<td><input type="text" name="class" /></td>
					</tr>
					<tr>
					
						<td>Train Number :</td>
						<td><input type="text" name="train_no" /></td>
					</tr>
					<tr>
						<td>Train Name :</td>
						<td><input type="text" name="train_name" /></td>
					</tr>
					<tr>
						<td>Departure Time :</td>
						<td><input type="text" name="departure" /></td>
					</tr>
					<tr>
						<td>Arrival Time :</td>
						<td><input type="text" name="arrival" /></td>
					</tr>
					<tr>
						<td>Distance :</td>
						<td><input type="text" name="distance" /></td>
					</tr>
					<tr>
						<td>Travel Time:</td>
						<td><input type="text" name="travel_time" /></td>
					</tr>
					<tr>
						<td>Number of seats available :</td>
						<td><input type="text" name="no_of_seat_available" /></td>
					</tr>

					<tr>
						<td><input type="submit" value="Submit" /></td>
						<td><input type="reset" value="Reset" /></td>
					</tr>
					<tr>
						<a href="admin_logout.jsp">Logout</a>
				</tbody>
			</table>
	</center>
	</form>
</body>
</html>
