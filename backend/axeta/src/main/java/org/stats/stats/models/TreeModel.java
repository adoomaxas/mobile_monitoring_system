package org.stats.stats.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.OffsetDateTime;

@Entity
@Table(name = "tree")
@Getter
@Setter
@NoArgsConstructor

public class TreeModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Short id;

    @Column(nullable = false)
    private String name;

    @Column(name = "task_id")
    private Integer taskId;

    private Boolean active = false;
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
