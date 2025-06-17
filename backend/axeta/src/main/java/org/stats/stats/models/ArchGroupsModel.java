package org.stats.stats.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "arch_groups")
public class ArchGroupsModel {
    @Id
    @Column(name = "name")
    private String name;

    @Column(name = "data_type", nullable = false)
    private Integer dataType;

    @Column(name = "deleted")
    private Boolean deleted = false;
}