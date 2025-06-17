package org.stats.stats.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "items", indexes = {
        @Index(name = "items_name_idx", columnList = "name"),
        @Index(name = "items_short_name_idx", columnList = "short_name")
}, uniqueConstraints = {
        @UniqueConstraint(name = "items_name_uq", columnNames = {"name"}),
        @UniqueConstraint(name = "items_short_name_uq", columnNames = {"short_name"})
})
public class ItemsModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "short_name", nullable = false)
    private String shortName;

    @Column(name = "category_id")
    private Integer categoryId;

    @Column(name = "category")
    private String category;

    @Column(name = "device")
    private Integer device;

    @Column(name = "value")
    private byte[] value;

    @Column(name = "quality")
    private Short quality = 0;
}