package com.linksharing.commandObject

import grails.validation.Validateable


class TopicCO implements Validateable {
    String tName;
    String visibility;

    static constraints={
        tName unique: true,nullable: false,blank:false
 //       createdBy nullable: false
    }
}
