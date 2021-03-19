package com.linksharing

class DocumentResources {
    String filePath
    static belongsTo = [resource:Resource]

    static constraints={
        filePath nullable:false, blank:false
    }
}
