/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.luismejia.webapp.service;

import jakarta.persistence.EntityManager;
import java.util.List;
import org.luismejia.webapp.model.Producto;
import org.luismejia.webapp.util.jpaUtil;

/**
 *
 * @author informatica
 */

public class ProductoService implements IProductoService{

    private EntityManager em;
    
    public ProductoService(){
        this.em = jpaUtil.getEntityManager();
    }
    
    @Override
    public List<Producto> listarProductos() {
        return em.createQuery("SELECT p FROM Producto p" , Producto.class).getResultList();
    }

    @Override
    public void agregarProducto() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void eliminarProducto(int productoId) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Producto buscarProductoPorId(int productoId) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void editarProducto(Producto producto) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
