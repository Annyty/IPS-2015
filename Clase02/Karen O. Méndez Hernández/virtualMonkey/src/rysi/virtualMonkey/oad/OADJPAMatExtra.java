package rysi.virtualMonkey.oad;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import rysi.virtualMonkey.entidades.Materialextra;

/**
 * @author jaguilar
 * @version 1.0
 * @created 14-feb.-2015 11:39:55
 */
public class OADJPAMatExtra implements OADMatExtra {
     private EntityManagerFactory emf;

    public OADJPAMatExtra() {
        emf = Persistence.createEntityManagerFactory("Materialextra");
    }

    /*
     * 
     * @param mat
     */
    public void actualizar(Materialextra mat) {
        EntityManager em = emf.createEntityManager();
        em.merge(mat);
    }

 

    /**
     *
     * @param idMaterialextra
     */
    public void eliminar(int idMaterialextra) {
        EntityManager em = emf.createEntityManager();
        em.remove(idMaterialextra);
    }

   
    /**
     *
     * @param mat
     */
    public void registrar(Materialextra mat) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.persist(mat);
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
            throw new RuntimeException("Error registrar material extra");
        }
    }



}
/**
 *
 * @author mat
 */
