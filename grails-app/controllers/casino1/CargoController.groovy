package casino1



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CargoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
 //       params.max = Math.min(max ?: 10, 100)
   //     respond Cargo.list(params), model:[manejo_CargoInstanceCount: Cargo.count()]
                params.max = Math.min(max ?: 10, 100)
        def x=params.id
        println "x=${x}"
        def listaCargo=Cargo.list(params)
        def num=Cargo.count()
       // respond Empleado.list(params), model:[empleadoInstanceCount: Empleado.count()]
        render  view: "index", model:[listamanejo_Cargo:listaCargo,num:num]
    }

    def show(Cargo manejo_CargoInstance) {
        respond manejo_CargoInstance
    }

    def create() {
        respond new Cargo(params)
    }

    @Transactional
    def save(Cargo manejo_CargoInstance) {
        if (manejo_CargoInstance == null) {
            notFound()
            return
        }

        if (manejo_CargoInstance.hasErrors()) {
            respond manejo_CargoInstance.errors, view:'create'
            return
        }

        manejo_CargoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'Cargo.label', default: 'Cargo'), manejo_CargoInstance.id])
                redirect manejo_CargoInstance
            }
            '*' { respond manejo_CargoInstance, [status: CREATED] }
        }
    }

    def edit(Cargo manejo_CargoInstance) {
        respond manejo_CargoInstance
    }

    @Transactional
    def update(Cargo manejo_CargoInstance) {
        if (manejo_CargoInstance == null) {
            notFound()
            return
        }

        if (manejo_CargoInstance.hasErrors()) {
            respond manejo_CargoInstance.errors, view:'edit'
            return
        }

        manejo_CargoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Cargo.label', default: 'Cargo'), manejo_CargoInstance.id])
                redirect manejo_CargoInstance
            }
            '*'{ respond manejo_CargoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Cargo manejo_CargoInstance) {

        if (manejo_CargoInstance == null) {
            notFound()
            return
        }

        manejo_CargoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Cargo.label', default: 'Cargo'), manejo_CargoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'Cargo.label', default: 'Cargo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
