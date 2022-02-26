package ensias.trippershome.controllers;

import ensias.trippershome.Security.Context;
import ensias.trippershome.models.Destination;
import ensias.trippershome.models.User;
import ensias.trippershome.services.DestinationService;
import ensias.trippershome.services.UserService;
import ensias.trippershome.services.impl.DestinationServiceImpl;
import ensias.trippershome.services.impl.UserServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
@Controller
public class UserController {
    UserService userService = new UserServiceImpl();
    DestinationService destinationService = new DestinationServiceImpl();
    @RequestMapping(value= "/destinations_favoris")
    public String destinationsFav(ModelMap model) {
        String username = Context.getUsername();
        if (username == null) {
            return "login";
        } else {
            model.put("title", "Destinations favorites");
            User user = userService.getByUsername(username);
            List<Destination> destinationList = user.getDestinationsFavoris();
            if (destinationList == null) {
                model.put("message", "list is empty");
            }
            model.put("destinations", destinationList);

        }
        return "destinations";
    }
        @RequestMapping(value= "/my_destinations")
        public String mydestinations(ModelMap model)
        {
            String username = Context.getUsername();
            if (username==null)
            {
                return "redirect:/login";
            }
            else
            {
                model.put("title", " My destinations");

                User user = userService.getByUsername(username);
                List<Destination> destinationList =destinationService.getByUser(user);
                if (destinationList == null) {
                    model.put("message", "list is empty");
                }
                model.put("destinations",destinationList);

            }






        return "destinations";


    }
}
