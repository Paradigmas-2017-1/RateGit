package rategit

class Repository {

	String repositoryID
	String repositoryName
	String repositoryLink

	static belongsTo = [user: User]

	static hasMany = [ratings: Rating]

    static constraints = {
    }

    String toString() {
    	return repositoryName
    }
}
