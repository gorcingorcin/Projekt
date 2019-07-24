<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>  
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shopping cart</title>
<link rel="stylesheet" href="IndexJSP.css"/>
</head>
<body>
<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "supermarket";
String userId = "root";
String password = "administrator";



Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Product  list</strong></font></h2>
<table align="center" cellpadding="5px" cellspacing="5px" border="1px">
<tr>

</tr>
<tr bgcolor="#379e53">

<td><b>ID_Product</b></td>
<td><b>Product</b></td>
<td><b>Description</b></td>
<td><b>Price</b></td>
<td><b>Status</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM product";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#bbbfbc">

<td><%=resultSet.getString("id_product") %></td>
<td><%=resultSet.getString("product") %></td>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("retail_price") %></td>
<td><%=resultSet.getString("status") %></td>
</tr>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>



</body>
</html>