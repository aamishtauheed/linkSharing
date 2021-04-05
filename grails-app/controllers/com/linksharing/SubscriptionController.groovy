package com.linksharing

import grails.converters.JSON

class SubscriptionController {
    SubscriptionService subscriptionService

    def index() { }
//    def subscribed(){
//        def user=session.user
//        def subTopic=subscriptionService.isSubscribed(user)
//        print(subTopic)
//        render view: 'dashboard',model:[subTopic:subTopic]
//    }
    def setSerious(){
        def status
        println(params.id)
        println(params.option)
         Topic topic=Topic.findById(params.id)
        User user=User.findById(session.user.id)
        Subscription sub=Subscription.findByTopicAndUser(topic,user)
        Map m=[:]
        if(sub) {
            sub.seriousness = params.option
            sub.save(flush: true)
            status=true
            m=[status:true]
            render m as JSON
        }
        else{
            status=false
            m=[status:false]
            render m as JSON
        }
    }
}
