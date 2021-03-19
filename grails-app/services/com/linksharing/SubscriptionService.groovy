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
}
