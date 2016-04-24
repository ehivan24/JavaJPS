<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test One</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" 
              integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    </head>
    <body>
        <h1>Hello World!</h1>
        <% Date date = new Date();%>
        
        <%= new java.util.Date() %> 
        <div class="container-fluid">
            <div class="row">
                <div class="col-xm-12 col-sm-6 col-md-6 col-lg-4" >
                    <form action="display.jsp"  method="POST" name="information">
                        <h4 class="text-info">Enter First Name: </h4>
                        <input type="text" name="first_name" class="form-control" /><br />
                         <h4 class="text-info">Enter Last Name: </h4>
                        <input type="text" name="last_name" class="form-control" /><br />
                         <h4 class="text-info">Enter Email </h4>
                        <input type="text" name="email" class="form-control" />
                        <h4 class="text-info">Enter Gender </h4>
                        <input type="text" name="gender" class="form-control" /><br />
                        <h4 class="text-info">Enter Date of Birth </h4>
                        <input type="text" name="date" class="form-control"/><br />
                            <input type="submit"  class="btn-info"/>
                            <input type="reset" value="Clear" name="clear"  class="btn-info"/>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
