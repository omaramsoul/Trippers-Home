package ensias.trippershome.models;

import javax.persistence.*;
import java.time.Instant;
import java.util.List;

@Entity
@Table(name = "DESTINATION")
public class Destination {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "D_ID", nullable = false)
    private Integer id;

    @Column(name = "D_NOM", nullable = false, length = 100)
    private String dNom;

    @Column(name = "D_VILLE", nullable = false, length = 100)
    private String dVille;

    @Column(name = "LOCAL_LA", nullable = false)
    private Double localLa;

    @Column(name = "LOCAL_LO", nullable = false)
    private Double localLo;

    @Column(name = "D_IMG_1", nullable = false)
    private byte[] dImg1;

    @Column(name = "D_IMG_2")
    private byte[] dImg2;

    @Column(name = "D_IMG_3")
    private byte[] dImg3;

    @Lob
    @Column(name = "D_TRANSPORT", nullable = false)
    private String dTransport;

    @Lob
    @Column(name = "D_CAMPING", nullable = false)
    private String dCamping;

    @Lob
    @Column(name = "D_EAUPOT", nullable = false)
    private String dEaupot;

    @Lob
    @Column(name = "D_EPICERIE", nullable = false)
    private String dEpicerie;

    @Lob
    @Column(name = "D_ACTIVITE", nullable = false)
    private String dActivite;

    @Lob
    @Column(name = "D_DIVERS", nullable = false)
    private String dDivers;

    @Column(name = "D_DATE_CR", nullable = false)
    private Instant dDateCr;

    @ManyToOne(optional = false)
    @JoinColumn(name = "ID", nullable = false)
    private Tripper id1;
    @OneToMany
    @JoinColumn(name = "D_ID")
    private List<DComment> comments;


    public Tripper getId1() {
        return id1;
    }

    public void setId1(Tripper id1) {
        this.id1 = id1;
    }

    public Instant getDDateCr() {
        return dDateCr;
    }

    public void setDDateCr(Instant dDateCr) {
        this.dDateCr = dDateCr;
    }

    public String getDDivers() {
        return dDivers;
    }

    public void setDDivers(String dDivers) {
        this.dDivers = dDivers;
    }

    public String getDActivite() {
        return dActivite;
    }

    public void setDActivite(String dActivite) {
        this.dActivite = dActivite;
    }

    public String getDEpicerie() {
        return dEpicerie;
    }

    public void setDEpicerie(String dEpicerie) {
        this.dEpicerie = dEpicerie;
    }

    public String getDEaupot() {
        return dEaupot;
    }

    public void setDEaupot(String dEaupot) {
        this.dEaupot = dEaupot;
    }

    public String getDCamping() {
        return dCamping;
    }

    public void setDCamping(String dCamping) {
        this.dCamping = dCamping;
    }

    public String getDTransport() {
        return dTransport;
    }

    public void setDTransport(String dTransport) {
        this.dTransport = dTransport;
    }

    public byte[] getDImg3() {
        return dImg3;
    }

    public void setDImg3(byte[] dImg3) {
        this.dImg3 = dImg3;
    }

    public byte[] getDImg2() {
        return dImg2;
    }

    public void setDImg2(byte[] dImg2) {
        this.dImg2 = dImg2;
    }

    public byte[] getDImg1() {
        return dImg1;
    }

    public void setDImg1(byte[] dImg1) {
        this.dImg1 = dImg1;
    }

    public Double getLocalLo() {
        return localLo;
    }

    public void setLocalLo(Double localLo) {
        this.localLo = localLo;
    }

    public Double getLocalLa() {
        return localLa;
    }

    public void setLocalLa(Double localLa) {
        this.localLa = localLa;
    }

    public String getDVille() {
        return dVille;
    }

    public void setDVille(String dVille) {
        this.dVille = dVille;
    }

    public String getDNom() {
        return dNom;
    }

    public void setDNom(String dNom) {
        this.dNom = dNom;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}