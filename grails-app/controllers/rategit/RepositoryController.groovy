package rategit

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RepositoryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Repository.list(params), model:[repositoryCount: Repository.count()]
    }

    def show(Repository repository) {
        respond repository
    }

    def create() {
        respond new Repository(params)
    }

    @Transactional
    def save(Repository repository) {
        if (repository == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (repository.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond repository.errors, view:'create'
            return
        }

        repository.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'repository.label', default: 'Repository'), repository.id])
                redirect repository
            }
            '*' { respond repository, [status: CREATED] }
        }
    }

    def edit(Repository repository) {
        respond repository
    }

    @Transactional
    def update(Repository repository) {
        if (repository == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (repository.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond repository.errors, view:'edit'
            return
        }

        repository.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'repository.label', default: 'Repository'), repository.id])
                redirect repository
            }
            '*'{ respond repository, [status: OK] }
        }
    }

    @Transactional
    def delete(Repository repository) {

        if (repository == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        repository.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'repository.label', default: 'Repository'), repository.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'repository.label', default: 'Repository'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
