package ensias.trippershome.repositories;

import ensias.trippershome.models.Admin;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminRepository extends JpaRepository<Admin, Long> {
        Admin findByUsername(String username);
        }

