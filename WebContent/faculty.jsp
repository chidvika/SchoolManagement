<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from teacher");
	if(rs.next()){
%>
<img src="logo.png"  align="left"width="150" height="150">
<center><img src="schl.jpg" width="150" height="150">
<img src="apj sir.png" align="right"  width="150" height="150"></center>
    <a href="index.html">Back</a>
  <hr class="new1">
  <a titlt="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;"><img src="print.png" align="right"/></a>
<style>
html {
  font-family:arial;
  font-size: 25px;
}

td {
  border: 2px solid #726E6D;
  padding: 15px;
  color:black;
  text-align:center;
}

thead{
  font-weight:bold;
  text-align:center;
  background: #625D5D;
  color:white;
}

table {
  border-collapse: collapse;
}

.footer {
  text-align:right;
  font-weight:bold;
}

tbody >tr:nth-child(odd) {
  background: #D1D0CE;
}
</style>

<head>
  <hr class="new1">
</head>

<body>
  <table>
    <thead>
      <tr>
        <td>Name</td>
        <td>teacherID</td>
        <td>Subject</td>
        <td>Salary</td>
        <td>Gender</td>
      </tr>
    </thead>
    <tbody>
    <tr>
      	<td><%=rs.getString(1) %></td>
      	<td><%=rs.getString(2) %></td>
      	<td><%=rs.getString(3) %></td>
      	<td><%=rs.getString(4) %></td>
      	<td><%=rs.getString(5) %></td>
      </tr>
     
    </tbody>
  </table>
    <hr class="new1">
  <center><h6>Note: Institution doesn't own for the errors or omissions, if any, in this statement.</h6></center>
  <hr class="new1">
<center><h6>All Right Reserved @ School Days :: 2011-2016</h6></center> 
  <hr class="new1">
</body>


<%}
	else{
		response.sendRedirect("adminLogin.html");
	}
}
	catch(Exception e){}
 %>


