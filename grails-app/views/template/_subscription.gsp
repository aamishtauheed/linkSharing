<div class="card">

    <div class="card-header"style="border:1px solid black" >

        <h6>Subscription</h6>
    </div>
<div style="overflow-x: scroll; height: 250px;">
    <g:each in="${subs}" var="si">
    <div class="card-body" style="border:1px solid black">

        <table cellpadding="10px">
            <tr>
                <td><img src="https://www.pngkit.com/png/full/281-2812821_user-account-management-logo-user-icon-png.png" height="100px" width="100px" alt=""></td>
                <td>  <a href="#">${si.topic.tName}</a> <br>@${si.topic.createdBy.userName} <br>
                    <a href="#subscribe">Unsubscribe</a> </td>

                <td>
                    <h6> Subscription <br> <a href="#">50</a> </h6>
                </td>
                <td>
                    <h6>Post <br><a href="#">30</a></h6>
                </td>
            </tr>
            <tr>
                <td>  <div class="dropdown">
                    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">${si.seriousness}
                        <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                        <li><a href="#">Serious</a></li>
                        <li><a href="#">Casual</a> </li>
                        <li><a href="#"></a>Very Serious</li>
                    </ul>
                </div>
                <td>  <div class="dropdown">
                    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">${si.topic.visibility}
                        <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                        <li><a href="#">Private</a></li>
                        <li><a href="#">Public</a></li>
                    </ul>
                </div></td>
                <td><i class="fa fa-envelope fa-2x" aria-hidden="true"></i></td>
                <td><i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i></td>
                <td><i class="fa fa-trash-o fa-2x" aria-hidden="true"></i></td>
            </tr>
        </table>
    </div>
    </g:each>
</div>

%{--    <div class="card-body" style="border:1px solid black">--}%
%{--        <img src="https://www.pngkit.com/png/full/281-2812821_user-account-management-logo-user-icon-png.png" height="100px" width="100px" alt="" style="float:left">--}%

%{--        <table cellpadding="10px">--}%

%{--            <tr>--}%
%{--                <td><p>--}%
%{--                    <a href="#grails">Grails</a> <br>@Uday <br>--}%
%{--                    <a href="#subscribe">Unsubscribe</a> </td>--}%

%{--                <td>Subscription <br><a href="#">50</a></td>--}%
%{--                <td>Post <br><a href="#">30</a></td>--}%
%{--            </tr>--}%
%{--            <tr>--}%
%{--                <td>  <div class="dropdown">--}%
%{--                    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Serious--}%
%{--                        <span class="caret"></span></button>--}%
%{--                    <ul class="dropdown-menu">--}%
%{--                        <li><a href="#">Serious</a></li>--}%
%{--                    </ul>--}%
%{--                </div></td>--}%
%{--                <td><i class="fa fa-envelope fa-2x" aria-hidden="true"></i></td>--}%
%{--            </tr>--}%
%{--        </table>--}%
%{--    </div>--}%
</div>