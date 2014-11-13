package casino1

class Vendedor {
Integer newAttr

static hasMany=[empleados:Empleado]  //  uno-a-muchos 

      static mapping ={
       table 'vendedores'
       version false              
     }
    
    static constraints = {
    
    }
}
