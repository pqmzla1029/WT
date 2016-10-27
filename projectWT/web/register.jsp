<%-- 
    Document   : register
    Created on : Oct 6, 2016, 7:51:47 PM
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
        <div class="container">
        <br><br><br>
      <ol class="breadcrumb">
        <li><a href="index.html">Home</a></li>
        <li class="active">Register</li>
      </ol>
        </div>
        <div class="container">
            <div class="row" style="margin-top:6.5%;">
                
                <div class="container">
                        <div class="row">
				<div class="col-xs-12 col-md-6 col-md-offset-1 text-center" style="margin:20px">
                                    <div class="col-md-offset-3">
					<ul class="nav nav-pills">
					  <li class="active"><a data-toggle="tab" href="#home">Student Registration</a></li>
					  <li><a data-toggle="tab" href="#menu1">Council Registration</a></li>
					</ul>
                                    </div>
					<div class="tab-content">
					  <div id="home" class="tab-pane fade in active">
							<div class="col-md-offset-1 col-md-11">
								<div class="panel panel-default" style="margin:10px">
									<div class="panel-body">
										
										<div class="page-header">
											<h2>Students Registration</h2>
										</div>
										<form role="form" action="RegisterServlet.do" method="post" >
											<div class="form-group">
                                                                                            <div class="col-md-3">
                                                                                                <lable for="sname" >First Name:</lable>
                                                                                            </div>
                                                                                            <div class="col-md-9">
                                                                                            <input type="text" name="sfname" placeholder="Enter FirstName" class="Sname form-control" id="Sname">
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="form-group">
                                                                                            <div class="col-md-3">
                                                                                                <lable for="slname" >Last Name:</lable>
                                                                                            </div>
                                                                                            <div class="col-md-9">
                                                                                            <input type="text" name="slname" placeholder="Enter Last Name" class="Sname form-control" id="Sname">
                                                                                            </div>
                                                                                        </div>
                                                                                         <div class="form-group">
                                                                                            <div class="col-md-3">
                                                                                                <lable for="srollno">Roll no:</lable>
                                                                                            </div>
                                                                                            <div class="col-md-9">
                                                                                            <input type="number" name="srollno" placeholder="Enter Roll no" class="Srollno form-control" id="Srollno">
                                                                                            </div>
                                                                                        </div>
                                                                                    
                                                                                        <div class="form-group">
                                                                                            <div class="col-md-3">
                                                                                                <lable for="Spassword">Password: </lable>
                                                                                            </div>
                                                                                            <div class="col-md-9">
                                                                                            <input type="password" name="spassword" placeholder="Enter Password" class="Spassword form-control" id="Spassword">
                                                                                            </div>
                                                                                        </div>
                                                                                    
                                                                                        <div class="form-group">
                                                                                            <div class="col-md-3">
                                                                                                <lable for="cpassword" >Confirm Password</lable>
                                                                                            </div>
                                                                                            <div class="col-md-9">
                                                                                            <input type="password" name="cspassword" placeholder="Confirm Password" class="Sname form-control" id="Spassword">
                                                                                            </div>
                                                                                        </div>
                                                                                    
                                                                                         <div class="form-group">
                                                                                            <div class="col-md-3">
                                                                                                <lable for="Sdepartment">Department: </lable>
                                                                                            </div>
                                                                                            <div class="col-md-9">
                                                                                            <input type="text" name="ssepartment" placeholder="Enter Department" class="Sdepartment form-control" id="Sdepartment">
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="form-group">
                                                                                            <div class="col-md-3">
                                                                                                <lable for="Scontact">Phone: </lable>
                                                                                            </div>
                                                                                            <div class="col-md-9">
                                                                                            <input type="tel" name="scontact" placeholder="Enter Phone Number" class="Scontact form-control" id="Scontact">
                                                                                            </div>
                                                                                        </div>
                                                                                         
                                                                                         <div class="form-group">
                                                                                            <div class="col-md-3">
                                                                                                <lable for="semailid">Email id: </lable>
                                                                                            </div>
                                                                                            <div class="col-md-9">
                                                                                            <input type="text" name="semailid" placeholder="Enter Email id" class="Semailid form-control" id="Semailid">
                                                                                            </div>
                                                                                        </div>
                                                                                    <div class='col-md-9 col-md-offset-3'>
                                                                                        <div class="field">
                                                                                        <img src="CaptchaServlet.do" class="captcha thumbnail"> 
                                                                                    </div>        
                                                                                        <div class="alert"></div>
                                                                                        <%
                                                                                            String captcha = (String) session.getAttribute("captcha");
                                                                                            String code = (String) request.getParameter("code");

                                                                                            if (captcha != null && code != null) {

                                                                                                if (captcha.equals(code)) {
                                                                                                    out.print("<div class='alert'>Correct</p>");
                                                                                                } else {
                                                                                                    out.print("<div class='alert'>Incorrect</p>");
                                                                                                }
                                                                                            }
                                                                                        %>
                                                                                        
                                                                                        <div class="field">
                                                                                            <input type="text" name="captcha" tabindex="0" class="form-control" required>
                                                                                        </div>
                                                                                        </div>

											<div class="form-group" style="margin-bottom: 2%">
											<input type="submit" name="submit" value="Register" class="btn btn-lg btn-primary"> &nbsp; <input type="reset" name="reset" value="Reset" class="btn btn-lg btn-default">       
											</div>
										</form> 
										
									</div>
								</div>
							</div>
					  </div>
					  <div id="menu1" class="tab-pane fade">
						<div class="col-md-offset-1 col-md-11">
							<div class="panel panel-default" style="margin:10px">
								<div class="panel-body">
									
									<div class="page-header">
										<h2>Council Registration</h2>
									</div>
									<form role="form" action="RegisterServlet.do" method="post" class="register-form">
											<div class="form-group">
                                                                                            <div class="col-md-3">
                                                                                                <lable for="Sname">Name:</lable>
                                                                                            </div>
                                                                                            <div class="col-md-9">
                                                                                            <input type="text" name="Sname" placeholder="Name" class="Sname form-control" id="Sname">
                                                                                            </div>
                                                                                        </div>
                                                                                         <div class="form-group">
                                                                                            <div class="col-md-3">
                                                                                                <lable for="Srollno">Roll no:</lable>
                                                                                            </div>
                                                                                            <div class="col-md-9">
                                                                                            <input type="number" name="Srollno" placeholder="Roll no" class="Srollno form-control" id="Srollno">
                                                                                            </div>
                                                                                        </div>
                                                                                         <div class="form-group">
                                                                                            <div class="col-md-3">
                                                                                                <lable for="Sdepartment">Department: </lable>
                                                                                            </div>
                                                                                            <div class="col-md-9">
                                                                                            <input type="text" name="Sdepartment" placeholder="Department" class="Sdepartment form-control" id="Sdepartment">
                                                                                            </div>
                                                                                        </div>
                                                                                         <div class="form-group">
                                                                                            <div class="col-md-3">
                                                                                                <lable for="Semailid">Email id: </lable>
                                                                                            </div>
                                                                                            <div class="col-md-9">
                                                                                            <input type="text" name="Semailid" placeholder="Email id" class="Semailid form-control" id="Semailid">
                                                                                            </div>
                                                                                        </div>
											
											<div class="form-group" style="margin-bottom: 2%">
											<input type="submit" name="submit" value="Register" class="btn btn-lg btn-primary"> &nbsp; <input type="reset" name="reset" value="Reset" class="btn btn-lg btn-default">       
											</div>
										</form>   
									
								</div>
							</div>
						</div>
					 </div>
					</div>
					
				</div>
			</div>
		</div>

                
            </div>
        </div>
        
        <%@include file="footer.jsp" %>
    </body>
</html>
