package com.linksharing

class AdminController {
    UserService userService
    SubscriptionService subscriptionService

    def index() {
    }
    def details(){
        def user=session.user
        def info=userService.userInfo()
        def subTopic=subscriptionService.isSubscribed(user)

        render view: '/user/admin' , model:[info:info,subTopic:subTopic]
    }
}
