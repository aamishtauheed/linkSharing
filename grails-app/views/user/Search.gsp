<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Search</title>
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
              <td><i class="fa fa-link height-5 width-5 color-light fa-2x" aria-hidden="true"></i></td>
              <td><i class="fa fa-plus-square-o fa-2x" aria-hidden="true"></i></td>
            </tr>
          </table>




          <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Hi ${session.user.userName}
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><g:link controller="user" action="profile" >Profile</g:link></li>
      <li><g:link controller="user" action="logout">Logout</g:link></li>
    </ul>
  </div>



        </form>
      </div>
    </nav>



      <div class="row">



          <div class="col-sm-6">
            <g:render template="/template/trendingtopic"></g:render>



%{--    <div class="card">--}%



%{--      <div class="card-header"style="border:1px solid black" >--}%



%{--  <h6>Trending Topics</h6>--}%
%{--      </div>--}%




%{--      <div class="card-body" style="border:1px solid black">--}%



%{--      <table cellpadding="10px">--}%
%{--        <tr>--}%
%{--          <td><img src="download.png" height="100px" width="100px" alt=""></td>--}%
%{--          <td>  <a href="#">Grails</a> <br>@uday <br>--}%
%{--          <a href="#subscribe">Subscribe</a> </td>--}%



%{--      <td>--}%
%{--    <h6> Subscription <br> <a href="#">50</a> </h6>--}%
%{--      </td>--}%
%{--      <td>--}%
%{--        <h6>Post <br><a href="#">30</a></h6>--}%
%{--      </td>--}%
%{--        </tr>      </table>--}%
%{--      </div>--}%



%{--      <div class="card-body" style="border:1px solid black">--}%




%{--        <table cellpadding="10px">--}%
%{--          <tr>--}%
%{--            <td><img src="download.png" height="100px" width="100px" alt=""></td>--}%
%{--            <td><input align="right" class="form-control me-2" type="search" placeholder="Search" aria-label="Search"></td>--}%
%{--            <td><button class="btn btn-danger" type="submit">Save</button></td>--}%
%{--          </tr>--}%
%{--          <tr>--}%
%{--            <td>@uday</td>--}%
%{--            <td>Subscription <br><a href="#">50</a></td>--}%
%{--            <td>Post <br><a href="#">30</a></td>--}%
%{--          </tr>--}%
%{--          <tr>--}%
%{--            <td><div width="500px" class="dropdown">--}%
%{--  <button class="dropbtn">🔽</button>--}%
%{--  <div class="dropdown-content" >--}%
%{--    <a href="#">Serious</a>--}%



%{--  </div>--}%
%{--</div></td>--}%
%{--<td><div width="500px" class="dropdown">--}%
%{--<button class="dropbtn">🔽</button>--}%
%{--<div class="dropdown-content" >--}%
%{--<a href="#">Private</a>--}%



%{--</div>--}%
%{--</div></td>--}%
%{--            <td><i class="fa fa-envelope" aria-hidden="true"></i></td>--}%
%{--            <td><i class="fa fa-pencil-square-o" aria-hidden="true"></i></td>--}%
%{--            <td><i class="fa fa-trash-o" aria-hidden="true"></i></td>--}%
%{--          </tr>--}%
%{--        </table>--}%
%{--  </div>--}%
%{--</div>--}%






<div class="card">



  <div class="card-header"style="border:1px solid black" >



<h6>Top Posts</h6>



  </div>




  <div class="card-body" style="border:1px solid black">
  <a href="#">Grails</a> <br>



  <table cellpadding="5px">
    <tr>
      <td>  <img src="download.png" height="100px" width="100px" alt=""></td>
      <td>  <p><h6>Uday Pratap Singh </h6> @uday <br>Lorem ipsum dolor sir amet, consectetur adipiscing elit . Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus.</p></td>



    </tr>
  </table>




  <table cellpadding="8px">
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
  <a href="#">Grails</a> <br>



  <table cellpadding="5px">
    <tr>
      <td>  <img src="download.png" height="100px" width="100px" alt=""></td>
      <td>  <p><h6>Uday Pratap Singh </h6> @uday <br>Lorem ipsum dolor sir amet, consectetur adipiscing elit . Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus.</p></td>



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




<div class="col-sm-6">
  <div class="card">



    <div class="card-header"style="border:1px solid black" >



<h6>Search for "test"</h6>



    </div>




    <div class="card-body" style="border:1px solid black">
    <a href="#">Grails</a> <br>



    <table cellpadding="5px">
      <tr>
        <td>  <img src="download.png" height="100px" width="100px" alt=""></td>
        <td>  <p><h6>Uday Pratap Singh </h6> @uday <br>Lorem ipsum dolor sir amet, consectetur adipiscing elit . Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus.</p></td>
        <td></td>
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
    <a href="#">Grails</a> <br>



    <table cellpadding="5px">
      <tr>
        <td>  <img src="download.png" height="100px" width="100px" alt=""></td>
        <td>  <p><h6>Uday Pratap Singh </h6> @uday <br>Lorem ipsum dolor sir amet, consectetur adipiscing elit . Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus.</p></td>
        <td></td>
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
 
