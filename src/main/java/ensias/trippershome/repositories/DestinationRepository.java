package ensias.trippershome.repositories;

import ensias.trippershome.models.Destination;
import ensias.trippershome.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DestinationRepository extends JpaRepository<Destination,Long> {
    List<Destination> findByUser(User user);
}
