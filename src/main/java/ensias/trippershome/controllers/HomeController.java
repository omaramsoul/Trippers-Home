package ensias.trippershome.controllers;

import ensias.trippershome.Security.Context;
import ensias.trippershome.services.BlogService;
import ensias.trippershome.services.DestinationService;
import ensias.trippershome.services.impl.BlogServiceImpl;
import ensias.trippershome.services.impl.DestinationServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
    BlogService blogService = new BlogServiceImpl();
    DestinationService destinationService = new DestinationServiceImpl();
    @RequestMapping(value= "/")
            public String home(ModelMap model)
    {
        if (destinationService.getAll().size() > 3)

        model.put("destinations",destinationService.getAll());
        model.put("user",Context.getUsername());
        model.put("blogs",blogService.getAll());
        return "index";
    }

}
