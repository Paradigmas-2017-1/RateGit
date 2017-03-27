package rategit

class Rating {

	Float rating
	String description

	static belongsTo = [repository: Repository, user: User]

    static constraints = {
    }
}
