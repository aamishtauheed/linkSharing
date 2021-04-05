<div class="card">


    <div class="card-body" style="border:1px solid black ">
        <g:img dir="/home/aamish/Project/grails-app/assets/images/profilePic/" class="photo" file="${session.user.image}"  style="float:left;border:2px solid black;" alt="user" width="150" height="150" />


        <table cellpadding="10px">
            <tr>
                <td> <p>
                    &nbsp ${session.user.firstName} ${session.user.lastName} <br>&nbsp @${session.user.userName}
                </p></td>
            </tr>
            <tr>
                <td> <a href="#" data-toggle="modal" data-target="#subs" >Subscriptions<br>${Scount} </td>
                <td><a href="#" data-toggle="modal" data-target="#topic"> Topics <br> ${tcount} </td>

            </tr>
        </table>

    </div>

</div>
<div class="modal" id="topic">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <table cellpadding="10px">
                    <tr>
                        <th>
                            Topic
                        </th>
                        <th> Visibility</th>
                    </tr>
                    <g:each in="${topics}" var="tp">
                        <tr>
                            <td>
                                ${tp.tName}
                            </td>
                            <td>
                                ${tp.visibility}
                            </td>
                        </tr>
                    </g:each>
                </table>
            </div>
        </div>
    </div>
</div>
<div class="modal" id="subs">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <table cellpadding="10px">
                    <tr>
                        <th>
                            Topic
                        </th>
                        <th> Visibility</th>
                    </tr>
                    <g:each in="${subTopic}" var="st">
                        <tr>
                            <td>
                                ${st.topic.tName}
                            </td>
                            <td>
                                ${st.seriousness}
                            </td>
                        </tr>
                    </g:each>
                </table>
            </div>
        </div>
    </div>
</div>