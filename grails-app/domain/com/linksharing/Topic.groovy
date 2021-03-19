package com.linksharing

class Topic {
    String tName
    Date dateCreated;
    Date lastUpdated;
  public   enum Visibility{
        Public,Private

    }
    Visibility visibility
    static belongsTo=[createdBy:User]
    static hasMany=[subscriptions: Subscription, resources: Resource]
    static constraints={
        tName unique: true, nullable: false,blank: false
        visibility nullable:true

    }
    static mapping={

    }

}
