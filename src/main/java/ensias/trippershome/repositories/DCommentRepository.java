package ensias.trippershome.repositories;

import ensias.trippershome.models.DComment;
import ensias.trippershome.models.Destination;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DCommentRepository extends JpaRepository<DComment, Integer> {
    List<DComment>  findDCommentByDestination(Destination destination);
}