package ensias.trippershome.repositories;

import ensias.trippershome.models.Tripper;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TripperRepository extends JpaRepository<Tripper, Long>
{
        Tripper findByUsername(String username);
}