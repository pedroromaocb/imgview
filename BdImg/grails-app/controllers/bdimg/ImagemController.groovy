package bdimg



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ImagemController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Imagem.list(params), model:[imagemInstanceCount: Imagem.count()]
    }

    def show(Imagem imagemInstance) {
        respond imagemInstance
    }

    def create() {
        respond new Imagem(params)
    }

    @Transactional
    def save(Imagem imagemInstance) {
        if (imagemInstance == null) {
            notFound()
            return
        }

        if (imagemInstance.hasErrors()) {
            respond imagemInstance.errors, view:'create'
            return
        }

        imagemInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'imagem.label', default: 'Imagem'), imagemInstance.id])
                redirect imagemInstance
            }
            '*' { respond imagemInstance, [status: CREATED] }
        }
    }

    def edit(Imagem imagemInstance) {
        respond imagemInstance
    }

    @Transactional
    def update(Imagem imagemInstance) {
        if (imagemInstance == null) {
            notFound()
            return
        }

        if (imagemInstance.hasErrors()) {
            respond imagemInstance.errors, view:'edit'
            return
        }

        imagemInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Imagem.label', default: 'Imagem'), imagemInstance.id])
                redirect imagemInstance
            }
            '*'{ respond imagemInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Imagem imagemInstance) {

        if (imagemInstance == null) {
            notFound()
            return
        }

        imagemInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Imagem.label', default: 'Imagem'), imagemInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'imagem.label', default: 'Imagem'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
