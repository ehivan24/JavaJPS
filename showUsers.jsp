<%-- 
    Document   : showUsers
    Created on : Apr 24, 2016, 3:42:09 PM
    Author     : ehivan24
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="javax.servlet.http.*,javax.servlet.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/mStyle.css">
        
        <title>Current Users</title>
    </head>
    <body>
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/Users"
                           user="root" password="123456"
                           />
        <sql:query dataSource="${snapshot}" var="result">
            SELECT * FROM users;
        </sql:query>
            <h5 class="">Current Users</h5>
            <table border ="2" width="100%">
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Gender</th>
                    <th>Email</th>
                    <th>DOB</th>
                </tr>
                
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row._id}" /></td>
                        <td><c:out value="${row.firstname}" /></td>
                        <td><c:out value="${row.lastname}" /></td>
                        <td><c:out value="${row.gender}" /></td>
                        <td><c:out value="${row.email}" /></td>
                        <td><c:out value="${row.dateofbirth}" /></td>
                    </tr>
                </c:forEach>
            </table>      
    </body>
</html>
