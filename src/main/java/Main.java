
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import java.util.List;
import org.luismejia.webapp.model.Producto;
import org.luismejia.webapp.util.jpaUtil;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author luism
 */
public class Main {
    
    private static EntityManager em = jpaUtil.getEntityManager();
    
    public static void main(String [] args){
        
        
        
        TypedQuery<Producto> query = em.createQuery("SELECT p FROM Producto p" , Producto.class);
        List<Producto>productos = query.getResultList();
        
        productos.forEach(producto -> System.out.println(producto));
        
        
        
    }
}
