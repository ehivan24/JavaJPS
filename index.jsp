<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test One</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" 
              integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/mStyle.css">

    </head>
    <body>
        <h1>Register:</h1>
        <h5 class="text-h5"><% Date date = new Date();%> 
        <%= date %> </h5>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xm-12 col-sm-6 col-md-6 col-lg-4" >
                    <form action="display.jsp"  method="POST"data-toggle="validator"  role="form" name="information">
                        <h4 class="text-info">Enter First Name: </h4>
                        <input type="text" placeholder="First Name" name="first_name" class="form-control" /><br />
                         <h4 class="text-info">Enter Last Name: </h4>
                        <input type="text" placeholder="Last Name" name="last_name" class="form-control" /><br />
                         <h4 class="text-info">Enter Email </h4>
                        <input type="email" placeholder="Email" name="email" class="form-control" />
                        <h4 class="text-info">Enter Gender </h4>
                        <input type="text" placeholder="Gender" name="gender" class="form-control" /><br />
                        <h4 class="text-info">Enter Date of Birth </h4>
                        <input type="text" placeholder="Date of Birth" name="date" class="form-control"/><br />
                        <input type="submit"  class="btn-info"/>
                        <input type="reset" value="Clear" name="clear"  class="btn-info"/>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
