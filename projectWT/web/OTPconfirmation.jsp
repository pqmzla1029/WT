<%-- 
    Document   : OTPconfirmation
    Created on : 24 Oct, 2016, 11:22:42 PM
    Author     : Igor
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <%@include file="header.jsp" %>
    
    <script type="text/javascript">
        validate()
        {
        var username ='<%=request.getAttribute("Message")%>';
        if(username == document.otpcheck.recievedotp.value )
        {
        alert(username);
	document.write("Welcome\n"); 
        }
        else
        {
        alert( "Acess denied" );
	document.write("Access Denied!"); 
        document.write("<br /><br />Would you like to try again?<br /><br />");
        }
        }
    </script>
    

</head>
<body>
    <%@include file="navbar.jsp" %>
   
     <div class="container" style="alignment-adjust: central; margin-top: 100px; margin-bottom: 420px;">
            <div class="well">
                <h3><%=request.getAttribute("Message")%></h3>
                <form name="otpcheck" action="OTPCheckingServlet" onblur="return(validate());">

                      <%
                            if(session.getAttribute("timer")!=null){
                                 response.sendRedirect("Error.jsp");
                            }
                      %> 
                      <h2> Confirm OTP </h3>
                      <br>
                      
                      <div class="col-md-3"> Enter OTP :<input type="text" name="recievedotp" size="6" class="form-control"><br></div><br>
                      <div class="col-md-2"> <input class="btn btn-warning" type="submit" value="Confirm"></div>
                      <br><br>
                    
                </form>
           
            </div>
        </div>
          
          <%@include file="footer.jsp" %>
</body>
</html>

