package ensias.trippershome.repositories.impl;

import ensias.trippershome.models.Blog;
import ensias.trippershome.models.Destination;
import ensias.trippershome.repositories.BlogRepository;
import ensias.trippershome.repositories.Connection;
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

public class BlogRepositoryImpl implements BlogRepository {
    private EntityManager entityManager = Connection.getEntityManager();
    @Override
    public List<Blog> findAll() {
        try {
        return  (List<Blog>)entityManager.createQuery("FROM Blog  ")
                .getResultList();
        }catch(NoResultException e)
        {
            return null;
        }

    }

    @Override
    public void save(Blog blog) {
        EntityTransaction et = entityManager.getTransaction();

        entityManager.createNativeQuery("INSERT INTO blog(TITRE,ID,SUJET) Values (:titre,:id,:sujet)")
                .setParameter("titre", blog.getTitre())
                .setParameter("id",
                        blog.getId1()
                                .getId()
                )
                .setParameter("sujet", blog.getSujet())
                .executeUpdate();

//        et.commit();

    }


}
