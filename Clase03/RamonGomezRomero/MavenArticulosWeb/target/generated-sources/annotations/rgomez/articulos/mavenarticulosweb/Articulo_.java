package rgomez.articulos.mavenarticulosweb;

import java.math.BigDecimal;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import rgomez.articulos.mavenarticulosweb.ComprasDetalle;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2015-02-21T12:46:36")
@StaticMetamodel(Articulo.class)
public class Articulo_ { 

    public static volatile SingularAttribute<Articulo, String> nombre;
    public static volatile SingularAttribute<Articulo, Integer> idArticulo;
    public static volatile SingularAttribute<Articulo, BigDecimal> precio;
    public static volatile SingularAttribute<Articulo, String> descripcion;
    public static volatile ListAttribute<Articulo, ComprasDetalle> comprasDetalleList;

}