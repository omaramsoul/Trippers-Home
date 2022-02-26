package ensias.trippershome.services.impl;

import ensias.trippershome.models.DComment;
import ensias.trippershome.models.Destination;
import ensias.trippershome.repositories.DCommentRepository;
import ensias.trippershome.repositories.impl.DCommentRepositoryImpl;
import ensias.trippershome.services.DCommentService;

import java.util.List;

public class DCommentServiceImpl implements DCommentService {
    DCommentRepository dCommentRepository = new DCommentRepositoryImpl();

    @Override
    public List<DComment> getByDestination(Destination dest) {
        return dCommentRepository.findDCommentByDestination(dest);
    }

    @Override
    public void save(DComment dcomment) {
         dCommentRepository.save(dcomment);
    }
}
