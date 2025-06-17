package org.stats.stats.models;

import jakarta.persistence.*;
import lombok.*;

import java.time.Instant;

@Getter
@Setter
@Entity
@Table(name = "alarms", indexes = {
        @Index(name = "alarms_item_name_time_idx", columnList = "item_id, time DESC")
})
public class AlarmModel {

    @Id
    @Column(name = "id", nullable = false)
    private String id; // "time~item_name"

    @Column(name = "time", nullable = false)
    private Instant time;

    @Column(name = "active_time", nullable = false)
    private Instant activeTime;

    @Column(name = "item_id")
    private Integer itemId;

    @Column(name = "item_name")
    private String itemName;

    @Column(name = "item_value")
    private Float itemValue;

    @Column(name = "alarm_state")
    private String alarmState;

    @Column(name = "alarm_type")
    private String alarmType;
}
