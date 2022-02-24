package ensias.trippershome.services.impl;

import ensias.trippershome.models.Destination;
import ensias.trippershome.models.User;
import ensias.trippershome.repositories.DestinationRepository;
import ensias.trippershome.repositories.UserRepository;
import ensias.trippershome.repositories.impl.DestinationRepositoryImpl;
import ensias.trippershome.repositories.impl.UserRepositoryImpl;
import ensias.trippershome.services.DestinationService;

import java.util.List;

public class DestinationServiceImpl implements DestinationService {
    private DestinationRepository destinationRepository=new DestinationRepositoryImpl();
    @Override
    public List<Destination> getAll() {
        return destinationRepository.findAll();
    }
    @Override
    public List<Destination> getByUser( User user) {
        return destinationRepository.findByUser(user);
    }

    @Override
    public Destination getByName(String name) {
        return destinationRepository.findByName(name);
    }


    @Override
    public void save(Destination dest) {
        destinationRepository.save(dest);
    }
}
