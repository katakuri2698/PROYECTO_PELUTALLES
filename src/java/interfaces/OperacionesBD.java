/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import java.util.ArrayList;
import java.util.*;

/**
 *
 * @author Administrador
 */
public interface OperacionesBD <T> {

    public String insertar( Object obj);
    public String modificar(Object obj);
    public String eliminar(Object obj);
    public List<?> consultar();
    
}
