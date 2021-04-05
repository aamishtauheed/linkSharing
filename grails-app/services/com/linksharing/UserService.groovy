package com.linksharing
import grails.validation.Validateable
import com.linksharing.commandObject.UserCO
import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap
import java.io.FileNotFoundException
import java.lang.IllegalArgumentException

import javax.imageio.ImageIO
import java.awt.image.BufferedImage

@Transactional
class UserService {

    def serviceMethod() {

    }
    def save(def params) {
        //////////////////EXPERIMENT////////////////////////

        println("-------------------------------------")
//        println(userCo.image)
        User user = new User(firstName: params.firstName, lastName: params.lastName,
                email: params.email, userName: params.userName, password:params.password)
        user.active=true
//        user.save(flush:true,failOnError:true)
        String a = "profilePic/${user.userName}.jpeg"
        user.image = a
        println(user.properties)

        if (user.image) {
            ByteArrayInputStream bis = new ByteArrayInputStream(params.image.getBytes());
            BufferedImage bImage2 = ImageIO.read(bis);
            ImageIO.write(bImage2, "jpeg", new File("/home/aamish/Project/grails-app/assets/images/profilePic/${user.userName}.jpeg"));
        }
        user.save(flush:true,failOnError:true)
        return user

//        if (user.validate()) {
//            user.active=true
//            user.save(flush: true)
//            return user
//
//        } else {
//          return null
//
//        }

    }
    def loginUser(String email,String password){
        def user=User.findByEmailAndPassword(email,password)
        if(user){
            return user;
        }else{
            return null;
        }

    }
    def update(long id, def params){
        User user=User.findById(id)
        user.firstName=params.firstName;
        user.lastName=params.lastName;
        user.userName=params.userName;
        String a = "profilePic/${user.userName}.jpeg"
        user.image = a
        if (user.image) {
            ByteArrayInputStream bis = new ByteArrayInputStream(params.image.getBytes());
            BufferedImage bImage2 = ImageIO.read(bis);
            ImageIO.write(bImage2, "jpeg", new File("/home/aamish/Project/grails-app/assets/images/profilePic/${user.userName}.jpeg"));
        }
        user.save(flush:true)
        return user
    }
    def changePassword(long id, def params){
        User user=User.findById(id)
        if(params.password==params.confirmPassword)
        user.password=params.password;
        //user.confirmPassword = params.confirmPassword;
            user.save(flush:true)
            return user

    }
    def userInfo(){
        List<User> userIn=User.list()
        return userIn
    }
}
