package ensias.trippershome.repositories.impl;

import ensias.trippershome.models.Destination;
import ensias.trippershome.models.User;
import ensias.trippershome.repositories.Connection;
import ensias.trippershome.repositories.DestinationRepository;
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

public class DestinationRepositoryImpl implements DestinationRepository {
    private EntityManager entityManager = Connection.getEntityManager();
    @Override
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
    public List<Destination> findAll(Sort sort) {
        return null;
    }

    @Override
    public Page<Destination> findAll(Pageable pageable) {
        return null;
    }

    @Override
    public List<Destination> findAllById(Iterable<Long> longs) {
        return null;
    }

    @Override
    public long count() {
        return 0;
    }

    @Override
    public void deleteById(Long aLong) {

    }

    @Override
    public void delete(Destination entity) {

    }

    @Override
    public void deleteAllById(Iterable<? extends Long> longs) {

    }

    @Override
    public void deleteAll(Iterable<? extends Destination> entities) {

    }

    @Override
    public void deleteAll() {

    }

    @Override
    public <S extends Destination> S save(S entity) {
        return null;
    }

    @Override
    public <S extends Destination> List<S> saveAll(Iterable<S> entities) {
        return null;
    }

    @Override
    public Optional<Destination> findById(Long aLong) {
        return Optional.empty();
    }

    @Override
    public boolean existsById(Long aLong) {
        return false;
    }

    @Override
    public void flush() {

    }

    @Override
    public <S extends Destination> S saveAndFlush(S entity) {
        return null;
    }

    @Override
    public <S extends Destination> List<S> saveAllAndFlush(Iterable<S> entities) {
        return null;
    }

    @Override
    public void deleteAllInBatch(Iterable<Destination> entities) {

    }

    @Override
    public void deleteAllByIdInBatch(Iterable<Long> longs) {

    }

    @Override
    public void deleteAllInBatch() {

    }

    @Override
    public Destination getOne(Long aLong) {
        return null;
    }

    @Override
    public Destination getById(Long aLong) {
        return null;
    }

    @Override
    public <S extends Destination> Optional<S> findOne(Example<S> example) {
        return Optional.empty();
    }

    @Override
    public <S extends Destination> List<S> findAll(Example<S> example) {
        return null;
    }

    @Override
    public <S extends Destination> List<S> findAll(Example<S> example, Sort sort) {
        return null;
    }

    @Override
    public <S extends Destination> Page<S> findAll(Example<S> example, Pageable pageable) {
        return null;
    }

    @Override
    public <S extends Destination> long count(Example<S> example) {
        return 0;
    }

    @Override
    public <S extends Destination> boolean exists(Example<S> example) {
        return false;
    }

    @Override
    public <S extends Destination, R> R findBy(Example<S> example, Function<FluentQuery.FetchableFluentQuery<S>, R> queryFunction) {
        return null;
    }
}
