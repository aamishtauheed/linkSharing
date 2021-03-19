<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <title>Home Page</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">  <!-- Latest compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>

  <link rel="stylesheet" href="homepage.css">

</head>

<body>
  <nav class="navbar navbar navbar-dark bg-dark">
    <div class="container-fluid">
      <g:link controller="user" action="dashboard" class="navbar-brand">Link Sharing</g:link>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Hi ${session.user.userName}
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><g:link controller="user" action="profile">Profile</g:link></li>
      <li><g:link controller="user" action="logout" >Logout</g:link></li>
    </ul>
  </div>
      </form>
    </div>
  </nav>
  <div class="container">
    <div class="row">
      <div class="col-sm-7">
        <div class="card">

           <br>
          <div class="card-body" style="border:1px solid black">
            <img src="https://www.pngkit.com/png/full/281-2812821_user-account-management-logo-user-icon-png.png"  style="float:left;border:2px solid black;" alt="user" width="150" height="150" />
            <div class="recent">
              <p>
              &nbsp Aamish
                <a style="float: inline-end"; href="#">TopicName</a>
              <div id="rateYo" style="margin-left: 150px;"></div>

            </p>
                &nbsp
                <br />
                <i class="fab fa-facebook fa-2x"></i>&nbsp
                <i class="fab fa-twitter-square fa-2x"></i>&nbsp
                <i class="fab fa-google-plus-g fa-2x"></i>&nbsp

            </div>
          </div>
        </div>
      </div>
        <div class="col-sm-5">
          <g:render template="/template/trendingtopic"></g:render>
          <script>
          $(function () {
            $("#rateYo").rateYo({
              starWidth: "20px",
              rating    : 1.6,
              spacing   : "5px",
              multiColor: {
                "startColor": "#FF0000", //RED
                "endColor"  : "#00FF00"  //GREEN
              }
            });
          });
        </script>
