package bdimg

class Autor {
    
    String nomeAutor
    String emailAutor
    
    static hasMany = [imagens: Imagem]
    
    static constraints = {
        nomeAutor()
        emailAutor email: true
        
    }
}
