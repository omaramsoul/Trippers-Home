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
import javax.persistence.NoResultException;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;

public class DCommentRepositoryImpl implements DCommentRepository {
    private EntityManager entityManager = Connection.getEntityManager();
    @Override
    public List<DComment> findAll() {
        return null;
    }

    @Override
    public List<DComment> findAll(Sort sort) {
        return null;
    }

    @Override
    public Page<DComment> findAll(Pageable pageable) {
        return null;
    }

    @Override
    public List<DComment> findAllById(Iterable<Integer> integers) {
        return null;
    }

    @Override
    public long count() {
        return 0;
    }

    @Override
    public void deleteById(Integer integer) {

    }

    @Override
    public void delete(DComment entity) {

    }

    @Override
    public void deleteAllById(Iterable<? extends Integer> integers) {

    }

    @Override
    public void deleteAll(Iterable<? extends DComment> entities) {

    }

    @Override
    public void deleteAll() {

    }

    @Override
    public <S extends DComment> S save(S entity) {
        return null;
    }

    @Override
    public <S extends DComment> List<S> saveAll(Iterable<S> entities) {
        return null;
    }

    @Override
    public Optional<DComment> findById(Integer integer) {
        return Optional.empty();
    }

    @Override
    public boolean existsById(Integer integer) {
        return false;
    }

    @Override
    public void flush() {

    }

    @Override
    public <S extends DComment> S saveAndFlush(S entity) {
        return null;
    }

    @Override
    public <S extends DComment> List<S> saveAllAndFlush(Iterable<S> entities) {
        return null;
    }

    @Override
    public void deleteAllInBatch(Iterable<DComment> entities) {

    }

    @Override
    public void deleteAllByIdInBatch(Iterable<Integer> integers) {

    }

    @Override
    public void deleteAllInBatch() {

    }

    @Override
    public DComment getOne(Integer integer) {
        return null;
    }

    @Override
    public DComment getById(Integer integer) {
        return null;
    }

    @Override
    public <S extends DComment> Optional<S> findOne(Example<S> example) {
        return Optional.empty();
    }

    @Override
    public <S extends DComment> List<S> findAll(Example<S> example) {
        return null;
    }

    @Override
    public <S extends DComment> List<S> findAll(Example<S> example, Sort sort) {
        return null;
    }

    @Override
    public <S extends DComment> Page<S> findAll(Example<S> example, Pageable pageable) {
        return null;
    }

    @Override
    public <S extends DComment> long count(Example<S> example) {
        return 0;
    }

    @Override
    public <S extends DComment> boolean exists(Example<S> example) {
        return false;
    }

    @Override
    public <S extends DComment, R> R findBy(Example<S> example, Function<FluentQuery.FetchableFluentQuery<S>, R> queryFunction) {
        return null;
    }

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
}
