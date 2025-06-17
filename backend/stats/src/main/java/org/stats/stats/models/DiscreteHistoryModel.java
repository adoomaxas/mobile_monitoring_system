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
@Table(name = "discrete_history", indexes = {
        @Index(name = "discrete_history_item_time_idx", columnList = "item_id, time DESC"),
        @Index(name = "discrete_history_category_time_idx", columnList = "category_id, time DESC")
})
public class DiscreteHistoryModel {
    @Id
    private String id; // Формат: "time~item_name"

    @Column(name = "time", nullable = false)
    private Instant time;

    @Column(name = "item_id", nullable = false)
    private Integer itemId;

    @Column(name = "item_name", nullable = false)
    private String itemName;

    @Column(name = "category_id", nullable = false)
    private Integer categoryId;

    @Column(name = "category")
    private String category;

    @Column(name = "value")
    private Integer value;

    @Column(name = "quality")
    private Short quality = 0;
}