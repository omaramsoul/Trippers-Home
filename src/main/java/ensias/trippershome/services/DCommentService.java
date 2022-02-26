package ensias.trippershome.services;

import ensias.trippershome.models.DComment;
import ensias.trippershome.models.Destination;

import java.util.List;

public interface DCommentService {
    List<DComment> getByDestination(Destination dest);
    void save(DComment dcomment);
}
