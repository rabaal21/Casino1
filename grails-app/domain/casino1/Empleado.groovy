package casino1

class Empleado {

    Integer id
    String nombre
    String cargo
    String tipoEmpleado
    String estado    
    
    static hasOne=[cargos:Cargo]
    
    static mapping ={
        table 'empleados'
        version false              
    }
    
    static constraints = {
        id          blank:false,maxSize:100,nullable:true   
        nombre      blank:false,maxSize:100,nullable:true 
        cargo       blank:false,maxSize:100,nullable:true
        tipoEmpleado blank:false,maxSize:100,nullable:true
        estado      blank:false,maxSize:100,nullable:true
    }
    
    String  toString(){
        return nombre 
               
    }
}
