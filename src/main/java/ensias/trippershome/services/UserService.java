package ensias.trippershome.services;

import ensias.trippershome.models.User;

public interface UserService {
    User getByUsername(String username);

    void save(User user);
}
