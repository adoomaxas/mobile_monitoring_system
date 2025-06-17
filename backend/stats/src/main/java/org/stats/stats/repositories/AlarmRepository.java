package org.stats.stats.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.stats.stats.models.AlarmModel;

public interface AlarmRepository extends JpaRepository<AlarmModel, String> {
}
