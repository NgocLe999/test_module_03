package com.example.test_module_03.repository;

import com.example.test_module_03.entity.RealEstate;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class RealEstateRepository {
    public static List<RealEstate> getAll() {
        List<RealEstate> property = new ArrayList<>();
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("select * from property");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String area = resultSet.getString("area");
                String status = resultSet.getString("status");
                int floor = resultSet.getInt("floor");
                String type = resultSet.getString("type");
                String description = resultSet.getString("description");
                double rentalPrice = resultSet.getDouble("rentalPrice");
                String startDate = resultSet.getString("startDate");
                String endDate = resultSet.getString("endDate");
                property.add(new RealEstate(id, area, status, floor, type, description, rentalPrice, startDate, endDate));
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return property;
    }

    public void save(RealEstate property) {
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("insert into property( id, area,  status,  floor,  type,  description,  rentalPrice,  startDate,  endDate) values (?,?,?,?,?,?,?,?,?)");
            statement.setInt(1, property.getId());
            statement.setString(2, property.getArea());
            statement.setString(3, property.getStatus());
            statement.setInt(4, property.getFloor());
            statement.setString(5, property.getType());
            statement.setString(6, property.getDescription());
            statement.setDouble(7, property.getRentalPrice());
            statement.setString(8, property.getStartDate());
            statement.setString(9, property.getEndDate());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void deleteById(int id) {
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("delete from property where id = ?");
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public RealEstate findById(int id) {
        List<RealEstate> properties = getAll();
        for (RealEstate property : properties) {
            if (property.getId() == id) {
                return property;
            }
        }
        return null;
    }

    public List<RealEstate> findProperty(String type, double price, int floor) {
        List<RealEstate> properties = getAll();
        for (RealEstate property : properties) {
            if (property.getType().equals(type) && property.getRentalPrice() == price) {
                if (property.getFloor() == floor) {
                    return properties;
                }
            }
        }
        return null;
    }

    public List<RealEstate> findByType(String type) {
        List<RealEstate> properties = getAll();
        for (RealEstate property : properties) {
            if (property.getType().equals(type)) {
                return properties;
            }
        }
        return null;
    }

    public List<RealEstate> findByPrice(double price) {
        List<RealEstate> properties = getAll();
        for (RealEstate property : properties) {
            if (property.getRentalPrice() == price) {
                return properties;
            }
        }
        return null;
    }

    public List<RealEstate> findByFloor(int floor) {
        List<RealEstate> properties = getAll();
        for (RealEstate property : properties) {
            if (property.getFloor() == floor) {
                return properties;
            }
        }
        return null;
    }
}
