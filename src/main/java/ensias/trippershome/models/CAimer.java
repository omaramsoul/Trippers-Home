package ensias.trippershome.models;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "C_AIMER")
public class CAimer {
    @EmbeddedId
    private CAimerId id;

    public CAimerId getId() {
        return id;
    }

    public void setId(CAimerId id) {
        this.id = id;
    }
}