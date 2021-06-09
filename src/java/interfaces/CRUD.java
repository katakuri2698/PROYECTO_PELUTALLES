
package interfaces;

import dtos.productoDTO;
import java.util.List;


public interface CRUD {
    public List Listar();
    public productoDTO list(int id);
    public boolean add(productoDTO per);
    public boolean edit(productoDTO per);
    public boolean eliminar(int id);
    
}
