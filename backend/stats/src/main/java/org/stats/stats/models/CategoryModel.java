package org.stats.stats.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.Instant;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "category", uniqueConstraints = {
        @UniqueConstraint(name = "category_uq", columnNames = {"name"})
})
public class CategoryModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "group_name", nullable = false)
    private String groupName;

    @Column(name = "data_type")
    private Integer dataType;

    @Column(name = "deadzone")
    private Float deadzone;

    @Column(name = "is_workflow")
    private Boolean isWorkflow = false;

    @Column(name = "comment")
    private String comment;

    @Column(name = "deleted")
    private Boolean deleted = false;

    @Column(name = "created")
    private Instant created = Instant.now();
}