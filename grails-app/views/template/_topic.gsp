<div class="card ml-2">

    <div class="card-header"style="border:1px solid black;background-color: #80bdff" >

        <h6><b><i>Topic: "${topic.tName}"</i></b></h6>
    </div>


    <div class="card-body" style="border:1px solid black">

        <table cellpadding="5px">
            <tr>
                <td><g:img dir="/home/aamish/Project/grails-app/assets/images/profilePic/" class="photo" file="${topic.createdBy.image}" height="100px" width="100px" alt=""/></td>
                <td>  <a href="#">${topic.tName}</a><p>${topic.visibility}</p> <br>@ <br>
                    <a href="#subscribe">Subscribe</a> </td>

                <td>
                    <h6>&nbsp Subscription <br> <a href="#">&nbsp ${topic.subscriptions.size()}</a> </h6>
                </td>
                <td>
                    <h6>&nbsp Post <br><a href="#">&nbsp ${topic.resources.size()}</a></h6>
                </td>
            </tr>
            <tr>
                <td> <div class="dropdown">
                    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Serious
                        <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                        <li><a href="#">Serious</a></li>
                    </ul>
                </div></td>
                <td><i class="fa fa-envelope fa-2x" aria-hidden="true"  data-toggle="modal" data-target="#myModal4"></i>
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
                                    <label>Email* :</label>
                                    <input type="textarea" name="" value=""> <br>
                                    <label>Topic* :</label>
                                    <div class="dropdown">
                                        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Topic
                                            <span class="caret"></span></button>
                                        <ul class="dropdown-menu">
                                            <li><a href="#">Topic</a></li>
                                        </ul>
                                    </div>
                                    <br>
                                    <button type="submit" name="button">Invite</button>
                                    <button type="submit" name="button">Cancel</button>
                                </div>
                                <!-- Modal footer -->
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div></td>
            </tr>

        </table>
    </div>


</div>