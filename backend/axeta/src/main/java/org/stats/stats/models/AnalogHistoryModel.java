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
@Table(name = "analog_history", indexes = {
        @Index(name = "analog_history_item_time_idx", columnList = "item_id, time DESC"),
        @Index(name = "analog_history_category_time_idx", columnList = "category_id, time DESC")
})
public class AnalogHistoryModel {
    @Id
    private String id; // Формат: "time~item_name"

    @Column(name = "time", nullable = false)
    private Instant time;

    @Column(name = "category_id", nullable = false)
    private Integer categoryId;

    @Column(name = "category")
    private String category;

    @Column(name = "item_id", nullable = false)
    private Integer itemId;

    @Column(name = "item_name", nullable = false)
    private String itemName;

    @Column(name = "value")
    private Double value;

    @Column(name = "quality")
    private Short quality = 0;
}