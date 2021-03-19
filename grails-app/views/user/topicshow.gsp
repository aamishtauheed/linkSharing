<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Topic show</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


    <link rel="stylesheet" href="homepage.css">
    <script src="https://kit.fontawesome.com/91f5a52a7a.js" crossorigin="anonymous"></script>
  </head>
  <body>
    <nav class="navbar navbar navbar-dark bg-light">
      <div class="container-fluid">
        <a class="navbar-brand" style="color:black" >Link Sharing</a>
        <form class="d-flex">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <table cellpadding="5px">
            <tr>
              <td><i class="fa fa-link height-5 width-5 color-light fa-2x" aria-hidden="true" data-toggle="modal" data-target="#myModal1"></i></td>

              <!-- The Modal -->
              <div class="modal" id="myModal1">
              <div class="modal-dialog">
                <div class="modal-content">
                  <!-- Modal Header -->
                  <div class="modal-header">
                    <h4 class="modal-title">Share link</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                  </div>
                  <!-- Modal body -->
                  <div class="modal-body">
                  <label>Link* :</label>
                  <input type="textarea" name="" value=""> <br>
                  <label>Description :</label>
                  <input type="textarea"> <br>
                  <label>Topic* :</label>
                  <div class="dropdown">
              <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Topic
              <span class="caret"></span></button>
              <ul class="dropdown-menu">
                    <li><a href="#">Topic</a></li>
              </ul>
              </div>
              <br>
              <button type="submit" name="button">Share</button>
              <button type="submit" name="button">Cancel</button>
                  </div>
                  <!-- Modal footer -->
                  <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                  </div>
                </div>
              </div>
              </div>
              <td><i class="fa fa-plus-square-o fa-2x" aria-hidden="true"  data-toggle="modal" data-target="#myModal2"></i></td>
              <div class="modal" id="myModal2">
              <div class="modal-dialog">
                <div class="modal-content">
                  <!-- Modal Header -->
                  <div class="modal-header">
                    <h4 class="modal-title">Share Document</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                  </div>
                  <!-- Modal body -->
                  <div class="modal-body">
                    <label>Document* :</label>
                    <input type="textarea" name="" value="">
<button type="button" name="button">Browse</button>
                    <br>
                    <label>Description :</label>
                    <input type="textarea"> <br>
                    <label>Topic* :</label>
                    <div class="dropdown">
                <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Topic
                <span class="caret"></span></button>
                <ul class="dropdown-menu">
                      <li><a href="#">Topic</a></li>
                </ul>
                </div>
                <br>
                <button type="submit" name="button">Share</button>
                <button type="submit" name="button">Cancel</button>
                  </div>
                  <!-- Modal footer -->
                  <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                  </div>
                </div>
              </div>
              </div>
            </tr>
          </table>


          <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Hi ${session.user.userName}
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><g:link controller="user" action="profile">Profile</g:link></li>
      <li><g:link controller="user" action="logout">Logout</g:link></li>
    </ul>
  </div>

        </form>
      </div>
    </nav>

      <div class="row">

          <div class="col-sm-6">

<g:render template="/template/topic"></g:render>
<g:render template="/template/User"></g:render>
</div>




<div class="col-sm-6">
  <div class="card">

    <div class="card-header"style="border:1px solid black" >

<h6>Posts: "Grails"</h6>


    </div>


    <div class="card-body" style="border:1px solid black">


    <table cellpadding="5px">
      <tr>
        <td>  <img src="https://www.pngkit.com/png/full/281-2812821_user-account-management-logo-user-icon-png.png" height="100px" width="100px" alt=""></td>
        <td><p>Lorem ipsum dolor sir amet, consectetur adipiscing elit . Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus.</p></td>
      </tr>
    </table>


    <table cellpadding="10px">
      <tr>
        <td>  <i class="fab fa-facebook fa-2x"></i>
          <i class="fab fa-twitter-square fa-2x"></i>
          <i class="fab fa-google-plus-g fa-2x"></i></td>
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

    <div class="card-body" style="border:1px solid black">


    <table cellpadding="5px">
      <tr>
        <td>  <img src="https://www.pngkit.com/png/full/281-2812821_user-account-management-logo-user-icon-png.png" height="100px" width="100px" alt=""></td>
        <td>  <p>Lorem ipsum dolor sir amet, consectetur adipiscing elit . Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus.</p></td>

      </tr>
    </table>


    <table cellpadding="10px">
      <tr>
        <td>  <i class="fab fa-facebook fa-2x"></i>
          <i class="fab fa-twitter-square fa-2x"></i>
          <i class="fab fa-google-plus-g fa-2x"></i></td>
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

  </body>
</html>
