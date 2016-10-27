<%-- 
    Document   : contactus.jsp
    Created on : Oct 13, 2016, 10:54:09 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%@include file="header.jsp" %>
    </head>
    <body>
           <%@include file="navbar.jsp" %>
        
                    <form role="form" action="LoginServlet.do" method="post">
			<div class="form-group">
				<label for="username">Username</label>
				<input type="text" name="username" placeholder="Username" class="username form-control" id="username">
			 </div>
			<div class="form-group">
				<label for="password">Password</label>
				<input type="password" name="password" placeholder="Password" class="password form-control" id="password">
			 </div>
                        <div class="form-group" style="margin-bottom: 2%">
			<input type="submit" name="submit" value="Login" class="btn btn-lg btn-primary"> &nbsp; <input type="reset" name="reset" value="Reset" class="btn btn-lg btn-default">       
                        </div>
                        <div class="panel-footer">Don't have Account yet ? <a href="register.jsp" class="alert-link">Register here >></a></div>
                    </form> 
           
        <%@include file="footer.jsp" %>
        
    </body>
</html>
