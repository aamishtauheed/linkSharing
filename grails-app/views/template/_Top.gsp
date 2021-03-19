<div class="card">

    <div class="card-header"style="border:1px solid black" >Top Posts</div>
    <div style="overflow-x: scroll; height: 400px;">
        <g:each in="${recents}" var="rec">
            <div class="card-body" style="border:1px solid black">
                <img src="https://www.pngkit.com/png/full/281-2812821_user-account-management-logo-user-icon-png.png"  style="float:left;border:2px solid black;" alt="user" width="150" height="150" />
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