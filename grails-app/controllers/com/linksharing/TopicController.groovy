package com.linksharing

import com.linksharing.commandObject.TopicCO
import grails.converters.JSON
import org.grails.events.registry.EventSubscriberSubscription

class TopicController {
    TopicService topicService
    SubscriptionService subscriptionService

    def index() {}

    def create(TopicCO topicCO) {
        println("creating")
        if (topicCO.validate()) {

            def user = session.user
            topicService.createTopic(user.id, topicCO)
            redirect(controller: 'user', action: 'dashboard')

        } else {
            render "error"
        }
    }
//    def delete() {
//        def user = session.user
//        def topic = Topic.findByCreatedBy(user)
//
//        print(topic)
//        print(user)
//        if (topic && user)  {
//          // if(session.user.id == topic.createdById(id)) {
//                topic.delete(flush: true)
//                println("deleted")
//          //  }
//        } else {
//            println("not found")
//        }
//        redirect(controller: 'user', action: 'dashboard')
//    }


    def delete(Topic topic) {
        println(params.topicId)
        if (topic) {
            println("in delete")
            def tp = Topic.findById(params.topicId)
            tp.delete(flush: true)
            Map m=[status: true]
            render m as JSON
        }
        def topics = Topic.list()
        render(model: [topicname: topics.tName, topicid: topics.id] as JSON)
    }


    def sendTopic() {
        sendMail {
            println(params.email)
//            def a= params.tName
            to params.email
            subject "TOPIC INVITE LINK"
//            def gen = topicService.generate()
            text "Subscribe to this topic "
        }

        flash.message = "Mail sent   at " + new Date()
        redirect(controller: 'user', action: 'dashboard')
    }

    def subscriber(Topic topic) {
        if (topic) {
            println(params.topicId)
            User u = User.get(session.user.id)
            println(u)
            Topic t = Topic.get(params.topicId)
            println(t)
//            Subscription sub=Subscription.findByTopicAndUser(t.id,u.id)
            Subscription s = new Subscription(user: u, topic: t, seriousness: Subscription.Seriousness.SERIOUS).save(flush: true)
            println(s)
            u.addToSubscriptions(s).save(flush: true)
            t.addToSubscriptions(s).save(flush: true)
            Map m=[status:true]
            render m as JSON

        }

        def all = Topic.list()
        render(model: [topicName: all.tName, topicId: all.id] as JSON)
    }


//        if(s){
//            println("done")
//            redirect(controller: 'user' , action: 'dashboard')
//
//        }
//        else {
//            println("not done")
//            redirect(controller: 'user', action: 'dashboard')
//
//        }
    def unsubscribe(Topic topic) {
        if (topic) {
            User u = User.get(session.user.id)
            Topic t = Topic.get(params.topicId)
            def s=Subscription.findByTopicAndUser(t,u)
            s.delete(flush: true)
            Map m=[status: true]
            render m as JSON

        }
        def a=Topic.list()
        render(model: [topicName: a.tName,topicId: a.id])

    }
}