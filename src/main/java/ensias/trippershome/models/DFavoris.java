package ensias.trippershome.models;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "D_FAVORIS")
public class DFavoris {
    @EmbeddedId
    private DFavorisId id;

    public DFavorisId getId() {
        return id;
    }

    public void setId(DFavorisId id) {
        this.id = id;
    }
}