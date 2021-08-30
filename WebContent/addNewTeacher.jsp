<%@ page import = "Project.ConnectionProvider" %>
<%@ page import = "java.sql.*" %>
<%
String name = request.getParameter("name");
String teacherID = request.getParameter("teacherID");
String subject = request.getParameter("subject");
String salary = request.getParameter("salary");
String gender = request.getParameter("gender");

try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("insert into teacher values('"+name+"','"+teacherID+"','"+subject+"','"+salary+"','"+gender+"')");
	response.sendRedirect("adminHome.jsp");
}
catch(Exception e){
	out.println(e);
}
%>