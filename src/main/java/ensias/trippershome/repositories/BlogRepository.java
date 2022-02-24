package ensias.trippershome.repositories;

import ensias.trippershome.models.Blog;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BlogRepository {
    public List<Blog> findAll();
    public void save(Blog blog);
}