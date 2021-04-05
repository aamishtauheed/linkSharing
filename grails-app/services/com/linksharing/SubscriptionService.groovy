package com.linksharing

import grails.gorm.transactions.Transactional

@Transactional
class SubscriptionService {

    def serviceMethod() {

    }
    def isSubscribed(User user){
        List<Subscription> sub=Subscription.findAllByUser(user).asList()
        return sub
    }
    def subscribe(){
        User us=User.findById(session.user.id)
        Topic tp=Topic.findById(tid)
        Subscription s=new Subscription(user: us,topic:tp,seriousness: Subscription.seriousness.SERIOUS)
        tp.addToSubscriptions(s)
        us.addToSubscriptions(s)
        s.save(flush:true)
        return s

    }
}
