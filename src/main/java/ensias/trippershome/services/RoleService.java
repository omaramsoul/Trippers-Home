package ensias.trippershome.services;

import ensias.trippershome.models.Role;
import ensias.trippershome.repositories.RoleRepository;
import ensias.trippershome.repositories.impl.RoleRepositoryImpl;

public interface RoleService {

    Role findByRole(String role);
}
