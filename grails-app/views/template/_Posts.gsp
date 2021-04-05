
    <div style="overflow-x: scroll; height: 400px;">
    <g:each in="${dis}" var="pos">

        <div class="card-body" id="cbody" style="border:1px solid black">
            <g:img dir="/home/aamish/Project/grails-app/assets/images/profilePic/" class="photo" file="${pos.topic.createdBy.image}" height="100px" width="100px" alt="" style="float:left;border:2px solid black;"/>
            <a href="#">&nbsp ${pos.topic.createdBy.firstName} ${pos.topic.createdBy.lastName}</a> <br> <p>&nbsp @${pos.topic.createdBy.userName}</p>

            <table cellpadding="5px">
                <tr>
%{--                    <td><img src="https://www.pngkit.com/png/full/281-2812821_user-account-management-logo-user-icon-png.png"--}%
%{--                             height="100px" width="100px" alt=""></td>--}%
                    <td><b>${pos.topic.tName}</b></td>
                </tr>
                <tr>
                    <td><p>${pos.description}</p></td>
                </tr>
            </table>


            <table cellpadding="10px">
                <tr>
                    <td><i class="fab fa-facebook fa-2x"></i>
                        <i class="fab fa-twitter-square fa-2x"></i>
                        <i class="fab fa-google-plus-g fa-2x"></i></td>
                    <td>
%{--                        <g:if test="${(pos.linkResources.resource.id!=pos.id)&&(pos.documentResources.resource.id==pos.id)}">--}%
                        <g:if test="${pos.linkResources.url[0]==null}">

                        <g:link controller="resource" action="download" id="${pos.documentResources.id}">Download</g:link>
                        </g:if>
%{--                        </g:if>--}%
                    </td>
                    <td>
                        <g:if test="${pos.linkResources.url[0]!=null}">
                        <a href="${pos.linkResources.url[0]}" target="_blank" rel="noopener noreferrer">View full Site</a>
                        </g:if>
                            </td>
                    <td>
                        <a href="#markasread">Mark As Read</a>
                    </td>
                    <td>
                        <g:link controller="user" action="post" id="${pos.id}">View Post</g:link>
                    </td>
                </tr>
            </table>

        </div>
    </g:each>
    </div>
</div>