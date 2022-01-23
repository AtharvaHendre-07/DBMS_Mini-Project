<%@ page import="java.sql.*"%>
<%
String src = request.getParameter("source");
String desti = request.getParameter("destination");
String t_no = request.getParameter("train_no");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "mysql");
Statement st = con.createStatement();

int i = st.executeUpdate("delete from traininfo where source ='"+src+"'AND destination='"+desti+"'AND train_no = '"+t_no+"'");
if (i > 0) {
	response.sendRedirect("delete_success.jsp");
} else {
	out.println("Train not deleted please try again <a href='admin.jsp'> try again </a>");
}
%>