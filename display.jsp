<%-- 
    Document   : display
    Created on : Apr 23, 2016, 11:48:25 PM
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" 
              integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
         <link rel="stylesheet" type="text/css" href="css/mStyle.css">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/Users"
                           user="root" password="123456"
                           />
        <h1>Hello </h1>
        <%
            String firstName = request.getParameter("first_name");
            String lastName = request.getParameter("last_name");
            String email = request.getParameter("email");
            String gender = request.getParameter("gender");
            String dateOfBirth = request.getParameter("date");
        
            boolean completedFields = false;
        %>
        
        <!-- find a way better to check for these fields -->
        
        <% if(firstName.equals("") ||lastName.equals("") || 
                email.equals("") || gender.equals("") || dateOfBirth.equals("")){ 
            completedFields = false; %> 
            <h3 class="text-h3"> Empty Fields </h3> 
            
       <% }else{
            completedFields = true;
        }%>
        
        <% if(completedFields){ %>
            <h5 class="text-h5"><%= firstName %></h5>
            <h5 class="text-h5"><%= lastName %></h5>
            <h5 class="text-h5"><%= email %></h5>
            <h5 class="text-h5"><%= gender %></h5>
            <h5 class="text-h5"><%= dateOfBirth %></h5>
            <!-- Save information to Database -->
            <sql:update dataSource="${snapshot}" var="result">
                INSERT INTO users(firstname, lastname, email, gender, dateofbirth) VALUES('<%= firstName %>','<%= lastName%>','<%=email%>','<%=gender%>','<%=dateOfBirth%>');
            </sql:update>
            
        <% }%>
        <a href="showUsers.jsp">Users</a>
        
    </body>
</html>
