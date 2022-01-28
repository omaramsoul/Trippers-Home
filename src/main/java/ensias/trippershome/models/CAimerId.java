package ensias.trippershome.models;

import org.hibernate.Hibernate;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class CAimerId implements Serializable {
    private static final long serialVersionUID = 1574734136904245943L;
    @Column(name = "B_ID", nullable = false)
    private Integer bId;
    @Column(name = "ID", nullable = false)
    private Integer id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getBId() {
        return bId;
    }

    public void setBId(Integer bId) {
        this.bId = bId;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, bId);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        CAimerId entity = (CAimerId) o;
        return Objects.equals(this.id, entity.id) &&
                Objects.equals(this.bId, entity.bId);
    }
}