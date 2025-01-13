package com.example.test_module_03.entity;

import java.util.Date;

public class RealEstate {
    private int id;
    private String area;
    private String status;
    private int floor;
    private String type;
    private String description;
    private double rentalPrice;
    private String startDate;
    private String endDate;

    public RealEstate(int id, String area, String status, int floor, String type, String description, double rentalPrice, String startDate, String endDate) {
        this.id = id;
        this.area = area;
        this.status = status;
        this.floor = floor;
        this.type = type;
        this.description = description;
        this.rentalPrice = rentalPrice;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public RealEstate(String area, String status, int floor, String type, String description, double rentalPrice, String startDate, String endDate) {
        this.area = area;
        this.status = status;
        this.floor = floor;
        this.type = type;
        this.description = description;
        this.rentalPrice = rentalPrice;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getFloor() {
        return floor;
    }

    public void setFloor(int floor) {
        this.floor = floor;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getRentalPrice() {
        return rentalPrice;
    }

    public void setRentalPrice(double rentalPrice) {
        this.rentalPrice = rentalPrice;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }
}
