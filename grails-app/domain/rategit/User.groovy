package rategit

class User {

    String login
    String password
    String name
    Boolean isTeacher

    static constraints = {
        login(unique:true)
        password(password:true)
        name()
        isTeacher(blank: false, nullable: false)
    }

    String toString () {
        name
    }
}
