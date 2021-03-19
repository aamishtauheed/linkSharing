package com.linksharing

import com.linksharing.commandObject.TopicCO
import grails.converters.JSON

class TopicController {
    TopicService topicService

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



    def delete(Topic topic)
    {
        println(params.topicId)
        if(topic) {
            println("in delete")
            def tp = Topic.findById(params.topicId)
            tp.delete(flush: true)
            return 1
        }
        def topics=Topic.list()
        render(model:[topicname: topics.tName , topicid: topics.id] as JSON)
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

        flash.message = "Mail sent   at "+new Date()
        redirect (controller:'user' , action: 'dashboard')
    }
}