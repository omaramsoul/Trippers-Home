package ensias.trippershome.repositories;

import ensias.trippershome.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
    void saveUser(User user);

}