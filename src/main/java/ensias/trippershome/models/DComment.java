package ensias.trippershome.models;

import javax.persistence.*;

@Entity
@Table(name = "D_COMMENTS")
public class DComment {
    @EmbeddedId
    private DCommentId id;

    @Lob
    @Column(name = "D_COMMENT", nullable = false)
    private String dComment;

    public String getDComment() {
        return dComment;
    }

    public void setDComment(String dComment) {
        this.dComment = dComment;
    }

    public DCommentId getId() {
        return id;
    }

    public void setId(DCommentId id) {
        this.id = id;
    }
}