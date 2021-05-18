
package miempresa.conexion;

import daos.UsuarioDAO;
import dtos.UsuarioDTO;


public class prueba {

    
    public static void main(String[] args) {
      
        UsuarioDTO usuario = new UsuarioDTO("pcuadrosf@gmail.com","4285690");
        UsuarioDAO login = new UsuarioDAO();
        
        if(login.login(usuario)){
            System.out.println("Existoso");
           
        }else{
            System.out.println("NO EXITOSO");
        }
    }
    
}
