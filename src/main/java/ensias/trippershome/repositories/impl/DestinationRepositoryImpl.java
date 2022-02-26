package ensias.trippershome.repositories.impl;

import ensias.trippershome.models.Destination;
import ensias.trippershome.models.User;
import ensias.trippershome.repositories.Connection;
import ensias.trippershome.repositories.DestinationRepository;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.FluentQuery;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;

public class DestinationRepositoryImpl implements DestinationRepository {
    private EntityManager entityManager = Connection.getEntityManager();

    public List<Destination> findAll() {
        try {
            return (List<Destination>)entityManager.createQuery("FROM Destination ")
                    .getResultList();
        }catch(NoResultException e)
        {
            return null;
        }
    }



    @Override
    public List<Destination> findByUser(User user) {
        try {
            return (List<Destination>)entityManager.createQuery("FROM Destination d where d.id1.username = :user ")
                    .setParameter("user", user.getUsername())
                    .getResultList();
        }catch(NoResultException e)
        {
            return null;
        }
    }

    @Override
    public Destination findByName(String name) {
        try {
            return (Destination)entityManager.createQuery("FROM Destination  where  dNom = :name ")
                    .setParameter("name", name)
                    .getSingleResult();
        }catch(NoResultException e)
        {
            return null;
        }
    }

    @Override
    public void save(Destination destination) {
        EntityTransaction et = entityManager.getTransaction();

        entityManager.createNativeQuery("INSERT INTO Destination(D_NOM,D_TRANSPORT,D_VILLE,ID,D_ACTIVITE,D_CAMPING,D_DIVERS,D_EAUPOT,D_EPICERIE,D_IMG_1,destinations_d_id) Values (:nom,:transport,:ville,:id,:activite,:D_CAMPING,:D_DIVERS,:D_EAUPOT,:D_EPICERIE,:D_IMG_1,0)")
                .setParameter("nom", destination.getDNom())
                .setParameter("ville", destination.getDVille())
                .setParameter("id", destination.getId1().getId())
                .setParameter("activite", destination.getDActivite())
                .setParameter("D_CAMPING", destination.getDCamping())
                .setParameter("D_EPICERIE", destination.getDEpicerie())
                .setParameter("D_EAUPOT", destination.getDEaupot())
                .setParameter("transport", destination.getDTransport())
                .setParameter("D_IMG_1", destination.getDImg1())
                .setParameter("D_DIVERS", destination.getDDivers())
                .executeUpdate();
                et.commit();

    }
}
