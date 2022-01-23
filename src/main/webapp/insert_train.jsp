<%@ page import="java.sql.*"%>
<%
String src = request.getParameter("source");
String desti = request.getParameter("destination");
String date = request.getParameter("doj");
String cls = request.getParameter("class");
String tno = request.getParameter("train_no");
String tname = request.getParameter("train_name");
String dep = request.getParameter("departure");
String arr = request.getParameter("arrival");
String dis = request.getParameter("distance");
String time = request.getParameter("travel_time");
String seat =request.getParameter("no_of_seat_available");


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "mysql");
Statement st = con.createStatement();

int i = st.executeUpdate("insert into traininfo(source,destination,doj,class,train_no,train_name,departure,arrival,distance,travel_time,no_of_seat_available )values('" + src + "','"+ desti + "','"+ date + "','"+ cls + "','"+ tno + "','"+ tname + "','"+ dep + "','" + arr + "','" + dis + "','"+ time + "','" + seat +"')");
if (i > 0) {
	response.sendRedirect("insert_success.jsp");
} else {
	out.println("Train not inserted please try again <a href='admin.jsp'> try again </a>");
}
%>