package com.linksharing

import javax.swing.text.Document

class ResourceController {
    ResourceService resourceService
    User user

    def index() { }
    def createLink(String url,String description,String tName ){
        resourceService.makeLink(description,tName,url,session.user.id)
        println("resource added")
        redirect (controller:'user', action:'dashboard')

    }
    def display(){
        def dis=resourceService.disp()
        render (view :'/user/topicshow',model: [dis:dis])

    }
    def saveDoc() {
        if (params) {
            User user = User.get(session.user.id)
            Topic topic = Topic.findByTName(params.tName)
            println(params.description)
            String a = "/assets/docs/${session.user.id}.pdf"
            def file = params.filePath.getBytes()
            FileOutputStream fos = new FileOutputStream("/home/aamish/Project/grails-app/assets/docs/${session.user.id}.pdf")
            fos.write(file)
            fos.close()
            println("file added")
            try {
                Resource resource = new Resource(description: params.description, createdBy: user, topic: topic).save(flush:true, failOnError: true)
                DocumentResources res = new DocumentResources(filePath: a, resource: resource).save(flush: true, failOnError: true)
                resource.addToDocumentResources(res).save(flush: true, failOnError: true)
                topic.addToResources(resource).save(flush: true, failOnError: true)
                user.addToResources(resource).save(flush: true, failOnError: true)
//                resourceService.status(topic, resource)
            }
            catch (Exception e) {
                flash.error = "process failed"
            }
            redirect(controller: 'user', action: 'dashboard')
        } else {
        }
    }
    def delete(){
        def reso=Resource.findById(params.id)
        reso.delete(flush:true)
        redirect(controller: 'user',action: 'dashboard')
    }
    def download(){
        println("in download")
        def sub= DocumentResources.get(params.id)
        println("xpe")
        println(sub)
        if(sub) {
            def file = new File(sub.filePath)
            println(sub.getFileName())
            if (file.exists()) {
                response.setContentType("application/pdf")
                // or or image/JPEG or text/xml or whatever type the file is
                response.setHeader("Content-disposition", "attachment;filename=\"${sub.resource.createdBy.id}.pdf\"")
                response.outputStream << file.bytes
                response.outputStream.flush()

            }
            else {
                render "not found"
            }
        }

            else {
                render "notfound"
            }
        redirect(controller: 'user',action: 'dashboard')

        }

}
