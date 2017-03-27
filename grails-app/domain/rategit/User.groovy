package rategit

class User {

    String login
    String password
    String name
    String role = "Student"

    static hasMany = [repositorys: Repository, ratings: Rating]

    static constraints = {
        login(unique:true)
        password(password:true)
        name()
        role(inList:["Teacher", "Student"])
    }

    String toString () {
        name
    }
}
