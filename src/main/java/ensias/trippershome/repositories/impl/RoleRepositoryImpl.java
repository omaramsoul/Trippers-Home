package ensias.trippershome.repositories.impl;

import ensias.trippershome.models.Role;
import ensias.trippershome.models.User;
import ensias.trippershome.repositories.Connection;
import ensias.trippershome.repositories.RoleRepository;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;

public class RoleRepositoryImpl implements RoleRepository {
    private EntityManager entityManager = Connection.getEntityManager();

    @Override
    public Role getRoleByRole(String role) {
        try {
            return (Role) entityManager.createQuery("FROM Role  WHERE role = :role")
                    .setParameter("role", role).getSingleResult();
        }catch(NoResultException e)
        {
            return null;
        }
    }

}
