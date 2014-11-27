package bdimg

class Imagem {
    
    String titulo
    String descricao
    String data
    String nota
    
    byte[] fileImg
    String fileNome
    String fileFormato
    
    static belongsTo = [autor: Autor]

    static constraints = {
        titulo()
        descricao widget: "textarea"
        data()
        nota atrrtibutes:[notas: 1..5]
        
        
        
        fileNome(blank:true, nullable:true)
        fileFormato(blank:true, nullable:true)
        fileImg(nullable:true, maxSize: 1073741824)
    }
}
