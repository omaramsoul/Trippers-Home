package ensias.trippershome.controllers;

import ensias.trippershome.models.User;
import ensias.trippershome.repositories.UserRepository;
import ensias.trippershome.services.UserService;
import ensias.trippershome.services.impl.UserServiceImpl;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;
import java.util.function.Function;

@Controller
public class LoginController {
    private final UserService userService= new UserServiceImpl();



    @RequestMapping(value= "/login" ,method = RequestMethod.GET)
    public String loginPage(Model model)
    {

        return "login";
    }

    @RequestMapping(value= "/login" ,method = RequestMethod.POST)
    public String WelcomePage(ModelMap model, @RequestParam String username, @RequestParam String password)
    {
//        User user = userService.getByUsername(username);
//        if (userService.getByUsername(username)==null || !user.getMdp().equals(password))
//        {
//            model.put("errorMsg","the username and the password are incorrect");
//            return "login";
//        }
//        else if (user.getRole().getRole().equals("ADMIN"))
//        {
//            return "AdminHome";
//        }else {
//
//            return "UserHome";
//        }



    }

}
