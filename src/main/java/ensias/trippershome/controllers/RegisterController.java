package ensias.trippershome.controllers;

import ensias.trippershome.Security.Context;
import ensias.trippershome.models.User;
import ensias.trippershome.services.RoleService;
import ensias.trippershome.services.UserService;
import ensias.trippershome.services.impl.RoleServiceImpl;

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
    private final RoleService roleService = new RoleServiceImpl();


    @RequestMapping(value= "/register" ,method = RequestMethod.GET)
    public String RegisterPage(Model model)
    {

        return "register";
    }

    @RequestMapping(value= "/register" ,method = RequestMethod.POST)
    public String WelcomePage(ModelMap model, @RequestParam String username, @RequestParam String email,
                              @RequestParam String password, @RequestParam String password2)
    {

        User user = new User();
        user.setUsername(username);
        user.setEmail(email);
        user.setMdp(password);

       // String message = Validate.accept(user,password2);
//        if (message !=null)
//        {
//            model.put("msg",message);
//            return "register";
//        }else {
            userService.save(user);

            Context.setUsername(username);
            return "index";
//        }
    }

}

