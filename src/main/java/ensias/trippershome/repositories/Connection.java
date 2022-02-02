package ensias.trippershome.repositories;






import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


public class Connection {


    private static EntityManager em = null;

    static {
        try {

            EntityManagerFactory entityManagerFactory =
                    Persistence.createEntityManagerFactory("persistence-unit");
            em = entityManagerFactory.createEntityManager();
            em.getTransaction().begin();
        } catch (Exception e) {
            System.out.println("EntityManager build failed ... "+e.getLocalizedMessage());
        }
    }

    public static EntityManager getEntityManager()
    {

        return em;
    }

}
