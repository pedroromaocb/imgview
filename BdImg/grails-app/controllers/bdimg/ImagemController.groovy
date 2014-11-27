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
    def save() {
        def imagemInstance = new Imagem(params)
        def uploadedFile = request.getFile('fileImg')
        imagemInstance.fileImg = uploadedFile.getBytes() //converting the file to bytes
        imagemInstance.fileNome = uploadedFile.originalFilename //getting the file name from the uploaded file
        imagemInstance.fileFormato = uploadedFile.contentType//getting and storing the file type
        imagemInstance.save() //Create the record in DB by sending the needed Select command
        redirect(action: "index")
    }

    def edit(Imagem imagemInstance) {
        respond imagemInstance
    }
    
    def displayImagem() {
        def imagemInstance = Imagem.get(params.id)
        response.outputStream << imagemInstance.fileImg // write the image to the outputstream
        response.outputStream.flush()
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
