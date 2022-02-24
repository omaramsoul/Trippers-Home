package ensias.trippershome.models;



import javax.persistence.*;
import java.time.Instant;

@Entity
@Table(name = "blog")
public class Blog {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "B_ID", nullable = false)
    private Integer id;

    @Column(name = "TITRE", nullable = false, length = 100)
    private String titre;

    @Column(name = "IMAGE")
    private byte[] image;

    @Lob
    @Column(name = "SUJET", nullable = false)
    private String sujet;


    @ManyToOne(optional = false)
    @JoinColumn(name = "ID", nullable = false)
    private User id1;

    public Blog(String titre, String sujet, User user) {
        this.titre  = titre;
        this.sujet=sujet;
        id1 = user;
    }

    public Blog() {

    }

    public User getId1() {
        return id1;
    }

    public void setId1(User id1) {
        this.id1 = id1;
    }



    public String getSujet() {
        return sujet;
    }

    public void setSujet(String sujet) {
        this.sujet = sujet;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}