package project

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: 'user',action: 'index')

        "/dashboard"(controller: 'user', action: 'dashboard')

        "/userprofile"(controller: 'user',action: 'profile')
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}

