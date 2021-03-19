package com.linksharing

class ResourceRating {

    int score;
    static belongsTo=[resource: Resource, user:User]
    static constraints={
        score nullable: false
        user unique:'resource'
    }
    static mapping={

    }
}