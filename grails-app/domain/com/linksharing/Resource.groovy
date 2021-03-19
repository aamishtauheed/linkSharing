package com.linksharing

class Resource {
   // String title
    //String url
    String description
    Date dateCreated
    Date lastUpdated
    static belongsTo=[createdBy:User, topic:Topic]
    static hasMany=[readingItems: ReadingItem, resourceRatings:ResourceRating,linkResources:LinkResource]

    static constraints= {
        createdBy nullable: false
       // title nullable: false,maxSize:100
        description blank: false,maxSize:1000
       // title unique: "topic"
    }
    static mapping={
        table "Resource_Info"
    }
}