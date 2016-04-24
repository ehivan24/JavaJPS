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
        
        <!-- find a way better to check for these fields -->
        
        <% if(firstName.equals("")){ completedFields = false; %> <h3 class="text-h3"> Empty First Name </h3> <% }%>
        <% if(lastName.equals("")){ completedFields = false; %> <h3 class="text-h3"> Empty Last Name </h3> <% }%>
        <% if(email.equals("")){ completedFields = false; %> <h3 class="text-h3"> Empty Email </h3> <% }%>
        <% if(gender.equals("")){ completedFields = false; %> <h3 class="text-h3"> Empty Gender</h3> <% }%>
        <% if(dateOfBirth.equals("")){ completedFields = false; %> <h3 class="text-h3"> Empty DOB</h3> <% }%>
       
        
        <% if(completedFields){ %>
            <h5 class="text-h5"><%= firstName %></h5>
            <h5 class="text-h5"><%= lastName %></h5>
            <h5 class="text-h5"><%= email %></h5>
            <h5 class="text-h5"><%= gender %></h5>
            <h5 class="text-h5"><%= dateOfBirth %></h5>
            <!-- Save information to Database -->
            
        <% }%>
        
    </body>
</html>
