package ensias.trippershome.services.impl;

import ensias.trippershome.models.Blog;
import ensias.trippershome.repositories.BlogRepository;
import ensias.trippershome.repositories.impl.BlogRepositoryImpl;
import ensias.trippershome.services.BlogService;

import java.util.List;

public class BlogServiceImpl implements BlogService {
    BlogRepository blogRepository = new BlogRepositoryImpl();

    @Override
    public List<Blog> getAll() {
        return blogRepository.findAll();
    }

    @Override
    public void save(Blog blog) {
        blogRepository.save(blog);
    }
}
