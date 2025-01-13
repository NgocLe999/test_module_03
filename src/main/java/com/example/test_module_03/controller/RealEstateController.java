package com.example.test_module_03.controller;

import com.example.test_module_03.entity.RealEstate;
import com.example.test_module_03.service.impl.RealEstateService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/")
public class RealEstateController extends HttpServlet {
    private final RealEstateService realEstateService = new RealEstateService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                req.getRequestDispatcher("/view/create.jsp").forward(req, resp);
                break;
            case "delete":
                int id = Integer.parseInt(req.getParameter("id"));
                realEstateService.remove(id);
                resp.sendRedirect("/home");
                break;
            case "search":
//                List<RealEstate> properties = realEstateService.getAll();
//                req.setAttribute("properties", properties);
                req.getRequestDispatcher("/view/list.jsp").forward(req, resp);
                break;

            default:
                req.getRequestDispatcher("/view/create.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                int id = Integer.parseInt(req.getParameter("id"));
                String area = req.getParameter("area");
                String status = req.getParameter("status");
                int floor = Integer.parseInt(req.getParameter("floor"));
                String type = req.getParameter("type");
                String description = req.getParameter("description");
                double price = Double.parseDouble(req.getParameter("rentalPrice"));
                String dateStart = req.getParameter("startDate");
                String dateEnd = req.getParameter("endDate");
                RealEstate property = realEstateService.findById(id);
                if (property != null) {
                    req.getRequestDispatcher("/view/errorPage.jsp").forward(req, resp);
                } else {
                    realEstateService.save(new RealEstate(id, area, status, floor, type, description, price, dateStart, dateEnd));
                    resp.sendRedirect("/home");
                }
                break;
            case "search":
                String typeSearch = req.getParameter("type");
                double priceSearch = Double.parseDouble(req.getParameter("rentalPrice"));
                int floorSearch = Integer.parseInt(req.getParameter("floor"));
                List<RealEstate> listProperties = realEstateService.findProperties(typeSearch, priceSearch, floorSearch);
                req.setAttribute("listProperties", listProperties);
                req.getRequestDispatcher("/view/list.jsp").forward(req, resp);
        }
    }
}
