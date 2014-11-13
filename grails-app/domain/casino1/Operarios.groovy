package casino1

class Operarios {

    Long idEmpleado
    String nombre  
    String password
    Integer idRol
    
    static hasMany=[empleados:Empleado]  //  uno-a-muchos 
    
      static mapping ={
       table 'operarios'
       version false              
     }
    
        static constraints = {
            
        idRol       nullable:true,maxSize:100 
        password       nullable:true,maxSize:100 
        idEmpleado       nullable:true,maxSize:100 
        nombre       nullable:true,maxSize:100 

    }
        String  toString(){
        return nombre        
    } 
    
}
