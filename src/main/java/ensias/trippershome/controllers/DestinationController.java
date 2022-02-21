package ensias.trippershome.controllers;

import ensias.trippershome.Security.Context;
import ensias.trippershome.models.Destination;
import ensias.trippershome.models.User;
import ensias.trippershome.repositories.DestinationRepository;
import ensias.trippershome.repositories.UserRepository;
import ensias.trippershome.services.DestinationService;
import ensias.trippershome.services.UserService;
import ensias.trippershome.services.impl.DestinationServiceImpl;
import ensias.trippershome.services.impl.UserServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class DestinationController {
    DestinationService destinationService= new DestinationServiceImpl();
    UserService userService= new UserServiceImpl();

    @RequestMapping(value= "/destinations")
    public String destinations(ModelMap model)
    {
        List<Destination> destinationList = destinationService.getAll();

         model.put("title", " Les destinations");
            model.put("destinations",destinationList);


        if (destinationList == null) {
            model.put("message", "list is empty");
        }
            return "destinations";


    }

    @RequestMapping(value= "/add_destination" ,method = RequestMethod.GET)
    public String loginPage(Model model)
    {

        return "addDestination";
    }

    @RequestMapping(value= "/add_destination" ,method = RequestMethod.POST)
    public String WelcomePage(ModelMap model, @RequestParam String nom, @RequestParam String ville,@RequestParam double la,@RequestParam double lo,
                              @RequestParam byte[] img1,@RequestParam String transport,@RequestParam String camping,@RequestParam String eaupot,@RequestParam String epicerie,@RequestParam String activite,@RequestParam String divers)
    {
        Destination dest= new Destination();
        dest.setDNom(nom);
        dest.setDVille(ville);
        dest.setLocalLa(la);
        dest.setLocalLo(lo);
        dest.setDImg1(img1);
        dest.setDTransport(transport);
        dest.setDCamping(camping);
        dest.setDEaupot(eaupot);
        dest.setDEpicerie(epicerie);
        dest.setDActivite(activite);
        dest.setDDivers(divers);
        dest.setId1(userService.getByUsername(Context.getUsername()));
        destinationService.save(dest);


        model.put("errorMsg","The destination is added");

            return "addDestination";


    }




}
