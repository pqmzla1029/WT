<%-- 
    Document   : forgotpass
    Created on : 26 Oct, 2016, 12:28:57 PM
    Author     : Igor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="header.jsp" %>
    </head>
    <body>
        
        <%@include file="navbar.jsp" %>
        
        <div class="container" style="alignment-adjust: central; margin-top: 100px; margin-bottom: 420px;">
            <div class="well">
                <form action="EmailServlet.do" method="post" style="margin:50px;">
                <h2>One Time Password</h2>
                <div class="col-md-3"><br>Enter Email Address for OTP :<br>
                    <input type="text" name="recipient" size="50" class="form-control"></div><br><br>
                    <div class="col-md-3"><input class="btn btn-warning" type="submit" value="Send OTP"></div>
            </form>
            </div>
        </div>
        
        <%@include file="footer.jsp" %>
    </body>
</html>
