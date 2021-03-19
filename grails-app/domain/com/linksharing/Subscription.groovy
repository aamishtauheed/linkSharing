package com.linksharing

class Subscription {

 public    enum Seriousness {
        CASUAL, SERIOUS, VERYSERIOUS;
    }
    Seriousness seriousness
    static belongsTo=[user:User, topic:Topic]
    Date dateCreated
    Date lastUpdated
    static constraints={
        user unique:'topic'
    }
    static mappings={

    }

}