<%@ page import="com.linksharing.Subscription" %>
<div class="card mt-2 ">

    <div class="card-header"style="border:1px solid black;background-color: #80bdff" >

        <h6>Trending Topics</h6>
    </div>
    <div style="overflow-x: scroll; height: 400px;">
 <g:each in="${trending}" var="topic">
    <div class="card-body card${topic.id}" style="border:1px solid black">

        <table>
            <tr>
                <td><g:img dir="/home/aamish/Project/grails-app/assets/images/profilePic/" class="photo" file="${topic.createdBy.image}" height="100px" width="100px" alt=""/></td>
                <td>  <g:link controller="user" action="topicShow" id="${topic.id}">${topic.tName}</g:link> <br>@${topic.createdBy.userName} <br>
                   <g:if test="${((subTopic.user.id).contains(session.user.id))&&((subTopic.topic.id).contains(topic.id))}">
                       <a href="#" onclick="unsubscribe(${topic.id})" id="unsub">Unsubscribe</a>
%{--                        </td>   --}%
                   </g:if>
                  <g:else>
                      <a href="#" onclick="subscribe(${topic.id})" id="subscribe" >Subscribe</a>
                  </g:else>
                <td>
                    <h6>&nbsp Subscription <br> <a href="#">&nbsp ${topic.subscriptions.size()}</a> </h6>
                </td>
                <td>
                    <h6>&nbsp Post <br><a href="#">&nbsp ${topic.resources.size()}</a></h6>
                </td>
            </tr>
            <tr  ><td>
%{--                  <div class="dropdown">--}%
%{--                    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">${subs.seriousness}--}%
%{--                        <span class="caret"></span></button>--}%
%{--                    <ul class="dropdown-menu">--}%
%{--                        <li><a href="#">Serious</a></li>--}%
%{--                        <li><a href="#">VerySerious</a> </li>--}%
%{--                        <li><a href="#">Casual</a></li>--}%
%{--                    </ul>--}%
%{--     <g:if test="${((subTopic.user.id).contains(session.user.id))&&((subTopic.topic.id).contains(topic.id))}">--}%
                <g:select class="serious" name="Seriousness" data-id="${topic.id}" controller="subscription" action="setSerious"  from="${com.linksharing.Subscription.Seriousness}" value="SERIOUS">
%{--                    <option name="CASUAL" value="Casual">Casual</option>--}%
%{--                    <option name="SERIOUS" value="Serious">Serious</option>--}%
%{--                    <option name="VERYSERIOUS" value="Veryserious">VerySerious</option>--}%

                </g:select>
%{--     </g:if>--}%
%{--                    <g:hiddenField class="hid" name="subscriptionId" value="${topic.id}" />--}%


                </div></td>
                <td>  <div class="dropdown">
                <g:if test="${(topic.createdBy.id==session.user.id) || (session.user.admin==true)}">
                    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Visibility
                        <span class="caret"></span></button>

                    <ul class="dropdown-menu">
                        <li><a href="#">${topic.visibility}</a></li>
                    </ul>
                </div></td>
                <td style="padding: 10px"><i class="fa fa-envelope fa-2x" aria-hidden="true"></i></td>
                <td><i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i></td>
                    <td style="padding: 10px">

         <i class="fa fa-trash-o fa-2x" id="del" onclick="myfunction99(${topic.id})" aria-hidden="true" ></i>
                    </td>

     </g:if>

            </tr>      </table>
    </div>
 </g:each>
    </div>
    <script>
        $(document).ready(function (){
            $(".serious").change(function (){
              option =  $(this).val();
             var a= ($(this).attr("data-id"))
                // abc=myfunction();
                $.ajax({
                    method:'post',
                    url:"http://localhost:8030/subscription/setSerious",
                    data:{'id': a ,'option':option},
                    success: function (result){
                        if(result.status==true) {
                            alert("changed" + result.status);
                        }
                        else{
                            alert("not changed")
                        }
                    }
                });

                // alert("option selected"+option),
                // alert($(this).attr("data-id"));

                // alert("Subscription id"+abc);
            });
        });
       // function myfunction(id){
       //
       //      alert("subs id :"+id )
       //  }
%{--        ${document}.ready(function (){--}%
%{--            $("#del").on("click",function (){--}%
%{--                myfunction(${topic.id});--}%
%{--            });--}%
%{--        });--}%

        function myfunction99(id){
            $.ajax({
                method: 'post',
                url:"http://localhost:8030/topic/delete",
                data:{"topicId": id},
                dataType: "JSON",
                success: function (result){
                    if(resul.status==true) {
                        alert("working")
                        $(".card" + id).hide();
                    }
                }
            });
        };

        function subscribe(id){
            $.ajax({
                method:'post',
                url:"http://localhost:8030/topic/subscriber",
                data:{"topicId":id},
                dataType:"JSON",
                success: function(result){
                    if(result.status==true) {
                        $("#subscribe").hide()
                        // alert("done")
                        $("#unsub").show();
                        // alert("done again")
                    }
                }
            })
        }
        function unsubscribe(id){
              $.ajax({
                  method:'post',
                  url:"http://localhost:8030/topic/unsubscribe",
                  data:{"topicId":id},
                  dataType:"JSON",
                  success: function (result){
                      if(result.status==true) {
                          $("#unsub").hide()
                          $("#subscribe").show();

                      }

                  }
              })
        }
    </script>


</div>
</div>
