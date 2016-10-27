<%-- 
    Document   : login
    Created on : Oct 6, 2016, 10:37:31 AM
    Author     : Pratik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <%@include file="header.jsp" %>
    </head>
    <body>
        
        <%@include file="navbar.jsp" %>
        <div class="container">
        <br>
        <br>
        <br>
        <ol class="breadcrumb">
        <li><a href="index.html">Home</a></li>
        <li class="active">Login</li>
      </ol>
        </div>
    
   
        <div class="container">
            <div class="row" style="margin-top:6.5%;">
            <div class="col-sm-6">
                <div class="panel panel-default">
                   
                    <div class="panel-body">
                    <div class="page-header">
                        <h2>Login</h2>
                      </div>
                    <form role="form" action="LoginServlet.do" method="post">
			<div class="form-group">
				<label for="username">Username</label>
				<input type="text" name="username" placeholder="Username" class="username form-control" id="username">
			 </div>
			<div class="form-group">
				<label for="password">Password</label>
                                <input type="password" name="password" placeholder="Password" class="password form-control" id="password">&nbsp;<a href="forgotpass.jsp" class="alert-link">forgot password?>></a>
			 </div>
                        <div class="form-group" style="margin-bottom: 2%">
			<input type="submit" name="submit" value="Login" class="btn btn-lg btn-primary"> &nbsp; <input type="reset" name="reset" value="Reset" class="btn btn-lg btn-default">       
                        </div>
                        <div class="panel-footer">
                            Don't have Account yet ? <a href="register.jsp" class="alert-link">Register here >></a>
                       
                        </div>
                    </form> 
                    </div>
                </div>
            </div>
        </div>
        </div>
               
         <%@include file="footer.jsp" %>
    </body>
</html>
