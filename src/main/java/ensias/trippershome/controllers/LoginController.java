package ensias.trippershome.controllers;

import ensias.trippershome.Security.Context;
import ensias.trippershome.models.Blog;
import ensias.trippershome.models.User;

import ensias.trippershome.services.BlogService;
import ensias.trippershome.services.DestinationService;
import ensias.trippershome.services.UserService;
import ensias.trippershome.services.impl.BlogServiceImpl;
import ensias.trippershome.services.impl.DestinationServiceImpl;
import ensias.trippershome.services.impl.UserServiceImpl;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
public class LoginController {
    private final UserService userService= new UserServiceImpl();
    DestinationService destinationService= new DestinationServiceImpl();
    BlogService blogService = new BlogServiceImpl();



    @RequestMapping(value= "/login" ,method = RequestMethod.GET)
    public String loginPage(Model model)
    {

        return "login";
    }

    @RequestMapping(value= "/login" ,method = RequestMethod.POST)
    public String WelcomePage(ModelMap model, @RequestParam String username, @RequestParam String password)
    {
        User user = userService.getByUsername(username);

        if (user==null || !user.getMdp().equals(password))
        {
            model.put("errorMsg","the username and the password are incorrect");
            return "login";
        }
        else
        {
            Context.setUsername(username);
            model.put("user",user);
            model.put("destinations",destinationService.getAll());
            model.put("blogs",blogService.getAll());
            return "index";
        }

    }
    @RequestMapping(value= "/logout")
    public String home(ModelMap model) {
        Context.setUsername(null);
        model.put("destinations",destinationService.getAll());
        model.put("blogs",blogService.getAll());

        return "index";
    }

}
