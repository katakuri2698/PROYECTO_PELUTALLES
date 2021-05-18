
package dtos;


public class carritoDTO {
    int item;
    int id_detalleVenta;
    int id_producto;
    int cantidad;
    float precio;
    float descuento;
    float precio_neto;
    String nombre;
    String descripcion;
    String img_producto;

    public carritoDTO(int item, int id_detalleVenta, int id_producto, int cantidad, float precio, float descuento, float precio_neto, String nombre, String descripcion, String img_producto) {
        this.item = item;
        this.id_detalleVenta = id_detalleVenta;
        this.id_producto = id_producto;
        this.cantidad = cantidad;
        this.precio = precio;
        this.descuento = descuento;
        this.precio_neto = precio_neto;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.img_producto = img_producto;
    }



    public carritoDTO() {
    }

    public int getId_detalleVenta() {
        return id_detalleVenta;
    }

    public void setId_detalleVenta(int id_detalleVenta) {
        this.id_detalleVenta = id_detalleVenta;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public float getDescuento() {
        return descuento;
    }

    public void setDescuento(float descuento) {
        this.descuento = descuento;
    }

    public float getPrecio_neto() {
        return precio_neto;
    }

    public void setPrecio_neto(float precio_neto) {
        this.precio_neto = precio_neto;
    }

    public int getItem() {
        return item;
    }

    public void setItem(int item) {
        this.item = item;
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

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getImg_producto() {
        return img_producto;
    }

    public void setImg_producto(String img_producto) {
        this.img_producto = img_producto;
    }
    
    
    
}
