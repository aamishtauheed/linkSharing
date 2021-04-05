<div class="card ml-2">

    <div class="card-header"style="border:1px solid black;background-color: #80bdff" >

        <h6><b><i>Users : "${topic.tName}"</i></b></h6>
    </div>
<div style="overflow-x: scroll; height: 400px;">
<g:each in="${subs}" var="us">

    <div class="card-body" style="border:1px solid black">
        <g:img dir="/home/aamish/Project/grails-app/assets/images/profilePic/" class="photo" file="${us.user.image}"  style="float:left;border:2px solid black;" alt="user" width="150" height="150" />


        <table cellpadding="10px">
            <tr>
                <td> <p>
                     ${us.user.firstName} ${us.user.lastName} <br>@${us.user.userName}
                </p></td>
            </tr>
            <tr>
                <td> <h6>Subscriptions <br><a href="#">&nbsp ${us.user.subscriptions.size()}</a></h6> </td>
                <td><h6>Topics <br><a href="#">&nbsp ${us.user.topics.size()}</a></h6></td>
            </tr>
        </table>

    </div>


</g:each>
</div>
</div>