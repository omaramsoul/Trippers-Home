package ensias.trippershome.service.Impl;
import ensias.trippershome.models.User;
import ensias.trippershome.repositories.AdminRepository;
import ensias.trippershome.repositories.TripperRepository;
import ensias.trippershome.repositories.UserRepository;
import ensias.trippershome.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashSet;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private ensias.trippershome.repositories.TripperRepository TripperRepository;
    @Autowired
    private AdminRepository adminRepository;


    @Override
    public void save(User user) {
        user.setMdp(user.getMdp());
        userRepository.save(user);
    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }
}