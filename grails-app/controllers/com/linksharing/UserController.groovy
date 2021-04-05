package com.linksharing

import com.linksharing.commandObject.UserCO
import grails.converters.JSON
import java.io.FileNotFoundException

import javax.imageio.ImageIO
import java.awt.image.BufferedImage

class UserController {
    UserService userService
    TopicService topicService
    SubscriptionService subscriptionService
    ResourceService resourceService
    def otp
    def mail

    def index() {
        if(session.user){
            redirect(controller: 'user', action: 'dashboard')
        }
        def recentShares=resourceService.recent()
        println(recentShares.properties)
        render view: '/user/index',model: [recents:recentShares]
    }

    def registerUser() {
        println(" registering")
        println(params.image)
        println("props below------------------------------------------")
        println(params)
//        println(userCO.image)
//        bindData(userCO, params, [exclude: ['image', 'admin', 'active']])
        if(params.password==params.confirmPassword) {
            def data = userService.save(params)

            if (data) {
                redirect(controller: 'user', action: 'index')
            }
            else {
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
            else {
                flash.loginFailed = "Disabled by Admin"
            redirect(controller: 'user', action: 'index')
            }


        }else{
            flash.login="Wrong credentials"
            redirect(contrller:'user',action: 'index')
        }

    }
    def logout(){
        session.invalidate()
        redirect(controller:'user', action:'index')
    }
    def dashboard(){
        if(session.user) {
            def user = session.user
            List<Topic> trendingTopics = topicService.trendingTopics(session.user)
            List<Topic> top5Trending= []
            if(trendingTopics.size()>4){
                top5Trending =trendingTopics.subList(0,5)
            }else{
                top5Trending =trendingTopics
            }
            def countTopic = topicService.countIt(user)
            def count = topicService.countSub(user)
            List<Topic> ts = Topic.findAllByCreatedBy(user)
            def subTopic = subscriptionService.isSubscribed(user)
            def subs = topicService.subsCrip(user)
            def dis = resourceService.disp()
            println(subTopic)
            println(countTopic)

            render view: 'dashboard', model: [trending: top5Trending, tcount: countTopic, Scount: count, subTopic: subTopic,
                                              topics  : ts, subs: subs, dis: dis]
        }
        else{
            redirect(controller: 'user',action: 'index')
        }
    }
    def profile(){
        if(session.user){
            def user=session.user

        def userCreated=topicService.subscribed()
        def countTopic=topicService.countIt(user)
        def count=topicService.countSub(user)
        List<Topic> ts=Topic.findAllByCreatedBy(user)
        def subTopic=subscriptionService.isSubscribed(user)
        def dis=resourceService.disp()
        render view: 'userprofile',model: [subscribed: userCreated,tcount:countTopic,Scount: count,topics:ts,subTopic:subTopic,dis: dis]
    }
        else {
            redirect(controller: 'user',action: 'dashboard')
        }
    }
    def editProfile() {
        if (session.user) {
            def user = session.user
            def countTopic = topicService.countIt(user)
            def count = topicService.countSub(user)
            def subs = topicService.subsCrip(user)
            List<Topic> ts = Topic.findAllByCreatedBy(user)
            def subTopic = subscriptionService.isSubscribed(user)
            render view: 'editprofile', model: [tcount: countTopic, Scount: count,subs: subs,subTopic: subTopic,topics:ts]
        }
        else{
            redirect(controller: 'user',action: 'index')
        }
    }

    def post() {
        if (session.user) {
            def res=Resource.findById(params.id)
//            User user= session.user
            List<Topic> trendingTopics = topicService.trendingTopics(session.user)
            List<Topic> top5Trending = []
            if (trendingTopics.size() > 4) {
                top5Trending = trendingTopics.subList(0, 5)
            } else {
                top5Trending = trendingTopics
            }
            def subTopic = subscriptionService.isSubscribed(session.user)
            def dis = resourceService.disp()
            println(res)
            render view: 'Post', model: [trending: top5Trending, dis: dis, res:res,subTopic: subTopic]
        }
    }
    def updateProfile(){
        print("updating")
        def user=session.user
        session.user= userService.update(user.id,params)


//        String a = "profilePic/${user.userName}.jpeg"
//        user.image = a
//        session.user.image = user.image
//        if (session.user.image) {
//            ByteArrayInputStream bis = new ByteArrayInputStream(params.image.getBytes());
//            BufferedImage bImage2 = ImageIO.read(bis);
//            ImageIO.write(bImage2, "jpeg", new File("/home/aamish/Project/grails-app/assets/images/profilePic/${user.userName}.jpeg"));
//        }


        print("updated")
        redirect(controller: 'user', action: 'profile')
    }
    def updatePassword(User user){
        user=session.user
        session.user= userService.changePassword(user.id,params)
        redirect(controller: 'user', action: 'editProfile')
    }
    def search() {
        def result = Topic.findAllByTNameLike("${params.search}%")
        if (result) {
            println(result)
            render (  [topic: result.tName ,created:result.createdBy.userName,description:result.resources.description] as JSON)
        } else {
            render(status: 500)
        }
//        def all = Topic.list()
//        render(model: [topicName: all.tName, topicId: all.id] as JSON)

    }
    def topicShow(){
        if(session.user){
            if(params.id){
        def user=session.user
            Topic topic=Topic.findById(params.id)
            List<Subscription> sub=Subscription.findAllByTopic(topic)
            println("subscriber"+sub)
            println(topic)
        List<User> users=User.list()
        println(users)
        def countTopic=topicService.countIt(user)
        def count=topicService.countSub(user)
        println(users.properties)
        def dis=resourceService.disp()
        render view: 'topicshow', model: [tcount: countTopic,Scount: count,subs: sub,dis:dis,topic:topic]
    }else{
                redirect(action: "dashboard")
            }
        }else{
            redirect(controller: 'user',action: 'index')
        }
    }
//    def send() {
//        def user=User.findByEmail(params.email)
//        if(user) {
//            sendMail {
//                println(params.email)
//                to params.email
//                subject "Reset Password mail"
//                def gen = topicService.generate()
//
//                text gen
//                user.otp = gen
//                user.save(flush:true)
//                println(user.otp)
//
////                mail = params.email
////                println(mail)
//
//            }
//
//            flash.message = "Mail sent   at "+new Date()
////            redirect action: 'enterOtp'
//            enterOtp(params.email)
//        }
//        else{
//            flash.notfound= "${params.email} is not a Registered User"
//            redirect(controller: 'user',action: 'index')
//        }
//
//
//
////        flash.message = "Mail sent   at "+new Date()
////        redirect action: 'enterOtp'
//    }
//    def enterOtp(String gmail){
//        def user=User.findByEmail(gmail)
//        println(user.properties)
//        render (view: 'Otp', model: [user: user])
//    }
//    def compare(){
//        User user= User.findById(params.uid)
//        println("in compare")
//        println(user)
//        println(params.uid)
//        println(user.otp)
//        println(params.otp)
//        mail=user.email
//        println(mail)
//        if(params.otp==user.otp){
//            println("true")
//           redirect(controller:'user' , action: 'reset')
//        }
//        else{
//            flash.otp="Otp doesnot Match"
//            redirect(controller: 'user', action: 'enterOtp')
//        }
//
//    }
//    def reset(){
//        render view: 'ResetPassword'
//    }
//    def resetPassword(){
//        def user=User.findByEmail(mail)
//        if(params.pass==params.confirm){
//            user.password=params.pass
//            user.save(flush:true)
//          redirect(controller: 'user',action: 'index')
//        }
//        else {
//            flash.result="wrong details"
//        }
//    }
    def admin(){
        redirect controller: 'admin',action: 'details'
    }
    def deactivate(){
        println("in activate" )
        println(params.id)
        def user=User.findById(params.id)
        println(user)

            user.active=false
            user.save(flush:true)
            redirect action: 'admin'
    }
    def activate(){
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
    def send(num, email) {
        sendMail {
            to "${email}"
            subject "Reset Password Mail"
            text "${num}"
        }
        flash.message = "Message sent at "+new Date()
        //redirect action:"index"
        return num
    }
    def forgotPassword(){
        println(params.email)
        def user = User.findByEmail(params.email)
        println user
        if(user){
            def num = topicService.generate()
            def a = send(num, params.email)
            println num
            user.otp = num
            println("saving user otp:"+user.otp)
            user.save(flush:true)
            render(view: 'Otp', model: [user:user])
        }
        else{
            flash.messageUserNotFound = "${params.email}   is not a Registered User."
            redirect action: "index"
        }
    }
    def otpVerify(){
        println(params.email)
        def user = User.findByEmail(params.email)
        println ("otp " + params.otp)
        println("num " + user.otp)
        if(user.otp == params.otp){
            println("otp verified")
            if (params.password == params.confirmPassword){
                user.password = params.password
                user.save(flush:true)
                flash.messagePasswordChanged = "Password Change Successful"
            }else{
                flash.messagePasswordNotChanged = "Password not Changed"
                redirect(action: 'index')
            }
            redirect(action: 'index')
        }else{
            redirect(action: 'index')
        }
        //render ("ok")
    }



}
