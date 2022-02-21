package ensias.trippershome.controllers;

import ensias.trippershome.Security.Context;
import ensias.trippershome.models.User;
import ensias.trippershome.services.UserService;
import ensias.trippershome.services.impl.UserServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RegisterController {


    private final UserService userService= new UserServiceImpl();



    @RequestMapping(value= "/register" ,method = RequestMethod.GET)
    public String RegisterPage(Model model)
    {

        return "register";
    }

    @RequestMapping(value= "/register" ,method = RequestMethod.POST)
    public String WelcomePage(ModelMap model, @RequestParam String username, @RequestParam String password)
    {
        return "index";
    }

}
