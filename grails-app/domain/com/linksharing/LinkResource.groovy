package com.linksharing

class LinkResource {
    String url
    static belongsTo = [resource:Resource]

    static constraints={
        url nullable:false, url:true, blank:false
    }
    static mapping = {

    }
}

