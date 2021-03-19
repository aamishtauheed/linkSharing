package com.linksharing

class ResourceController {
    ResourceService resourceService
    User user

    def index() { }
    def createLink(String url,String description,String tName ){
        resourceService.makeLink(description,tName,url,session.user.id)
        println("resource added")
        redirect (controller:'user', action:'dashboard')

    }
}
