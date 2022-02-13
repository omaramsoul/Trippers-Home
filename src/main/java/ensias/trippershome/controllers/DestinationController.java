package ensias.trippershome.controllers;

import ensias.trippershome.models.Destination;
import ensias.trippershome.models.User;
import ensias.trippershome.repositories.DestinationRepository;
import ensias.trippershome.services.DestinationService;
import ensias.trippershome.services.impl.DestinationServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class DestinationController {
    DestinationService destinationService= new DestinationServiceImpl();
    @RequestMapping(value= "/destinations")
    public String destinations(ModelMap model)
    {
        List<Destination> destinationList = destinationService.getAll();


            model.put("destinations",destinationList);

            model.put("message","list is empty");
            return "destinations";


    }
}
