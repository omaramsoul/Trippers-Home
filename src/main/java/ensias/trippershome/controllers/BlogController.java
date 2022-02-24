package ensias.trippershome.controllers;

import ensias.trippershome.models.Blog;
import ensias.trippershome.models.Destination;
import ensias.trippershome.repositories.BlogRepository;
import ensias.trippershome.services.BlogService;
import ensias.trippershome.services.impl.BlogServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class BlogController {
    BlogService blogService = new BlogServiceImpl();



    @RequestMapping(value= "/blogs")
    public String blogs(ModelMap model)
    {
         List<Blog> blog = blogService.getAll();


        model.put("blog",blog);


      return "blogs";

    }


}
