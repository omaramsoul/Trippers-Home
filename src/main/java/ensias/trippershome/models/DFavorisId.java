package ensias.trippershome.models;

import org.hibernate.Hibernate;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class DFavorisId implements Serializable {
    private static final long serialVersionUID = 316460777765913282L;
    @Column(name = "D_ID", nullable = false)
    private Integer dId;
    @Column(name = "ID", nullable = false)
    private Integer id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getDId() {
        return dId;
    }

    public void setDId(Integer dId) {
        this.dId = dId;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, dId);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        DFavorisId entity = (DFavorisId) o;
        return Objects.equals(this.id, entity.id) &&
                Objects.equals(this.dId, entity.dId);
    }
}