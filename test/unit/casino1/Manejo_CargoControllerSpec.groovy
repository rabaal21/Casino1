package casino1



import grails.test.mixin.*
import spock.lang.*

@TestFor(Manejo_CargoController)
@Mock(Manejo_Cargo)
class Manejo_CargoControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.manejo_CargoInstanceList
            model.manejo_CargoInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.manejo_CargoInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def manejo_Cargo = new Manejo_Cargo()
            manejo_Cargo.validate()
            controller.save(manejo_Cargo)

        then:"The create view is rendered again with the correct model"
            model.manejo_CargoInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            manejo_Cargo = new Manejo_Cargo(params)

            controller.save(manejo_Cargo)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/manejo_Cargo/show/1'
            controller.flash.message != null
            Manejo_Cargo.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def manejo_Cargo = new Manejo_Cargo(params)
            controller.show(manejo_Cargo)

        then:"A model is populated containing the domain instance"
            model.manejo_CargoInstance == manejo_Cargo
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def manejo_Cargo = new Manejo_Cargo(params)
            controller.edit(manejo_Cargo)

        then:"A model is populated containing the domain instance"
            model.manejo_CargoInstance == manejo_Cargo
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/manejo_Cargo/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def manejo_Cargo = new Manejo_Cargo()
            manejo_Cargo.validate()
            controller.update(manejo_Cargo)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.manejo_CargoInstance == manejo_Cargo

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            manejo_Cargo = new Manejo_Cargo(params).save(flush: true)
            controller.update(manejo_Cargo)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/manejo_Cargo/show/$manejo_Cargo.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/manejo_Cargo/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def manejo_Cargo = new Manejo_Cargo(params).save(flush: true)

        then:"It exists"
            Manejo_Cargo.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(manejo_Cargo)

        then:"The instance is deleted"
            Manejo_Cargo.count() == 0
            response.redirectedUrl == '/manejo_Cargo/index'
            flash.message != null
    }
}
