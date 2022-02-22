package ensias.trippershome.services.impl;

import ensias.trippershome.models.User;
import ensias.trippershome.repositories.UserRepository;
import ensias.trippershome.repositories.impl.UserRepositoryImpl;
import ensias.trippershome.services.UserService;

public class UserServiceImpl implements UserService {
    private UserRepository userRepository=new UserRepositoryImpl();
    @Override
    public User getByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    public void save(User user) {
        userRepository.save(user);
    }
}
