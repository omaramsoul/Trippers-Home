package ensias.trippershome.models;

import javax.persistence.*;
import java.time.Instant;
import java.time.LocalDate;

@Entity
@Table(name = "ANNONCE")
public class Annonce {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "A_ID", nullable = false)
    private Integer id;

    @Column(name = "A_DATE", nullable = false)
    private LocalDate aDate;

    @Column(name = "A_DUREE")
    private Integer aDuree;

    @Lob
    @Column(name = "A_DESC", nullable = false)
    private String aDesc;

    @Column(name = "A_DATE_CR", nullable = false)
    private Instant aDateCr;

    @ManyToOne(optional = false)
    @JoinColumn(name = "ID", nullable = false)
    private Tripper id1;

    public Tripper getId1() {
        return id1;
    }

    public void setId1(Tripper id1) {
        this.id1 = id1;
    }

    public Instant getADateCr() {
        return aDateCr;
    }

    public void setADateCr(Instant aDateCr) {
        this.aDateCr = aDateCr;
    }

    public String getADesc() {
        return aDesc;
    }

    public void setADesc(String aDesc) {
        this.aDesc = aDesc;
    }

    public Integer getADuree() {
        return aDuree;
    }

    public void setADuree(Integer aDuree) {
        this.aDuree = aDuree;
    }

    public LocalDate getADate() {
        return aDate;
    }

    public void setADate(LocalDate aDate) {
        this.aDate = aDate;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}