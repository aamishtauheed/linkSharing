package com.linksharing.commandObject

import grails.validation.Validateable

class UserCO implements Validateable{
    String firstName;
    String lastName;
    String email;
    String userName;
    String password;
    String image;
    String confirmPassword;
    static constraints = {
        email(nullable: false,email: true,unique: true,blank: false);
        lastName(nullable: true);
        userName(nullable: false, unique: true);
        password(nullable: false);
        firstName(nullable: false);
        image(nullable: true);
        confirmPassword blank: false, size: 5..15, validator: { val, obj ->
            if (obj.password != obj.confirmPassword)
                return "----passwords don't match----"
        }


    }

}