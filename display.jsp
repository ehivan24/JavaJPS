<%-- 
    Document   : display
    Created on : Apr 23, 2016, 11:48:25 PM
    Author     : ehivan24
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <h1>Hello </h1>
        <%
            String firstName = request.getParameter("first_name");
            String lastName = request.getParameter("last_name");
            String email = request.getParameter("email");
            String gender = request.getParameter("gender");
            String dateOfBirth = request.getParameter("date");
        
            boolean completedFields = false;
        %>
        
        
        <% if(firstName.equals("")){ %> <h3> Empty </h3> <% }%>
        <% if(lastName.equals("")){ %> <h3> Empty </h3> <% }%>
        <% if(email.equals("")){ %> <h3> Empty </h3> <% }%>
        <% if(gender.equals("")){ %> <h3> Empty </h3> <% }%>
        <% if(dateOfBirth.equals("")){ %> <h3> Empty </h3> <% }%>
        
        
        <h5 class="text-h5"><%= firstName %></h5>
        <h5 class="text-h5"><%= lastName %></h5>
        <h5 class="text-h5"><%= email %></h5>
        <h5 class="text-h5"><%= gender %></h5>
        <h5 class="text-h5"><%= dateOfBirth %></h5>
        
    </body>
</html>
