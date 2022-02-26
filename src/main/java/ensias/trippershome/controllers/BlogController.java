package ensias.trippershome.controllers;

import ensias.trippershome.Security.Context;
import ensias.trippershome.models.Blog;
import ensias.trippershome.models.Destination;
import ensias.trippershome.models.User;
import ensias.trippershome.repositories.BlogRepository;
import ensias.trippershome.services.BlogService;
import ensias.trippershome.services.UserService;
import ensias.trippershome.services.impl.BlogServiceImpl;
import ensias.trippershome.services.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class BlogController {
    BlogService blogService = new BlogServiceImpl();
    UserService userService = new UserServiceImpl();



    @RequestMapping(value= "/blogs")
    public String blogs(ModelMap model)
    {
        if(Context.getUsername()==null)
        {
            return "redirect:/login";
        }
         List<Blog> blog = blogService.getAll();


        model.put("blog",blog);


      return "blogs";

    }
    @RequestMapping(value= "/add_blog" ,method = RequestMethod.GET)
    public String add(Model model)
    {
        if(Context.getUsername()==null)
        {
            return "redirect:/login";
        }

        return "addBlog";
    }

    @RequestMapping(value= "/add_blog" ,method = RequestMethod.POST)
    public String add(ModelMap model, @RequestParam String title,@RequestParam String sujet)
    {


        User user= userService.getByUsername(Context.getUsername());
        Blog blog= new Blog(title,sujet,user);
        blogService.save(blog);



        return "addBlog";


    }



}
