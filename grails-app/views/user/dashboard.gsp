<%@ page import="com.linksharing.Topic" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <link rel="stylesheet" href="homepage.css">
    <script src="https://kit.fontawesome.com/91f5a52a7a.js" crossorigin="anonymous"></script>
  </head>
  <body>
<g:render template="/template/navbar"></g:render>

<div class="row">
  <div class="col-sm-5">
<g:render template="/template/userInfo"></g:render>

<g:render template="/template/subscription"></g:render>

<g:render template="/template/trendingtopic"></g:render>

    <div class="col-sm-6">
      <div class="card" id="inbox">

        <div class="card-header display-inline"style="border:1px solid black" >

          <table>
            <tr>
              <td>  <h6>Inbox</h6></td>
              <td><form  styleclass="d-flex">
                <input  class="form-control me-2 " type="search" placeholder="Search" aria-label="Search">
                </form></td>
            </tr>
          </table>

        </div>
          <div class="card-body" id="cbody" style="border:1px solid black">
  <img src="https://www.pngkit.com/png/full/281-2812821_user-account-management-logo-user-icon-png.png" height="100px" width="100px" alt="" style="float:left">
  <a href="#">&nbsp ${session.user.firstName} ${session.user.lastName}</a> <br> <p>&nbsp @${session.user.userName}</p>
          <a href="#">&nbsp Grails</a>
          <p>&nbsp Lorem ipsum dolor sir amet, consectetur adipiscing elit . Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus.</p>
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
        <a href="#markasread" id="read" onclick="readfunction()">Mark As Read</a>
          </td>
          <td>
            <a href="#download">View Post</a>
          </td>
            </tr>
          </table>
    </div>
    </div>
      <span id="display">

      </span>



      </div>
  </div>

</div>
  <script>
      $(document).ready(function (){
          $("#search").on('input',function (){
              searchfunction();
          });
      });
      function searchfunction(){
          $.ajax({
              method:"POST",
              url:"http://localhost:8050/user/search",
              data:{"search":$("#search").val()},
                  datatype:JSON,
                  success:function (result){
                      $("#inbox").hide()
                      $("#display").text(result.topic + " CreatedBy: "+result.userName +" Description: "+ result.description)
                  }
          });
      }
      function readfunction(){
          $("#cbody").hide();
      };
  </script>

  </body>
</html>
