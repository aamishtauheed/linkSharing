package project

import com.linksharing.Topic
import com.linksharing.User

class BootStrap {
    List<User> users=[]

    def init = { servletContext ->

        //User user= new User(firstName: 'aamish', lastName: 'tauheed', email: 'aamish@gmail.com', userName: 'aamish', password: 'pass').save(flush: true)
        //new Topic(tname: 'grails',visibility: 'Public',createdBy: user).save(flush:true, failOnError:true)


        def destroy = {
        }
    }

}
