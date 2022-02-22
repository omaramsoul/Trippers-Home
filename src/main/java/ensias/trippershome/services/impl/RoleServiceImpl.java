package ensias.trippershome.services.impl;

import ensias.trippershome.models.Role;
import ensias.trippershome.repositories.RoleRepository;
import ensias.trippershome.repositories.impl.RoleRepositoryImpl;
import ensias.trippershome.services.RoleService;


public class RoleServiceImpl implements RoleService {
  RoleRepository roleRepository = new RoleRepositoryImpl();
    @Override
    public Role findByRole(String role) {
        return roleRepository.getRoleByRole(role);
    }


}
