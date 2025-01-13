<%--
  Created by IntelliJ IDEA.
  User: LE XUAN NGOC
  Date: 1/13/2025
  Time: 8:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Property Search</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 0;
            padding: 20px;
            background-color: #f0f0f0;
        }

        .search-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            width: 50%;
        }

        .results-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 50%;
        }

        form, table {
            width: 100%;
        }

        label, select, input {
            margin-bottom: 10px;
            width: 100%;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<div class="search-container">
    <h2>Property Search</h2>
    <form method="POST" id="searchForm">
        <label for="propertyType">Loại mặt bằng:</label>
        <select id="propertyType" name="type">
            <option value="">--Chọn--</option>
            <option value="Trọn gói">Trọn gói</option>
            <option value="Cho thuê">Cho thuê</option>
        </select>

        <label for="floor">Tầng:</label>
        <select id="floor" name="floor">
            <option value="">--Chọn--</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
            <option value="13">13</option>
            <option value="14">14</option>
            <option value="15">15</option>
        </select>

        <label for="rentalDate">Ngày cho thuê:</label>
        <input type="date" id="rentalDate" name="rentalDate">
        <button type="submit">Tìm kiếm
        </button>
    </form>
</div>

<div class="results-container">
    <h2>Danh sách mặt bằng tìm được</h2>
    <table id="resultsTable">
        <thead>
        <tr>
            <th>Mã mặt bằng</th>
            <th>Diện tích</th>
            <th>Trạng thái</th>
            <th>Tầng</th>
            <th>Loại mặt bằng</th>
            <th>Mô tả chi tiết</th>
            <th>Giá cho thuê</th>
            <th>Ngày bắt đầu</th>
            <th>Ngày kết thúc</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listProperties}" var="student" varStatus="temp">
            <tr>
                <td>${listProperties.id}</td>
                <td>${listProperties.area}</td>
                <td>${listProperties.status}</td>
                <td>${listProperties.floor}</td>
                <td>${listProperties.type}</td>
                <td>${listProperties.description}</td>
                <td>${listProperties.rentalPrice}</td>
                <td>${listProperties.startDate}</td>
                <td>${listProperties.endDate}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<script>
    document.getElementById('searchForm').addEventListener('submit', function (event) {
        event.preventDefault();
        // Logic to fetch and display search results goes here
    });
</script>
</body>
</html>

