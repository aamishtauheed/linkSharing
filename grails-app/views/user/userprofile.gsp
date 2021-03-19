<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>User Profile</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="homepage.css">
    <script src="https://kit.fontawesome.com/91f5a52a7a.js" crossorigin="anonymous"></script>
  </head>
  <body>
    <nav class="navbar navbar navbar-dark bg-dark">
      <div class="container-fluid">
        <g:link class="navbar-brand" controller="user" action="dashboard">Link Sharing</g:link>
        <form class="d-flex">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-warning" type="submit">Search</button>
          <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Hi! ${session.user.userName}
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><g:link controller="user" action="editProfile">Edit Profile</g:link></li>
      <li><g:link controller="user" action="logout">logout</g:link></li>
    </ul>
  </div>
        </form>
      </div>
    </nav>
  <div class="row">
    <div class="col-sm-5">
    <g:render template="/template/userInfo"></g:render>
    <div class="card">
            <div class="card-header"style="border:1px solid black" >
              <h6>Topics</h6>
      </div>
            <div class="card-body" style="border:1px solid black">
      <a href="#">Grails</a>
      <table cellpadding="10px">
        <tr>
          <td><div class="dropdown">
      <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Search
      <span class="caret"></span></button>
      <ul class="dropdown-menu">
      <li><a href="#">Non Serious</a></li>
      <li><a href="#">Serious</a></li>
      </ul>
      </div>
    </td>
      <td>
        <i class="fa fa-envelope fa-2x" aria-hidden="true"></i>
      </td>
      <td>
    <h6> Subscription <br> 50</h6>
      </td>
      <td>
        <h6>Post <br> 30</h6>
      </td>
        </tr>      </table>
            </div>
            <div class="card-body" style="border:1px solid black">
        <table cellpadding="10px">
          <tr>
            <td><a href="#grails">Grails</a> <br><a href="#subscribe">Subscribe</a></td>
            <td><h6> Subscription <br> 50</h6></td>
            <td><h6>Post <br> 30</h6></td>
          </tr>
        </table>
  </div>
</div>
      <g:render template="/template/userSubscription"></g:render>
        <div class="col-sm-6">
  <div class="card">
    <div class="card-header"style="border:1px solid black" >
      <h6>Posts</h6>
<form>
  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
</form>
    </div>
    <div class="card-body" style="border:1px solid black">
    <a href="#">Grails</a>
    <p>Lorem ipsum dolor sir amet, consectetur adipiscing elit . Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus.</p>
    <i class="fab fa-facebook fa-2x"></i>
    <i class="fab fa-twitter-square fa-2x"></i>
    <i class="fab fa-google-plus-g fa-2x"></i>
    <table cellpadding="10px">
      <tr>
        <td>
          <a href="#download">Download</a>
        </td>
    <td>
      <a href="#viewfullsite">View full Site</a>
    </td>
    <td>
  <a href="#markasread">Mark As Read</a>
    </td>
    <td>
      <a href="#download">View Post</a>
    </td>
      </tr>
    </table>
    </div>

</div>
</div>
</div>
  </div></body>
</html>
 
