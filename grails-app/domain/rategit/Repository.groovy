package rategit

class Repository {

	String repositoryID
	String repositoryName

	static belongsTo = [user: User]

	static hasMany = [ratings: Rating]

    static constraints = {
    }
}
