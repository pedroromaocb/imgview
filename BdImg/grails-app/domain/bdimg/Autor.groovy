package bdimg

class Autor {
    
    String nomeAutor
    String emailAutor
    
    static hasMany = [autores: Autor]
    
    static constraints = {
        nomeAutor()
        emailAutor email: true
        
    }
}
