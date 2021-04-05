<%--
  Created by IntelliJ IDEA.
  User: aamish
  Date: 09/03/21
  Time: 2:28 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <meta charset="utf-8" />
    <title>Home Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="homepage.css">
    <script src="https://kit.fontawesome.com/91f5a52a7a.js" crossorigin="anonymous"></script>
</head>

<body>
<nav class="navbar navbar navbar-dark bg-info">
    <div class="container-fluid">

        <a class="navbar-brand"  style="color: #1b1e21">Link Sharing</a>
        <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-warning" type="submit">Search</button>
        </form>
    </div>
</nav>
<div class="message" style="color: #a60000"> ${flash.login}</div>
<div class="message" style="color: #a60000">${flash.message}</div>
<div class="message" style="color: #a60000">${flash.notRegistered}</div>
<div class="container">
    <div class="message" style="color: #a60000">${flash.notfound}</div>
    <div class="row">
        <div class="col-sm-7 mt-2 mr-3">
         <g:render template="/template/Recent"></g:render>
      <g:render template="/template/Top"></g:render>
        <div class="col-sm-4 mt-2">
            <div class="card">
                <div class="card-header"style="border:1px solid black;background-color: #80bdff" ><b><i>Login</i></b></div>
                <div class="card-body" style="border:1px solid black">
               <g:form  controller="user" action="login" method="post" >
                        <div class="form-group">
                            <label for="email">Email address:</label>
                            <input type="email" name="email" class="form-control" placeholder="Enter email" id="email" required>
                        </div>
                        <div class="form-group">
                            <label for="passwd">Password:</label>
                            <input name="password" type="password" class="form-control" placeholder="Enter password" id="passwd" required>

                        </div>


                        <g:actionSubmit value="login" type="submit" class="btn btn-primary">Login</g:actionSubmit><br>


                    </g:form>
                    <div class="message" style="color: #a60000">${flash.loginFailed}</div>
%{--                    <a href="#" onclick="forgetfunction()" data-toggle="modal" data-target="#send">Forget Password</a><br>--}%





                    <label id="newuser">New User?</label>
                    <button type="submit" class="btn btn-primary" style="align:right" data-toggle="modal" data-target=#register>Register</button><br>
                   <br> <div class="message" style="color: #a60000">${flash.messageUserNotFound}</div>
                    <p class="mb-0 mt-4 text-center"><a href="#0" class="link" data-toggle="collapse" data-target="#demo">Forgot your password?</a></p>
                    <br>
                    <g:form  controller="user" action="forgotPassword"><div id="demo" class="collapse">
                        <div class="form-group mt-2">
                            <input type="email" name="email" class="form-style" placeholder="Your Email" id="email" autocomplete="off">
                            <i class="input-icon uil uil-at"></i>
                        </div>
                        <div class="message" style="color: #a60000">${flash.messageUserNotFound}</div>
                        <g:actionSubmit value="submit" action="forgotPassword" class="btn btn-primary" /></div>
                    </g:form>
                </div>
                <div>

                    <div class="modal" id="register">
                        <div class="modal-dialog">
                            <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header" style="border:1px solid black;background-color: #80bdff">
                                <h4 class="modal-title" ><i><b>Register User:</b></i></h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body" style="border:1px solid black">
                                    <g:form  controller="user" action="registerUser" method="POST" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label for="firstName">First Name:</label>
                                            <input type="text" class="form-control" placeholder="Enter first name" id="firstName" name="firstName" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="lastName">Last Name:</label>
                                            <input type="text" class="form-control" placeholder="Enter last name" id="lastName" name="lastName" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="email">Email address:</label>
                                            <input type="email" class="form-control" placeholder="Enter email" id="email" name="email" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="user">Username:</label>
                                            <input type="text" class="form-control" placeholder="Enter Username" id="user" name="userName" required>
                                        </div>

                                        <div class="form-group">
                                            <label for="pas">Password:</label>
                                            <input type="password" class="form-control" placeholder="Enter password" id="pas" name="password" required>
                                        </div>

                                        <div class="form-group">
                                            <label for="pass">Confirm Password:</label>
                                            <input type="password" class="form-control" placeholder="Confirm password" id="pass" name="confirmPassword" required>
                                        </div>
                                        <div class="form-group"><label>Photo:</label>
                                            <input type="file" name="image">
                                        </div>

                                        <g:submitButton  name="Register User" type="submit" class="btn btn-primary" style="align:right">Register</g:submitButton>

                                    </g:form></div>

                            </div>


                        </div>
                    </div>
%{--                    <div class="modal" id="send">--}%
%{--                        <div class="modal-dialog">--}%
%{--                            <div class="modal-content">--}%
%{--                                <div class="modal-body">--}%
%{--                                    <g:form controller="user" action="send">--}%
%{--                                    <div class="form-group">--}%
%{--                                        <label >Email address:</label>--}%
%{--                                        <input type="email" class="form-control" placeholder="Enter email" id="resetemail" name="email">--}%
%{--                                    </div>--}%
%{--                                    <button  controller="user" action="send"  data-toggle="modal" data-target="otp" >Send</button>--}%
%{--                                    </g:form>--}%
%{--                                </div>--}%
%{--                            </div>--}%
%{--                        </div>--}%
%{--                    </div>--}%
%{--                    <div class="modal" id="otp">--}%
%{--                        <div class="modal-dialog">--}%
%{--                            <div class="modal-content">--}%
%{--                                <div class="modal-body">--}%
%{--                                    <label>Enter Otp:</label>--}%
%{--                                    <input type="text" placeholder="enter otp">--}%
%{--                                </div>--}%
%{--                                <g:actionSubmit value="Done" ></g:actionSubmit>--}%
%{--                            </div>--}%
%{--                        </div>--}%
%{--                    </div>--}%

                </div>
            </div>
        </div>

    </div>
</div>
<script>
    function forgetfunction(){
        $.ajax({
            url: "http://localhost:8050/user/index",
            success:function (result){
                $("#send mail").show()
            }
        })
    }
</script>
</body>
</html>