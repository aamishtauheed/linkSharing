<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <title>Home Page</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="homepage.css">

</head>

<body>
  <nav class="navbar navbar navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand">Link Sharing</a>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Hi! ${session.user.userName}
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><g:link controller="user" action="profile">Profile</g:link></li>
      <li><g:link controller="user" action="index">logout</g:link></li>
    </ul>
  </div>
      </form>
    </div>
  </nav>
  <div class="container">
    <div class="row">
      <div class="col-sm-5">
        <g:render template="/template/userInfo"></g:render>
        <div class="card">

          <div class="card-header"style="border:1px solid black" >
            <p>
              &nbsp Topic &nbsp
            <input style="float:right" class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          </p>
          </div>
          <div class="card-body" style="border:1px solid black">
            <img src="https://www.pngkit.com/png/full/281-2812821_user-account-management-logo-user-icon-png.png"  style="float:left;border:2px solid black;" alt="user" width="150" height="150" />
            <div class="recent">
              <h4>&nbsp Tauheed</h4>
                <div>

                </div>
                <br />

            </div>
          </div>
        </div>
      </div>
      <div class="col-sm-7">
        <div class="card">
          <div class="card-header"style="border:1px solid black" >Update Profile</div>
          <div class="card-body" style="border:1px solid black">
           <g:form controller="user" action="updateProfile" method="POST" enctype="multipart/form-data">
           <div class="form-group">
             <label for="Firstname">First Name:</label>
             <input type="text" name="firstName" class="form-control" placeholder="first name" id="Firstname">
           </div>
           <div class="form-group">
             <label for="Lastname">Last Name:</label>
             <input type="text" name="lastName" class="form-control" placeholder="last name" id="Lastname">
           </div>
           <div class="form-group">
             <label for="Username">User Name:</label>
             <input type="text" name="userName" class="form-control" placeholder="user name" id="Username">
           </div>
%{--               <div class="form-group ">--}%
%{--                   <label for="selectimage">Select Image</label>--}%
%{--                   <input type="file" name="photo" class="form-control" id="selectimage">--}%
%{--               </div>--}%
         <div class="form-group"><label>Photo:</label>
             <input type="file" name="image">
         </div>
           <g:actionSubmit value="Update" action="updateProfile" type="submit" class="btn btn-primary">Update</g:actionSubmit>
           </g:form>


       </div>
       </div>
       <div class="card">

         <div class="card-header"style="border:1px solid black">Change Password</div>
         <div class="card-body" style="border:1px solid black">

          <g:form controller="user" action="updatePassword" method="POST">
          <div class="form-group">
            <label for="Password">Password:</label>
            <input type="text" name="password" class="form-control" placeholder="Enter Password" id="Password">
          </div>
          <div class="form-group">
            <label for="cpassword">Confirm Password:</label>
            <input type="text" name="confirmPassword" class="form-control" placeholder="Confirm Password" id="cpassword">
          </div>


         <g:actionSubmit value="Update Password" type="submit" class="btn btn-primary" style="align:right">Update</g:actionSubmit>
          </g:form>
      </div>
       </div>

    </div>
  </div>

  </div></body>

</html>
