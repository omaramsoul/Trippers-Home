package ensias.trippershome.services;

import ensias.trippershome.models.Destination;
import ensias.trippershome.models.User;

import java.util.List;

public interface DestinationService {
    List<Destination> getAll();
    List<Destination> getByUser(User user);
    Destination getByName(String name);
    void save(Destination dest);
}
