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
            flex-direction: column;
            align-items: center;
            margin: 0;
            padding: 20px;
            background-color: #f0f0f0;
        }

        .form-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 50%;
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
    <h2>Quản lý mặt bằng</h2>
    <form action="/home?action=create" method="POST">
        <label for="propertyID">Mã mặt bằng:</label>
        <input type="text" id="propertyID" name="id" required>

        <label for="area">Diện tích:</label>
        <input type="number" step="0.01" id="area" name="area" required>

        <label for="status">Trạng thái:</label>
        <select id="status" name="status" required>
            <option value="Trống">Trống</option>
            <option value="Hạ tầng">Hạ tầng</option>
            <option value="Đầy đủ">Đầy đủ</option>
        </select>


        <label for="floor">Tầng:</label>
        <select id="floor" name="floor" required>

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


        <label for="propertyType">Loại văn phòng:</label>
        <select id="propertyType" name="type" required>
            <option value="Trọn gói">Trọn gói</option>
            <option value="Cho thuê">Cho thuê</option>
        </select>


        <label for="description">Mô tả chi tiết:</label>
        <textarea id="description" name="description" rows="4" cols="50" required></textarea>


        <label for="rentalPrice">Giá cho thuê (vnđ):</label>
        <input type="number" step="0.01" id="rentalPrice" name="rentalPrice" required>


        <label for="startDate">Ngày bắt đầu:</label>
        <input type="date" id="startDate" name="startDate" required>


        <label for="endDate">Ngày kết thúc:</label>
        <input type="date" id="endDate" name="endDate" required>

        <button type="submit">Lưu</button>
        <button type="reset">Hủy</button>
    </form>
</div>
</body>
</html>
