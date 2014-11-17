package casino1

    class Cargo {
    
    String tipo 
    Integer salario 
    String turno 
    Integer rango
    String email
    Long descuento
    
    static hasOne=[empledos:Empleado]
    
     static mapping ={
       table 'cargos'
       version false              
     }
     
    static constraints = {
        tipo         blank:false,maxSize:100 
        salario           nullable:true,maxSize:120
        turno       nullable:true,maxSize:100 
        rango             nullable:true,maxSize:20
        email      nullable:true,maxSize:50 
        descuento   nullable:true
 
    }
    
    String  toString(){
        return tipo        
    } 
}
