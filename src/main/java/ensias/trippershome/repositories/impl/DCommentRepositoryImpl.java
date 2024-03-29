package ensias.trippershome.repositories.impl;

import ensias.trippershome.models.DComment;
import ensias.trippershome.models.Destination;
import ensias.trippershome.repositories.Connection;
import ensias.trippershome.repositories.DCommentRepository;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;

public class DCommentRepositoryImpl implements DCommentRepository {
    private EntityManager entityManager = Connection.getEntityManager();


    @Override
    public List<DComment> findDCommentByDestination(Destination destination) {
        try {
            return (List<DComment>)entityManager.createQuery("FROM DComment d where d.destination.dNom = :dest ")
                    .setParameter("dest", destination.getDNom())
                    .getResultList();
        }catch(NoResultException e)
        {
            return null;
        }
    }

    @Override
    public void save(DComment dcomment) {
        EntityTransaction et = entityManager.getTransaction();

        entityManager.createNativeQuery("INSERT INTO d_comments(ID,D_ID,comment) Values (:id,:d,:comment)")
                .setParameter("id", dcomment.getUser().getId())
                .setParameter("d", dcomment.getDestination().getId())
                .setParameter("comment", dcomment.getComment())
                .executeUpdate();
        et.commit();
    }
}
