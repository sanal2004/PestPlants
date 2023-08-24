package com.example.pestplantsdb.services;

import com.example.pestplantsdb.models.Plant;
import com.example.pestplantsdb.repositories.PlantRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class PlantService {
    private final PlantRepository plantRepository;

    public List<Plant> listPlants(String culturename) {
        if (culturename != null) return plantRepository.findByCulturename(culturename);
        return plantRepository.findAll();
    }

    public void savePlant(Plant plant){
        log.info("Saving new {}", plant);
        plantRepository.save(plant);
    }

    public void deletePlant(Long id) {
        plantRepository.deleteById(id);
    }

    public Plant getPlantById(Long id) {
        return plantRepository.findById(id).orElse(null);
    }
}

