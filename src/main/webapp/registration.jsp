<%@ page import ="java.sql.*" %>
<%

   
    String fn=request.getParameter("fname");
	String ln=request.getParameter("lname");
	String em=request.getParameter("email");
	String ge=request.getParameter("gender");
	String st1=request.getParameter("status");
	String ph=request.getParameter("phone");
	String un1=request.getParameter("uname");
	String pw1=request.getParameter("pword"); 
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
            "root", "mysql");
    Statement st = con.createStatement();
   
    int i = st.executeUpdate("insert into userinfo(fname, lname, email, gender, status, phone, uname, pword) values ('" + fn + "','"+ ln + "','"+ em + "','"+ ge+ "','"+ st1+ "','"+ph+ "','"+ un1 + "','" + pw1 + "')");
    if (i > 0) {
        response.sendRedirect("welcome.jsp");
    } else {
        response.sendRedirect("reg.jsp");
    }
%>