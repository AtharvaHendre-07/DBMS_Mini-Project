<%@ page import ="java.sql.*" %>
<body bgcolor="#E3E2DE">
<center>
  <table border="1" width="30%" height="30%">
  <tr><th><font color='Red'>Train Number</font></th>
  <th><font color='Red'>Train Name</font></th>
  <th><font color='Red'>Source</font></th>
  <th><font color='Red'>Departure</font></th>
  <th><font color='Red'>Destination</font></th>
  <th><font color='Red'>Arrival</font></th>
  <th><font color='Red'>Distance</font></th>
  <th><font color='Red'>Travel Time</font></th>
  <th><font color='Red'>Class</font></th>
  <th><font color='Red'>Date Of Journey</font></th>
  <th><font color='Red'>Number of Seats Available</font></th>
  <th><font color='Red'>Book Detail</font></th>
  </tr>
<%
    String s = request.getParameter("source");  
    String d = request.getParameter("destination");
    String date = request.getParameter("doj");
    String c = request.getParameter("class");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
            "root", "mysql");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from traininfo where source='" + s + "' and destination='" + d + "' and doj='" + date + "' and class='" + c + "'");
   while (rs.next()) {
        
	   String s1 = rs.getString("source");  
	    String d1 = rs.getString("destination");
	    String date1 = rs.getString("doj");
	    String c1 = rs.getString("class");
        String tno = rs.getString("train_no");
        String tname = rs.getString("train_name");
        String dep = rs.getString("departure");
        String a = rs.getString("arrival");
        String distance = rs.getString("distance");
        String tt = rs.getString("travel_time");
        String nosa = rs.getString("no_of_seat_available");
      
        
        session.setAttribute("s1", s1);
        session.setAttribute("d1", d1);
        session.setAttribute("date1", date1);
        session.setAttribute("c1", c1);
        session.setAttribute("tno", tno);
        session.setAttribute("tname", tname);
        session.setAttribute("nosa", nosa);
        
 
%>
<tr>
<td><b><font color='Brown'><%=tno%></font></b></td>
<td><b><font color='Brown'><%=tname%></font></b></td>
<td><b><font color='Brown'><%=s1%></font></b></td>
<td><b><font color='Brown'><%=dep%></font></b></td>
<td><b><font color='Brown'><%=d1%></font></b></td>
<td><b><font color='Brown'><%=a%></font></b></td>
<td><b><font color='Brown'><%=distance%></font></b></td>
<td><b><font color='Brown'><%=tt%></font></b></td>
<td><b><font color='Brown'><%=c1%></font></b></td>
<td><b><font color='Brown'><%=date1%></font></b></td>
<td><b><font color='Brown'><%=nosa%></font></b></td>
<%if(nosa.equals("0") || nosa.equals("")){  
%>
<td><b><font color='Brown'>N.A.</font></b></td>
<%
}
else
{
%>
<td><b><font color='Brown'><a href="book.jsp">Book Now</a></font></b></td>
<%
}
%>

</tr>
 </center>
<%
  }
 %>
 <center>
<a href='logout.jsp'>Logout</a>
  </center><br>