    
package dtos;


public class productoDTO {
    int id_producto;
    String nombre;
    String img_producto;
    String descripcion;
    float precio_venta;
    int stock;
    int id_categoria;
    int id_estado;

    public productoDTO() {
    }

    public productoDTO(String nombre, String img_producto, String descripcion, float precio_venta, int stock, int id_categoria, int id_estado) {
        this.nombre = nombre;
        this.img_producto = img_producto;
        this.descripcion = descripcion;
        this.precio_venta = precio_venta;
        this.stock = stock;
        this.id_categoria = id_categoria;
        this.id_estado = id_estado;
    }

    
    public productoDTO(int id_producto, String nombre, String img_producto, String descripcion, float precio_venta, int stock,int id_categoria,int id_estado) {
        this.id_producto = id_producto;
        this.nombre = nombre;
        this.img_producto = img_producto;
        this.descripcion = descripcion;
        this.precio_venta = precio_venta;
        this.stock = stock;
        this.id_categoria = id_categoria;
        this.id_estado  = id_estado;
    }

    public int getId_categoria() {
        return id_categoria;
    }

    public void setId_categoria(int id_categoria) {
        this.id_categoria = id_categoria;
    }

    public int getId_estado() {
        return id_estado;
    }

    public void setId_estado(int id_estado) {
        this.id_estado = id_estado;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getImg_producto() {
        return img_producto;
    }

    public void setImg_producto(String img_producto) {
        this.img_producto = img_producto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public float getPrecio_venta() {
        return precio_venta;
    }

    public void setPrecio_venta(float precio_venta) {
        this.precio_venta = precio_venta;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }
    
    
}
