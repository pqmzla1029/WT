<%-- 
    Document   : StudentDashboard
    Created on : Oct 7, 2016, 10:39:27 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="model.Student" %>
<html ng-app="myApp">
    <head>
        <%@include file="header.jsp" %>
        <link href="css/searchbar.css" type="text/css">
           <script src="js/angular.min.js"></script>
    </head>
    <body data-spy="scroll" data-target="#myscrollspy">
        <%
            if(session.getAttribute("username")==null) 
                response.sendRedirect("login.jsp");
                        %>
         <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
        <div class="container topnav">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand topnav" href="index.html"><span style="font-weight: bolder">CCH</span></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="#about">About Us</a>
                    </li>
                    <li>
                        <a href="#">${username.srollno}</a>
                    </li>
                    <li>
                        <a href="contactus.html">Contact Us</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
        <div class="container">
                <br><br><br>
              <ol class="breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li class="active">${username.srollno} Home</li>
              </ol>
        </div>
        
        <div class="container">
            <div class="col-md-2" >
                <div class="row">
                    
                        
                          <div class="thumbnail">
                              <img src="img/profile.JPG" alt="User" class="img-responsive" style="margin-top: 6px">
                            <div class="caption">
                              <h3>User</h3>
                              <p> Abhishek<br>7387<br>Computers
                              </p>
                              <p><a href="login.jsp" class="btn btn-primary" role="button">Logout</a> 
                            </div>
                          </div>
                        
                     
                </div>
                <div class="row" id="myscrollspy"  data-spy="affix" data-offset-bottom="205">
                <ul class="nav nav-pills nav-stacked">
                    <li role="presentation" class="active"><a href="#1">Home</a></li>
                    <li role="presentation"><a href="#2">Upcoming Events</a></li>
                    <li role="presentation"><a href="#3">Upcoming Interviews</a></li>
                    <li role="presentation"><a href="#4">Ask Hub</a></li>
                  </ul>
                </div>
            </div>
           
            
            <div class="col-md-10" >
             <div id="1">
                <!--Custom Search bar-->
                <div class="row">
                    <div class="col-md-11 col-md-offset-1">
                        <div id="custom-search-input">
                            <div class="col-md-10">
                                <input id="search" ng-model="searchString" type="text" class="form-control" placeholder="Search Council Name, tech/non-tech . . . " />
                            </div>
                            
                        </div>
                    </div>
                    </div>
                <br>
                <br>
                
                <div class="col-md-offset-1 col-md-10">
                    <div class="row">
                        <div ng-controller="myCtrl as controller">
                        <div class="panel panel-default" ng-repeat="x in controller.list | searchFor:searchString">
                            <div class="panel-body">
                                <div class="col-md-3">
                                    <img class="media-object img-thumbnail" ng-src={{x.img}} alt="TEDxCRCE" style="margin-top:20px">
                                </div>
                                <div class="col-md-19">
                                    <h3 ><a href="CouncilDashboard.jsp">{{x.Name}}</a></h3>
                                    <p>{{x.Description}}              <i> <a href="CouncilDashboard.jsp">know more>></a></i></p>
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
     
        <script>
            var app = angular.module('myApp', []);
            app.controller('myCtrl', function() {
                list = [
                   {
                        img  : 'img/tedx.jpeg',
                        Name : 'TEDxCRCE',
                        Description : 'TEDxCRCE is the first independently held TED Event of Fr.Conceicao Rodrigues College of Engineering, Mumbai. TEDxCRCE strives to recreate the unique experience found at TED, where the world’s leading thinkers and doers congregate to share what they are most passionate about. We aim to provide a platform where the smartest thinkers, greatest visionaries, and most fascinating teachers will be inspired and will have the opportunity to inspire others.',
                        Tag :'non-technical'
                    },{
                        img  : 'img/csi.jpg',
                        Name : 'CSI',
                        Description : 'he Computer Society of India is a non-profit professional meet to exchange views and information learn and share ideas.It was started on 6 March 1965 by a few computer professionals and has now grown to be the national body representing computer professionals. It has 72 chapters across India, 511 student branches, and more than 100,000 members. The wide spectrum of members is committed to the advancement of theory and practice of Computer Engineering and Technology Systems, Science and Engineering, Information Processing and related Arts and Sciences.',
                        Tag :'technical'
                    },{
                       img  : 'img/stuco.png',
                        Name : 'Students Council',
                        Description : 'TEDxCRCE is the first independently held TED Event of Fr.Conceicao Rodrigues College of Engineering, Mumbai. TEDxCRCE strives to recreate the unique experience found at TED, where the world’s leading thinkers and doers congregate to share what they are most passionate about. We aim to provide a platform where the smartest thinkers, greatest visionaries, and most fascinating teachers will be inspired and will have the opportunity to inspire others.',
                        Tag :'non-technical'
                    },{
                        img  : 'img/abadha.png',
                        Name : 'Abadha',
                        Description : 'Baja SAE is an intercollegiate design competition run by the Society of Automotive Engineers (SAE).The goal in Baja SAE racing is to design, build and race off-road vehicles that can withstand the harshest elements of rough terrain. The vehicles used in Baja SAE racing are often similar in appearance to dune buggies',
                        Tag :'technical'
                    }
                ];
                this.list=list;
                
        });
        
        app.filter('searchFor', function(){
            return function(arr, searchString){
                    if(!searchString){
                            return arr;
                    }
                    var result = [];
                    searchString = searchString;
                    angular.forEach(arr, function(list){
                            if(list.Name.toLowerCase().indexOf(searchString) !== -1){
                            result.push(list);
                    } 
                    else if(list.Tag.toLowerCase().indexOf(searchString) !== -1){
                            result.push(list);
                    }
                    });
                    return result;
            };
        });
            
            </script>
    </body>
</html>
