package com.example.pestplantsdb.repositories;

import com.example.pestplantsdb.models.Plant;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PlantRepository extends JpaRepository<Plant, Long> {
    List<Plant> findByCulturename(String culturename);
}
