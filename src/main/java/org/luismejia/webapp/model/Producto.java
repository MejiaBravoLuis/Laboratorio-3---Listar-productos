/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.luismejia.webapp.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/**
 *
 * @author informatica
 */
@Table(name = "Productos")
@Entity
public class Producto {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int productoId;
    private String nombreProducto;
    private String marcaProducto;
    private String descripcionProducto;
    private double precio;

    public Producto(String nombreProducto, String marcaProducto, String descripcionProducto, double precio) {
        this.nombreProducto = nombreProducto;
        this.marcaProducto = marcaProducto;
        this.descripcionProducto = descripcionProducto;
        this.precio = precio;
    }

    public Producto() {
    }
    
    public int getProductoId() {
        return productoId;
    }

    public void setProductoId(int productoId) {
        this.productoId = productoId;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public String getMarcaProducto() {
        return marcaProducto;
    }

    public void setMarcaProducto(String marcaProducto) {
        this.marcaProducto = marcaProducto;
    }

    public String getDescripcionProducto() {
        return descripcionProducto;
    }

    public void setDescripcionProducto(String descripcionProducto) {
        this.descripcionProducto = descripcionProducto;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    @Override
    public String toString() {
        return "Producto{" + "productoId=" + productoId + ", nombreProducto=" + nombreProducto + ", marcaProducto=" + marcaProducto + ", descripcionProducto=" + descripcionProducto + ", precio=" + precio + '}';
    }
    
    
    
}
