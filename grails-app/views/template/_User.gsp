<div class="card">

    <div class="card-header"style="border:1px solid black" >

        <h6>Users : "Grails"</h6>
    </div>

<g:each in="${users}" var="us">


    <div class="card-body" style="border:1px solid black">
        <img src="https://www.pngkit.com/png/full/281-2812821_user-account-management-logo-user-icon-png.png"  style="float:left;border:2px solid black;" alt="user" width="150" height="150" />


        <table cellpadding="10px">
            <tr>
                <td> <p>
                     ${us.firstName} ${us.lastName} <br>@${us.userName}
                </p></td>
            </tr>
            <tr>
                <td> <h6>Subscriptions <br><a href="#">${Scount}</a></h6> </td>
                <td><h6>Topics <br><a href="#">${tcount}</a></h6></td>
            </tr>
        </table>

    </div>


</g:each>
</div>