<%@ page import ="java.sql.*" 

%>

<%
    String user = request.getParameter("user");    
    String pwd = request.getParameter("pwd");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
            "root", "mysql");
    Statement st = con.createStatement();
    
    if(user.equals("admin")||user.equals("Admin")&&pwd.equals("admin")){

    	response.sendRedirect("admin.jsp");
    }    
    else {
        out.println("Invalid password or username <a href='admin_index.jsp'>try again</a>");
    }
%>