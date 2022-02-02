package ensias.trippershome.repositories;

import ensias.trippershome.models.Destination;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DestinationRepository extends JpaRepository<Destination,Long> {
}
