package org.stats.stats.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.OffsetDateTime;

@Entity
@Table(name = "tree_node_hide")
@Getter
@Setter
@NoArgsConstructor
public class TreeNodeHideModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "tree_node_id", nullable = false)
    private Integer treeNodeId;

    @Column(name = "user_id", nullable = false)
    private Integer userId;

    private Boolean deleted = false;

    @Column(name = "creation_date")
    private OffsetDateTime creationDate;

    @Column(name = "creation_user")
    private String creationUser;

    @Column(name = "del_date")
    private OffsetDateTime delDate;

    @Column(name = "del_user")
    private String delUser;
}
