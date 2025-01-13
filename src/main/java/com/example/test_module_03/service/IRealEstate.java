package com.example.test_module_03.service;

import com.example.test_module_03.entity.RealEstate;

import java.util.List;

public interface IRealEstate extends IService<RealEstate> {
    List<RealEstate> findProperties(String type, double price, int floor);

    List<RealEstate> findByType(String type);

    List<RealEstate> findByFloor(int floor);

    List<RealEstate> findByPrice(double price);

}
