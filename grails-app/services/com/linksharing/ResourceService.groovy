package com.linksharing

import grails.gorm.transactions.Transactional

@Transactional
class ResourceService {

    def makeLink(String description,String topicName,String url,long id){
        User user=User.findById(id)
        Topic topic=Topic.findByTName(topicName)
        Resource rs=new Resource(createdBy: user,topic: topic,description: description)

        LinkResource l=new LinkResource(url: url)
        println(l)
        println(l.properties)
       rs.addToLinkResources(l)
       topic.addToResources(rs)
        rs.save(flush:true,fallOnError:true)
        topic.save(flush:true,failOnError:true)
    }
    def recent(){
        List<Resource> res=Resource.list(sort: 'lastUpdated',offset:0,max:5)
        return res
    }

    def serviceMethod() {

    }
}
