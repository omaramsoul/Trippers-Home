package ensias.trippershome.services;

import ensias.trippershome.models.Destination;

import java.util.List;

public interface DestinationService {
    List<Destination> getAll();

    void save(Destination dest);
}
