package ensias.trippershome.models;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Collection;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "USER")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID", nullable = false)
    private Integer id;

    @Column(name = "USERNAME", nullable = false, length = 100)
    private String username;

    @Column(name = "EMAIL", nullable = false, length = 100)
    private String email;

    @Column(name = "MDP", nullable = false, length = 50)
    private String mdp;

    @Column(name = "TELE", nullable = false)
    private Integer tele;

    @Column(name = "BIRTHDAY")
    private LocalDate birthday;

    @Column(name = "IMAGE")
    private byte[] image;

    @Column(name = "PAYS", length = 100)
    private String pays;
    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(
            name = "user_role",
            joinColumns = @JoinColumn(
                    name = "ID", referencedColumnName = "ID"),
            inverseJoinColumns = @JoinColumn(
                    name = "R_ID", referencedColumnName = "R_id"))

    private Role role  ;




    public String getPays() {
        return pays;
    }

    public void setPays(String pays) {
        this.pays = pays;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    public LocalDate getBirthday() {
        return birthday;
    }

    public void setBirthday(LocalDate birthday) {
        this.birthday = birthday;
    }

    public Integer getTele() {
        return tele;
    }

    public void setTele(Integer tele) {
        this.tele = tele;
    }

    public String getMdp() {
        return mdp;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Integer getId() {
        return id;
    }

    public Role getRole() {
        return role;
    }

    public void setRoles(Role role) {
        this.role = role;
    }

    public void setId(Integer id) {
        this.id = id;
    }



}