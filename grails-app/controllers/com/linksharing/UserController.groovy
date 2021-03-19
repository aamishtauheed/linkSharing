package com.linksharing

import com.linksharing.commandObject.UserCO
import grails.converters.JSON

class UserController {
    UserService userService
    TopicService topicService
    SubscriptionService subscriptionService
    ResourceService resourceService
    def otp
    def mail

    def index() {
        def recentShares=resourceService.recent()
        println(recentShares.properties)
        render view: 'index',model: [recents:recentShares]
    }

    def registerUser(UserCO userCO) {
        println(" registering")
       // bindData(userCO, params, [exclude: ['image', 'admin', 'active']])
        if(params.password==params.confirmPassword) {
            def data = userService.save(userCO)
            if (data) {


                redirect(controller: 'user', action: 'index')
            } else {
               flash.notRegistered = "User is not registered"
                redirect(controller: 'user', action: 'index')
            }
        }
        else{
            render "Password Didn't match"
//            redirect(action: 'index')
        }

    }


    def login(){

         User user= userService.loginUser(params.email, params.password)
        if(user ) {
            if(user.active) {


                session.user = user
                redirect(controller: 'user', action: 'dashboard')
            }
            flash.loginFailed="Disabled by Admin"
//            redirect(controller: 'user', action: 'index')


        }else{
            flash.login="Wrong credentials"
            redirect(contrller:'user',action: 'index')
        }

    }
    def logout(){
        session.invalidate()
        redirect(controller:'user', action:'registerUser')
    }
    def dashboard(){
        def user =session.user
        def trendingTopic = topicService.trending()
        def countTopic=topicService.countIt(user)
        def count=topicService.countSub(user)
        List<Topic> ts=Topic.findAllByCreatedBy(user)
        def subTopic=subscriptionService.isSubscribed(user)
        def subs=topicService.subsCrip(user)
        println(subTopic)
        println(countTopic)

        render view: 'dashboard',model: [trending: trendingTopic,tcount:countTopic,Scount:count,subTopic:subTopic,
         topics:ts,subs:subs]
    }
    def profile(){
        def user=session.user
        def userCreated=topicService.subscribed()
        def countTopic=topicService.countIt(user)
        def count=topicService.countSub(user)
        List<Topic> ts=Topic.findAllByCreatedBy(user)
        def subTopic=subscriptionService.isSubscribed(user)
        render view: 'userprofile',model: [subscribed: userCreated,tcount:countTopic,Scount: count,topics:ts,subTopic:subTopic]
    }
    def editProfile(){
        def user=session.user
        def countTopic=topicService.countIt(user)
        def count=topicService.countSub(user)
        render view: 'editprofile',model: [tcount: countTopic,Scount:count]
    }
    def post(){
        def trendingTopic =
                topicService.trending()
        render view: 'Post',model: [trending: trendingTopic]
    }
    def updateProfile(){
        print("updating")
        def user=session.user
        session.user= userService.update(user.id,params)
        print("updated")
        redirect(controller: 'user', action: 'profile')
    }
    def updatePassword(User user){
        user=session.user
        session.user= userService.changePassword(user.id,params)
        redirect(controller: 'user', action: 'editProfile')
    }
    def search() {
        def result = Topic.findAllByTNameLike("%${params.search}%")
        println(result)
        if (result) {
            render([topic   : result.tName, description: result.resources.description,
                    userName: result.createdBy.userName] as JSON)
        } else {
            render(status: 500)
        }
    }
    def topicShow(){
        def user=session.user
        List<User> users=User.list()
        println(users)
        def countTopic=topicService.countIt(user)
        def count=topicService.countSub(user)
        println(users.properties)
        render view: 'topicshow', model: [tcount: countTopic,Scount: count,users: users]
    }
    def send() {
        def user=User.findById()
        if()
        sendMail {
            println(params.email)
            to params.email
            subject "Reset Password mail"
            def gen = topicService.generate()
            otp=gen
            text gen
            mail=params.email
            println(mail)

        }

        flash.message = "Mail sent   at "+new Date()
        redirect action: 'enterOtp'
    }
    def enterOtp(){
        render view: 'Otp'
    }
    def compare(){
        println("in compare")
        println(otp)
        println(params.otp)
        if(params.otp==otp){
            println("true")
            redirect(controller:'user' , action: 'reset')
        }
        else{
            flash.otp="Otp doesnot Match"
            redirect(controller: 'user', action: 'enterOtp')
        }

    }
    def reset(){
        render view: 'ResetPassword',model: [mail:mail]
    }
    def resetPassword(){
        def user=User.findByEmail(mail)
        if(params.pass==params.confirm){
            user.password=params.pass
            user.save(flush:true)
          redirect(controller: 'user',action: 'index')
        }
        else {
            flash.result="wrong details"
        }
    }
    def admin(){
        redirect controller: 'admin',action: 'details'
    }
    def deactivate(long id){
        println("in activate" )
        println(params.id)
        def user=User.findById(params.id)
        println(user)

            user.active=false
            user.save(flush:true)
            redirect action: 'admin'
    }
    def activate(long id){
        def user=User.findById(params.id)
//        if(!user.active)
            user.active=true
        user.save(flush:true)
        redirect action: 'admin'

    }
//    def forgotPassword(){
//        println(params.email)
//        def user = User.findByEmail(params.email)
//        println user
//        if(user){
//            def gen = topicService.generate()
//            otp=gen
//            def a = send(gen, params.email)
//            println num
//            user.otp = num
//            println("saving user otp:"+user.otp)
//            user.save(flush:true)
//            render(view: 'forgotPassword', model: [user:user])
//        }
//        else{
//            flash.messageUserNotFound = "${params.email} not found"
//        }
//    }




}
