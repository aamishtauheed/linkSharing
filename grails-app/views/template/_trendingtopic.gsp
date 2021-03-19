<div class="card">

    <div class="card-header"style="border:1px solid black" >

        <h6>Trending Topics</h6>
    </div>
    <div style="overflow-x: scroll; height: 400px;">
 <g:each in="${trending}" var="topic">
    <div class="card-body card${topic.id}" style="border:1px solid black">

        <table cellpadding="10px">
            <tr>
                <td><img src="https://www.pngkit.com/png/full/281-2812821_user-account-management-logo-user-icon-png.png" height="100px" width="100px" alt=""></td>
                <td>  <g:link controller="user" action="topicShow">${topic.tName}</g:link> <br>@${topic.createdBy.userName} <br>
                    <a href="#subscribe">Subscribe</a> </td>

                <td>
                    <h6> Subscription <br> <a href="#">50</a> </h6>
                </td>
                <td>
                    <h6>Post <br><a href="#">30</a></h6>
                </td>
            </tr>
            <tr>
                <td>  <div class="dropdown">
                    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Serious
                        <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                        <li><a href="#">Serious</a></li>
                    </ul>
                </div></td>
                <td>  <div class="dropdown">
                    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Visibility
                        <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                        <li><a href="#">${topic.visibility}</a></li>
                    </ul>
                </div></td>
                <td><i class="fa fa-envelope fa-2x" aria-hidden="true"></i></td>
                <td><i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i></td>
                <td>
     <g:if test="${(topic.createdBy.id==session.user.id) || (session.user.admin==true)}">
         <i class="fa fa-trash-o fa-2x" id="del" onclick="myfunction99(${topic.id})" aria-hidden="true" ></i>

     </g:if>

            </tr>      </table>
    </div>
 </g:each>
    </div>
    <script>
%{--        ${document}.ready(function (){--}%
%{--            $("#del").on("click",function (){--}%
%{--                myfunction(${topic.id});--}%
%{--            });--}%
%{--        });--}%

        function myfunction99(id){
            $.ajax({
                method: 'post',
                url:"http://localhost:8050/topic/delete",
                data:{"topicId": id},
                dataType: "JSON",
                success: function (result){
                    alert("working")
                    $(".card" + id).hide()
                }
            });
        };
    </script>


</div>
</div>
