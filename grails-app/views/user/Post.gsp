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
  <script src="https://kit.fontawesome.com/91f5a52a7a.js" crossorigin="anonymous"></script>
%{--  <link rel="stylesheet" href="homepage.css">--}%
  <link rel="stylesheet" href="homepage.css">

</head>

<body>
  <nav class="navbar navbar navbar-dark bg-info">
    <div class="container-fluid">
      <g:link controller="user" action="dashboard" class="navbar-brand">Link Sharing</g:link>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" style="background-color: brown" type="button" data-toggle="dropdown">Hi ${session.user.userName}
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
      <div class="col-sm-6 mt-4">
        <div class="card">

           <br>
          <div class="card-body" style="border:1px solid black">
            <g:img dir="/home/aamish/Project/grails-app/assets/images/profilePic/" class="photo" file="${res.topic.createdBy.image}"  style="float:left;border:2px solid black;" alt="user" width="150" height="150" />
            <div class="recent">
              <p>
              &nbsp ${res.topic.createdBy.firstName}
                <a style="float:inline-end"; href="#">${res.topic.tName}</a>
              </p>
            </div>
              <div id="rateYo" style="margin-left: 150px;"></div>
              <div>&nbsp ${res.description}</div>

            </p>
                &nbsp
                <br />
              <table cellpadding="10px">
                <tr>
%{--                  <td><i class="fab fa-facebook fa-2x"></i>--}%
%{--                    <i class="fab fa-twitter-square fa-2x"></i>--}%
%{--                    <i class="fab fa-google-plus-g fa-2x"></i></td>--}%
                  <td>
                    <a href="#download">Download</a>
                  </td>
                  <td>
                    <a href="${res.linkResources.url[0]}" target="_blank" rel="noopener noreferrer">View full Site</a>
                  </td>
                  <td>
                    <a href="#markasread">Mark As Read</a>
                  </td>
                  <td>
                    <g:if test="${(res.topic.createdBy.id==session.user.id)||(session.user.admin==true)}">
                      <g:link controller="resource" action="delete" id="${res.id}">Delete</g:link>
                    </g:if>
                      </td>
                </tr>
              </table>
            </div>
          </div>
        </div>
%{--      </div>--}%
        <div class="col-sm-6 mt-3">
%{--          <div class="card">--}%

%{--            <div class="card-header"style="border:1px solid black" >--}%

%{--              <h6>Posts</h6>--}%
%{--            </div>--}%
          <g:render template="/template/trendingtopic"></g:render>
        </div>
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
