<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Users (For admin)</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="homepage.css">
    <script src="https://kit.fontawesome.com/91f5a52a7a.js" crossorigin="anonymous"></script>
  </head>
  <body>
    <g:render template="/template/navbar"></g:render>

      <div class="card mt-5 ml-5 mr-5" >
        <div class="card-header"style="border:1px solid black" >

          <b>Users</b>
            <form style="float:right;" class="d-flex">
              <div class="dropdown">
        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">All Users
        <span class="caret"></span></button>
        <ul class="dropdown-menu">
                <li><a href="#">All Users</a></li>
        </ul>
      </div>
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button type="search" class="btn btn-primary " name="button">Search</button>
              </form>
            </div>
            <div class=row>
            <div class="col-sm-12">
            <table   cellpadding="10px" border="2px">
              <tr cellpadding="10px">
                <th width="10px">🔽Id</th>
                <th>🔽Username</th>
                 <th>🔽Email</th>
                <th>🔽First Name</th>
                 <th>🔽Last Name</th>
                   <th>🔽Active</th>
                    <th>🔽Manage</th>
              </tr>
                <g:each in="${info}" var="it">
                <td>${it.id}</td>
                <td>${it.userName}</td>
                 <td>${it.email}</td>
                  <td>${it.firstName}</td>
                   <td>${it.lastName}</td>
                    <td>${it.active}</td>
                    <g:if test="${it.active==true}">
%{--                        <g:form controller="user" action="activate">--}%
                        <td><g:link controller="user" action="deactivate" id="${it.id}" style="color: #a60000">Deactivate</g:link></td>
%{--                        </g:form>--}%
                        </g:if>
                    <g:else>
                        <td><g:link controller="user" action="activate" id="${it.id}" style="color: #1e7e34">Activate</g:link> </td>
                    </g:else>
              </tr>
                </g:each>

            </table>
          </div>
        </div>

          </div>




  </body>
</html>
