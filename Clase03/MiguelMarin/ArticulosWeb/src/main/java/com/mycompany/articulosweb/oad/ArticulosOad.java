/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.articulosweb.oad;

import com.mycompany.articulosweb.entidades.Articulo;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author miguel
 */
public interface ArticulosOad extends JpaRepository<Articulo,Integer> {
    
    
//    List<Articulo> findByNombreContaining(String cadena);
//    
//    List<Articulo> findByNombreStartingWith(String cadena);
    
     List<Articulo> findByNombreContaining(String cadena);
    
    List<Articulo> findByNombreStartingWith(String cadena);
}
