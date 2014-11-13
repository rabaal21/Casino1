package casino1



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OperariosController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Operarios.list(params), model:[operariosInstanceCount: Operarios.count()]
    }

    def show(Operarios operariosInstance) {
        respond operariosInstance
    }

    def create() {
        respond new Operarios(params)
    }

    @Transactional
    def save(Operarios operariosInstance) {
        if (operariosInstance == null) {
            notFound()
            return
        }

        if (operariosInstance.hasErrors()) {
            respond operariosInstance.errors, view:'create'
            return
        }

        operariosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'operarios.label', default: 'Operarios'), operariosInstance.id])
                redirect operariosInstance
            }
            '*' { respond operariosInstance, [status: CREATED] }
        }
    }

    def edit(Operarios operariosInstance) {
        respond operariosInstance
    }

    @Transactional
    def update(Operarios operariosInstance) {
        if (operariosInstance == null) {
            notFound()
            return
        }

        if (operariosInstance.hasErrors()) {
            respond operariosInstance.errors, view:'edit'
            return
        }

        operariosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Operarios.label', default: 'Operarios'), operariosInstance.id])
                redirect operariosInstance
            }
            '*'{ respond operariosInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Operarios operariosInstance) {

        if (operariosInstance == null) {
            notFound()
            return
        }

        operariosInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Operarios.label', default: 'Operarios'), operariosInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'operarios.label', default: 'Operarios'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
