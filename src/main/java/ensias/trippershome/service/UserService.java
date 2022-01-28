package ensias.trippershome.service;


import ensias.trippershome.models.User;

public interface UserService {
    void save(User user);
    User findByUsername(String username);
}