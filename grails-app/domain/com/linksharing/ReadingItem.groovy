package com.linksharing

class ReadingItem {
    boolean isRead
    static belongsTo=[resource:Resource, user:User]
    static constraints={
        isRead nullable:false;
    }
    static mapping={

    }
}