<div class="card mt-2">

    <div class="card-header"style="border:1px solid black;background-color: #80bdff" ><b><i>Top Posts</i></b></div>
    <div style="overflow-x: scroll; height: 400px;">
        <g:each in="${recents}" var="rec">
            <div class="card-body" style="border:1px solid black">
                <g:img dir="/home/aamish/Project/grails-app/assets/images/profilePic/" class="photo" file="${rec.createdBy.image}"  style="float:left;border:2px solid black;" alt="user" width="150" height="150" />
                <div class="recent">
                    <p>
                        &nbsp ${rec.createdBy.userName}
                        <g:link style="float: inline-end" ,href="#" > ${rec.topic.tName} </g:link>
                    </p>
                    <p>
                        &nbsp ${rec.description}
                    </p>
                    <br />
                    <i class="fab fa-facebook fa-2x"></i>&nbsp
                    <i class="fab fa-twitter-square fa-2x"></i>&nbsp
                    <i class="fab fa-google-plus-g fa-2x"></i>&nbsp
                </div>
            </div>
        </g:each>
    </div>
</div>
</div>