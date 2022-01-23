<%@ page import ="java.sql.*" %>
<%
String name = (String) session.getAttribute("name");
String c1 = (String) session.getAttribute("c1");
String tno = (String) session.getAttribute("tno");



   Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
            "root", "mysql");
    Statement st = con.createStatement();

   int i =  st.executeUpdate("delete from bookinfo where name = '"+name+"'");
  int j = 0;
  if(i > 0)
   {
   j = st.executeUpdate("update traininfo set no_of_seat_available = no_of_seat_available + 1 where train_no = '" + tno + "' and class = '" +  c1 + "'"); 
 
   }
    
  
   
   

   if (j > 0) {
       
       response.sendRedirect("cancelled.jsp");
       
   } else { 
       response.sendRedirect("history.jsp");
   }
  
 
%>