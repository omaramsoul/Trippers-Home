package ensias.trippershome.controllers;

import ensias.trippershome.Security.Context;
import ensias.trippershome.models.DComment;
import ensias.trippershome.models.Destination;
import ensias.trippershome.models.User;
import ensias.trippershome.repositories.DestinationRepository;
import ensias.trippershome.repositories.UserRepository;
import ensias.trippershome.services.DCommentService;
import ensias.trippershome.services.DestinationService;
import ensias.trippershome.services.UserService;
import ensias.trippershome.services.impl.DCommentServiceImpl;
import ensias.trippershome.services.impl.DestinationServiceImpl;
import ensias.trippershome.services.impl.UserServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class DestinationController {
    DestinationService destinationService= new DestinationServiceImpl();
    UserService userService= new UserServiceImpl();
    DCommentService dCommentService = new DCommentServiceImpl();

    @RequestMapping(value= "/destinations")
    public String destinations(ModelMap model)
    {
        if(Context.getUsername()==null)
            return "redirect:/login";
        List<Destination> destinationList = destinationService.getAll();

         model.put("title", "Destinations");
            model.put("destinations",destinationList);

        if (destinationList == null) {
            model.put("message", "list is empty");
        }
            return "destinations";


    }

    @RequestMapping(value= "/add_destination" ,method = RequestMethod.GET)
    public String add(Model model)
    {
        if(Context.getUsername()==null)
        {
            return "redirect:/login";
        }
        if(Context.getUsername()==null)
            return "login";

        return "addDestination";
    }

    @RequestMapping(value= "/add_destination" ,method = RequestMethod.POST)
    public String add(ModelMap model, @RequestParam String nom, @RequestParam String ville
                            ,@RequestParam String transport,@RequestParam String camping,@RequestParam String eaupot,@RequestParam String epicerie,@RequestParam String activite,@RequestParam String divers)
    {



        Destination dest= new Destination();
        dest.setDNom(nom);
        dest.setDVille(ville);
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
    @RequestMapping(value= "/search" ,method = RequestMethod.GET)
    public String comments(Model model)
    {

        return "search_comment";
    }

    @RequestMapping(value= "/search" ,method = RequestMethod.POST)
    public String comments(ModelMap model, @RequestParam String dest){
        Destination destination= destinationService.getByName(dest);
        List<DComment> comments =dCommentService.getByDestination(destination);
        model.put("comments",comments);

        return "comments";


    }

    @RequestMapping(value= "/destinations/{name}",method = RequestMethod.GET)
    public String destination_info(ModelMap model,  @PathVariable("name") String name){
        if(Context.getUsername()==null)
        {
            return "redirect:/login";
        }
        Destination destination= destinationService.getByName(name);
        model.put("destination",destination);
        List<DComment> comments =dCommentService.getByDestination(destination);
        model.put("comments",comments);
        if (Context.getUsername()==null)
        {
            return "login";
        }
        return "destination";


    }
    @RequestMapping(value= "/destinations/{name}",method = RequestMethod.POST)
    public String add_comment(ModelMap model,  @PathVariable("name") String name,@RequestParam String comment){
        Destination destination= destinationService.getByName(name);
        DComment dcomment = new DComment( userService.getByUsername(Context.getUsername()),destination, comment);
        dCommentService.save(dcomment);
        model.put("destination",destination);
        List<DComment> comments =dCommentService.getByDestination(destination);
        model.put("comments",comments);
        if (Context.getUsername()==null)
        {
            return "login";
        }


        return "destination";


    }



}
