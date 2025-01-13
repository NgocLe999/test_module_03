package com.example.test_module_03.service.impl;

import com.example.test_module_03.entity.RealEstate;
import com.example.test_module_03.repository.RealEstateRepository;
import com.example.test_module_03.service.IRealEstate;

import java.util.List;

public class RealEstateService implements IRealEstate {

    private final RealEstateRepository realEstateRepository = new RealEstateRepository();

    @Override
    public List<RealEstate> getAll() {
        return realEstateRepository.getAll();
    }

    @Override
    public void save(RealEstate s) {
        realEstateRepository.save(s);
    }

    @Override
    public void update(int id, RealEstate s) {

    }

    @Override
    public void remove(int id) {
        realEstateRepository.deleteById(id);
    }

    @Override
    public RealEstate findById(int id) {
        return realEstateRepository.findById(id);
    }

    @Override
    public List<RealEstate> findByName(String name) {
        return null;
    }

    @Override
    public List<RealEstate> findProperties(String type, double price, int floor) {
        return realEstateRepository.findProperty(type, price, floor);
    }

    @Override
    public List<RealEstate> findByType(String type) {
        return realEstateRepository.findByType(type);
    }

    @Override
    public List<RealEstate> findByFloor(int floor) {
        return realEstateRepository.findByFloor(floor);
    }

    @Override
    public List<RealEstate> findByPrice(double price) {
        return realEstateRepository.findByPrice(price);
    }


}
