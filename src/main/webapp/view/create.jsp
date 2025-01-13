<%--
  Created by IntelliJ IDEA.
  User: LE XUAN NGOC
  Date: 1/13/2025
  Time: 8:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Property Management Form</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f0f0f0;
        }

        .form-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label, input, select, textarea {
            margin-bottom: 10px;
        }

        button {
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h2>Property Management Form</h2>
    <form action="/submit-property" method="POST">
        <!-- Mã mặt bằng -->
        <label for="propertyID">Mã mặt bằng:</label>
        <input type="text" id="propertyID" name="propertyID" required>

        <!-- Diện tích -->
        <label for="area">Diện tích:</label>
        <input type="number" step="0.01" id="area" name="area" required>

        <!-- Trạng thái -->
        <label for="status">Trạng thái:</label>
        <select id="status" name="status" required>
            <option value="Trống">Trống</option>
            <option value="Hạ tầng">Hạ tầng</option>
            <option value="Đầy đủ">Đầy đủ</option>
        </select>

        <!-- Tầng -->
        <label for="floor">Tầng:</label>
        <select id="floor" name="floor" required>
            <!-- Assuming 15 floors -->
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

        <!-- Loại văn phòng -->
        <label for="propertyType">Loại văn phòng:</label>
        <select id="propertyType" name="propertyType" required>
            <option value="Trọn gói">Trọn gói</option>
            <option value="Cho thuê">Cho thuê</option>
        </select>

        <!-- Mô tả chi tiết -->
        <label for="description">Mô tả chi tiết:</label>
        <textarea id="description" name="description" rows="4" cols="50" required></textarea>

        <!-- Giá cho thuê (vnđ) -->
        <label for="rentalPrice">Giá cho thuê (vnđ):</label>
        <input type="number" step="0.01" id="rentalPrice" name="rentalPrice" required>

        <!-- Ngày bắt đầu -->
        <label for="startDate">Ngày bắt đầu:</label>
        <input type="date" id="startDate" name="startDate" required>

        <!-- Ngày kết thúc -->
        <label for="endDate">Ngày kết thúc:</label>
        <input type="date" id="endDate" name="endDate" required>

        <!-- Nút lưu và hủy -->
        <button type="submit">Lưu</button>
        <button type="reset">Hủy</button>
    </form>
</div>
</body>
</html>
