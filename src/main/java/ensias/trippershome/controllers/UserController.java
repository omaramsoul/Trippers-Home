package ensias.trippershome.controllers;

import ensias.trippershome.Security.Context;
import ensias.trippershome.models.Destination;
import ensias.trippershome.models.User;
import ensias.trippershome.services.UserService;
import ensias.trippershome.services.impl.UserServiceImpl;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

public class UserController {
    UserService userService = new UserServiceImpl();
    @RequestMapping(value= "/destinations_favoris")
    public String destinationsFav(ModelMap model)
    {
        String username = Context.getUsername();
        if (username==null)
        {
            return "login";
        }
        else
        {

            User user = userService.getByUsername(username);
            List<Destination> destinationList =user.getDestinationsFavoris();
            model.put("destinationsFav",destinationList);
        }



        model.put("message","list is empty");
        return "destinations";


    }
}
