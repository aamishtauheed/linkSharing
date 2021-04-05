package com.linksharing


class User {
    String firstName
    String lastName
    String email
    String userName
    String password
    boolean active
    boolean admin
    String image
    String otp
    Date dateCreated
    Date lastUpdated

    static hasMany=[
            topics: Topic, subscriptions: Subscription, resources: Resource, readingItems: ReadingItem, resouceRatings: ResourceRating
    ]


    static constraints = {
        firstName nullable:false, maxSize: 255
        lastName nullable:false, maxSize: 255
        userName nullable:false, maxSize:20
        email nullable:false,email: true, blank: false
        password nullable:false, maxSize:255
        admin nullable:true
        active nullable:true
        image nullable:true
        subscriptions nullable: true
        resources nullable: true

        readingItems nullable: true
        topics nullable: true
        email unique: true
        otp nullable: true
    }
    static mapping={
        table"USER_INFO"
    }

//    Boolean hasTopicRight(Long id) {
//        Topic topic = Topic.get(id)
//        if (this.equals(topic.createdBy)) {
//            return true
//        } else {
//            return false
//        }
//    }
}