package com.linksharing
import grails.validation.Validateable
import com.linksharing.commandObject.UserCO
import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class UserService {

    def serviceMethod() {

    }
    def save(UserCO userCo) {
        User user = new User(firstName: userCo.firstName, lastName: userCo.lastName,
                email: userCo.email, userName: userCo.userName, password: userCo.password)
        if (user.validate()) {
            user.active=true
            user.save(flush: true)
            return user

        } else {
          return null

        }

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
