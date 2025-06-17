package org.stats.stats.controllers;

import org.stats.stats.models.AlarmModel;
import org.stats.stats.repositories.AlarmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/alarms")
public class AlarmController {

    private final AlarmRepository alarmRepository;

    @Autowired
    public AlarmController(AlarmRepository alarmRepository) {
        this.alarmRepository = alarmRepository;
    }

    @PostMapping
    public AlarmModel createAlarm(@RequestBody AlarmModel alarm) {
        if (alarm.getId() == null || alarm.getId().isEmpty()) {
            String generatedId = alarm.getTime().toString() + "~" + alarm.getItemName();
            alarm.setId(generatedId);
        }
        return alarmRepository.save(alarm);
    }
}
