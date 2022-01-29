package ensias.trippershome.repositories;


import ensias.trippershome.models.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Long>{
}