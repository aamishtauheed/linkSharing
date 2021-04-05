<div class="card">
    <div class="card-header"id="topic" style="border:1px solid black" >
        <h6>Subscriptions</h6>
    </div>
    <div style="overflow-x: scroll; height: 400px;">
<g:each in="${subscribed}" var="sub">
    <div class="card-body" data-spy="scroll" data-target="#topic" style="border:1px solid black">
        <table cellpadding="10px">
            <tr>
                <td><a href="#">${sub.tName}</a> <br>
                    <div class="dropdown">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Search
                            <span class="caret"></span></button>
                        <ul class="dropdown-menu">
                            <li><a href="#">Very Serious</a></li>
                            <li><a href="#">Serious</a></li>
                            <li><a href="#">Casual</a></li>
                        </ul>
                    </div>



                </td>
                <td>
                    <i class="fa fa-envelope fa-2x" aria-hidden="true"></i>
                </td>
                <td><h6> Subscription <br> 50</h6></td>
                <td><h6>Post <br> 30</h6></td>
            </tr>
        </table>
    </div>
</g:each>
    </div>
</div>
</div>