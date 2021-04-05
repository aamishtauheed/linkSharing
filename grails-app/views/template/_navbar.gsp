<nav class="navbar navbar navbar-dark bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" style="color:black" href="#linksharing" >Link Sharing</a>
        <table cellpadding="5px">
            <tr>
       <td> <input type="text" class="form-control me-2" type="search" id="search"  placeholder="Search" aria-label="Search"></td>

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
                            <g:form controller="resource" action="createLink" method="POST">
                                <label>Link* :</label>
                                <input type="textarea" name="url" value=""> <br>
                                <label>Description :</label>
                                <input type="textarea" name="description" value=""> <br>

                                <label>Topic* :</label>
                                <div class="dropdown">
                                    %{--        <g:if test="${com.linksharing.Topic.list().visibility=='Public'}">--}%
                                    <g:select name="tName" from="${subTopic.topic.tName}" class="dropdown-toggle btn btn-default col-sm-8" value="${resource?.tName}"/>
                                    %{--        </g:if>--}%
                                    %{--<ul class="dropdown-menu">--}%
                                    %{--      <li><a href="#">Topic</a></li>--}%
                                    %{--</ul>--}%
                                </div>
                                <br>
                                <button type="submit" class="btn btn-primary btn-block">Save</button>
                                <button type="submit" class="btn btn-primary btn-block">Cancel
                                </button>
                                </div>
                            </g:form>

                        <!-- Modal footer -->
                        %{--    <div class="modal-footer">--}%
                        %{--      <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>--}%
                        %{--    </div>--}%

                        </div>
                    </div>
                </div>


                <td><i class="fa fa-plus-square-o fa-2x" aria-hidden="true"  data-toggle="modal" data-target="#myModal2"></i></td>

                <!-- The Modal -->
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
                            <g:form method="post" enctype="multipart/form-data" controller="resource" action="saveDoc">
                                <label>Document* :</label>
                                <input type="file" name="filePath">
%{--                                <button type="button" name="button">Browse</button>--}%
                                <br>
                                <label>Description :</label>
                                <input type="textarea" name="description"> <br>

                                <label>Topic* :</label>
                                <div class="dropdown">
                                    <g:select name="tName" from="${subTopic.topic.tName}" class="dropdown-toggle btn btn-default col-sm-8" value="${resource?.tName}"/>
%{--                                    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Topic--}%
%{--                                        <span class="caret"></span></button>--}%
%{--                                    <ul class="dropdown-menu">--}%
%{--                                        <li><a href="#">Topic</a></li>--}%
%{--                                    </ul>--}%
                                </div>
                                <br>
                                <button type="submit" class="btn btn-primary btn-block">Share</button>
                                <button type="submit" class="btn btn-primary btn-block">Cancel
                                </button>
                            </g:form>
                            </div>

                            <!-- Modal footer -->
                            %{--                  <div class="modal-footer">--}%
                            %{--                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>--}%
                            %{--                  </div>--}%

                        </div>
                    </div>
                </div>


                <td><i class="fa fa-comment-o fa-2x" aria-hidden="true"  data-toggle="modal" data-target="#myModal3"></i></td>

                <!-- The Modal -->
                <div class="modal" id="myModal3">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Create Topic</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal body -->
                            %{--<g:form controller="topic" action="create" method="POST">--}%
                            <div class="modal-body">
                                <g:form controller="topic" action="create">
                                    <div class="form-group">
                                        <label id="topicname">Topic</label>
                                        <input type="text" name="tName" class="form-control" id="topicname"
                                               placeholder="Enter a topic name" value="${topic?.tName}">
                                        <g:hiddenField name="createdBy" value="${session.user}"/>
                                    </div>
                                    <h5>Visibility</h5>
                                    <select name="visibility">
                                        <option name="public" value="Public">Public</option>
                                        <option name="private" value="Private">Private</option>
                                    </select>
                                    <button type="submit" class="btn btn-primary btn-block">Save</button>
                                    <button type="submit" class="btn btn-primary btn-block">Cancel
                                    </button>

                                </g:form>
                            %{--                    <g:form controller="topic" action="create" method="POST">--}%
                            %{--                    <label>Name* :</label>--}%
                            %{--                    <input type="textarea" name="tName" value="${topic?.tName}"> <br>--}%
                            %{--                        <g:hiddenField name="createdBy" value="${session.user}"/>--}%

                            %{--                        <h5>Visibility</h5>--}%
                            %{--                        <select  name="visibility" required>--}%
                            %{--                            <option name="public" value="Public">Public</option>--}%
                            %{--                            <option name="private" value="Private">Private</option>--}%
                            %{--                        </select><br>--}%
                            %{--                        <g:actionSubmit value="Save" controller="topic" action="create"></g:actionSubmit>--}%
                            %{--                        <button type="submit" class="btn btn-primary btn-block">Save</button>--}%
                            %{--                        <button type="submit" class="btn btn-primary btn-block">Cancel--}%
                            %{--                        </button>--}%
                            %{--                    </g:form>--}%

                            <!-- Modal footer -->
                            %{--                  <div class="modal-footer">--}%
                            %{--                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>--}%
                            %{--                  </div>--}%

                            </div>
                        </div>
                    </div>
                    <td>
                        <i class="fa fa-envelope fa-2x" aria-hidden="true"  data-toggle="modal" data-target="#myModal4"></i>
                    </td>
                    <!-- The Modal -->
                    <div class="modal" id="myModal4">
                        <div class="modal-dialog">
                            <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h4 class="modal-title">Send Invitation</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>

                                <!-- Modal body -->
                            <div class="modal-body">
                                %{--                    <g:form controller="subscription" action="subscribed">--}%
                                <g:form controller="topic" action="sendTopic">
                                    <label>Email* :</label>
                                    <input type="textarea" name="email" value=""> <br>

                                    <label>Topic* :</label>
                                    <div class="dropdown">
                                %{--                <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Topic--}%
                                %{--                <span class="caret"></span></button>--}%
                                %{--                <ul class="dropdown-menu">--}%
                                    <g:select name="tName" from="${subTopic.topic.tName}" class="dropdown-toggle btn btn-default col-sm-8" value="${subscription?.tName}"/>
                                    </ul>
                                    </div>
                                    <br>
                                    <button type="submit" class="btn btn-primary btn-block">Save</button>
                                    <button type="submit" class="btn btn-primary btn-block">Cancel
                                    </button>
                                    </div>
                                </g:form>
                            %{--                    </g:form>--}%

                            <!-- Modal footer -->
                            %{--                  <div class="modal-footer">--}%
                            %{--                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>--}%
                            %{--                  </div>--}%

                            </div>
                        </div>
                    </div>
                </div></tr>
        </table>


        <div class="dropdown">
            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Hi ${session.user.userName}
                <span class="caret"></span></button>
            <ul class="dropdown-menu">
                <li><g:link controller="user" action="profile">Profile</g:link></li>
                <g:if test="${session.user.admin==true}">
                    <li><g:link controller="admin" action="details">Users</g:link> </li>
                </g:if>
                <li><g:link controller="user" action="topicShow">Topics</g:link></li>
                <li><g:link controller="user" action="post" >Posts</g:link></li>
                <li><g:link controller="user" action="logout" >Logout</g:link>
            </ul>
        </div>
    </div>
</nav>
</nav>
<script>
    $(document).ready(function (){
        $("#search").oninput(function (){
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
    };

</script>