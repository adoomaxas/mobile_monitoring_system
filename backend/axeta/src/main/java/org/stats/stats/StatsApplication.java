package org.stats.stats;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableJpaRepositories("org.stats.stats.repositories")
@EntityScan("org.stats.stats.models")
public class StatsApplication {

    public static void main(String[] args) {
        SpringApplication.run(StatsApplication.class, args);
    }

}
