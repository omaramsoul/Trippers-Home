package ensias.trippershome.repositories.impl;

import ensias.trippershome.models.User;
import ensias.trippershome.repositories.Connection;
import ensias.trippershome.repositories.UserRepository;
import org.hibernate.HibernateException;
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

public class UserRepositoryImpl implements UserRepository {
    private EntityManager entityManager = Connection.getEntityManager();
    @Override
    public User findByUsername(String username) {
        try {
            return (User) entityManager.createQuery("FROM User  WHERE username = :username")
                    .setParameter("username", username).getSingleResult();
        }catch(NoResultException e)
        {
            return null;
        }
    }





    public  void saveUser(User user) {
        try {
            EntityTransaction et = entityManager.getTransaction();
        entityManager.createNativeQuery("INSERT INTO USER (username,email,mdp) Values (:username,:email,:mdp)")
                .setParameter("username", user.getUsername())
                .setParameter("email", user.getEmail())
                .setParameter("mdp", user.getMdp())
                .executeUpdate();

        }catch(Exception e)
        {
            for (int i=0;i<10;i++)
                System.out.println("hello");
        }



    }


}
