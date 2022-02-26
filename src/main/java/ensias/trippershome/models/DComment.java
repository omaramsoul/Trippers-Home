package ensias.trippershome.models;

import javax.persistence.*;

@Entity
@Table(name = "d_comments", indexes = {
        @Index(name = "D_ID", columnList = "D_ID"),
        @Index(name = "ID", columnList = "ID")
})
public class DComment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "C_ID", nullable = false)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID")
    private User user;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "D_ID")
    private Destination destination;

    @Lob
    @Column(name = "comment")
    private String comment;

    public DComment() {
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public DComment(User user, Destination destination, String comment) {
        this.user = user;
        this.destination = destination;
        this.comment = comment;
    }

    public Destination getDestination() {
        return destination;
    }

    public void setDestination(Destination destination) {
        this.destination = destination;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}