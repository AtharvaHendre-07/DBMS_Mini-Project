<body bgcolor="#E3E2DE">
<%
session.setAttribute("user", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>
</body>