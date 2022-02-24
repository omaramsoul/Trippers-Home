package ensias.trippershome.models;



import javax.persistence.*;

@Entity
@Table(name = "\"ROLE\"")
public class Role {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "R_ID", nullable = false)
    private Integer id;

    @Column(name = "ROLE", nullable = false, length = 100)
    private String role;

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}