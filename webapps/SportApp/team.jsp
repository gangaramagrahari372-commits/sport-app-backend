<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Team Details</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        body {
    /* Blue gradient ko poori tarah hata kar sirf local cricket image lagayi hai */
    background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.7)), 
                url('image/team.png') no-repeat center center fixed;
    background-size: cover;
    min-height: 100vh;
    color: #333;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 40px 20px;
}

        /* Container Box */
        .wrapper {
            background: powderblue;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
            width: 100%;
            max-width: 700px;
            padding: 35px;
            text-align: center;
            margin-bottom: 20px;
        }

        h2 {
            color: #1e3c72;
            font-size: 28px;
            margin-bottom: 30px;
            text-transform: uppercase;
            letter-spacing: 1px;
            border-bottom: 3px solid #2a5298;
            padding-bottom: 8px;
            display: inline-block;
        }

        /* Form Layout */
        .form-group {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
            text-align: left;
        }
        .form-group label {
            flex: 0 0 130px;
            font-weight: bold;
            color: #555;
            font-size: 16px;
        }
        .form-control {
            flex: 1;
            padding: 12px 15px;
            border: 2px solid #c07272;
            border-radius: 8px;
            font-size: 15px;
            transition: 0.3s;
            outline: none;
        }
        .form-control:focus {
            border-color: #2a5298;
            box-shadow: 0 0 8px rgba(42, 82, 152, 0.2);
        }

        /* Buttons */
        .btn-save {
            background: #2ecc71;
            color: white;
            border: none;
            padding: 12px 30px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
            margin-top: 10px;
            margin-bottom: 25px;
            transition: 0.3s;
            box-shadow: 0 4px 15px rgba(46, 204, 113, 0.2);
        }
        .btn-save:hover {
            background: #27ae60;
            transform: translateY(-2px);
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0,0,0,0.05);
        }
        th, td {
            padding: 12px 15px;
            text-align: center;
        }
        th {
            background-color: #1e3c72;
            color: white;
            font-weight: 600;
            text-transform: uppercase;
            font-size: 14px;
        }
        tr:nth-child(even) {
            background-color: #d0d3d6;
        }
        tr:nth-child(odd) {
            background-color: #fdf7f7;
        }
        tr:hover {
            background-color: #7daaf1;
        }
        td {
            border-bottom: 1px solid #ebe0e0;
            color: #555;
            font-size: 15px;
        }

        /* Back Button */
        .back-btn {
            display: inline-block;
            margin-top: 25px;
            background: #e74c3c;
            color: white;
            text-decoration: none;
            padding: 10px 25px;
            border-radius: 30px;
            font-weight: bold;
            font-size: 14px;
            transition: 0.3s;
        }
        .back-btn:hover {
            background: #c0392b;
            box-shadow: 0 4px 10px rgba(231, 76, 60, 0.3);
        }
    </style>
</head>
<body>

    <div class="wrapper">
        <h2>Team Details</h2>
        
        <!-- Form Tag (Aap apna actual action aur method yahan check kar lena) -->
        <form action="TeamServlet" method="POST">
            <div class="form-group">
                <label>Team Name</label>
                <input type="text" name="teamName" class="form-control" placeholder="Enter Team Name" required>
            </div>
            
            <div class="form-group">
                <label>Sport</label>
                <select name="sport" class="form-control">
                    <option value="Cricket">Cricket</option>
                    <option value="Football">Football</option>
                    <option value="Hockey">Hockey</option>
                </select>
            </div>
            
            <button type="submit" class="btn-save">Save Team</button>
        </form>

        <!-- View Data Table -->
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Team</th>
                    <th>Sport</th>
                </tr>
            </thead>
            <tbody>
                <!-- Yahan aapka dynamic Java code (while loop/jstl) aayega jo database se rows fetch karta hai. Demo ke liye niche solid rows hain: -->
                <tr>
                    <td>1</td>
                    <td>Team Alpha</td>
                    <td>Cricket</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Team Striker</td>
                    <td>Football</td>
                </tr>
            </tbody>
        </table>

        <!-- Back Button -->
        <a href="dasbord.jsp" class="back-btn">← Back to Dashboard</a>
    </div>

</body>
</html>