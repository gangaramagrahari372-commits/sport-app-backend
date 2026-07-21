<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Registration</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Poppins', sans-serif; }
        body {
            background: linear-gradient(rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0.85)), url('image/register.png') no-repeat center center fixed;
            background-size: cover; min-height: 100vh; display: flex; justify-content: center; align-items: center; padding: 20px;
        }
        .form-container {
            background: rgba(255, 255, 255, 0.08); backdrop-filter: blur(12px); -webkit-backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.15); padding: 35px; border-radius: 20px; width: 100%; max-width: 450px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.5); text-align: center;
        }
        h2 { color: #ffffff; font-size: 2rem; font-weight: 700; margin-bottom: 25px; text-transform: uppercase; letter-spacing: 2px; }
        .form-group { display: flex; flex-direction: column; text-align: left; margin-bottom: 15px; }
        label { color: #ffffff; font-weight: 500; margin-bottom: 5px; font-size: 0.95rem; }
        input {
            padding: 10px 15px; border-radius: 8px; border: 1px solid rgba(255, 255, 255, 0.2);
            background: rgba(255, 255, 255, 0.9); color: #111111; font-size: 1rem; font-weight: 500; outline: none;
        }
        input:focus { border-color: #007bff; box-shadow: 0 0 8px rgba(0, 123, 255, 0.4); }
        .btn-submit {
            width: 100%; padding: 12px; background: linear-gradient(135deg, #007bff, #0056b3);
            color: white; border: none; border-radius: 8px; font-size: 1.1rem; font-weight: 600;
            cursor: pointer; letter-spacing: 1px; text-transform: uppercase; margin-top: 15px; transition: all 0.3s ease;
        }
        .btn-submit:hover { transform: translateY(-2px); box-shadow: 0 6px 15px rgba(0, 123, 255, 0.4); }
        .link-back { display: inline-block; margin-top: 20px; color: #a0a0a0; text-decoration: none; font-size: 0.95rem; transition: color 0.2s; }
        .link-back:hover { color: #ffffff; }
    </style>
    <script>
        function validateForm() {
            var age = parseInt(document.getElementById("age").value);
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirmPassword").value;

            // Age criteria restriction (8-60 years)
            if (age < 8 || age > 60) {
                alert("Age must be between 8 and 60 years!");
                return false;
            }
            // Password matching check
            if (password !== confirmPassword) {
                alert("Passwords do not match!");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <div class="form-container">
        <h2>User Registration</h2>
        <form action="RegisterServlet" method="POST" onsubmit="return validateForm()">
            <div class="form-group">
                <label>Full Name</label>
                <input type="text" name="name" required placeholder="Enter your name">
            </div>
            <div class="form-group">
                <label>Age</label>
                <input type="number" id="age" name="age" required placeholder="Enter age (8-60)">
            </div>
            <div class="form-group">
                <label>Username</label>
                <input type="text" name="username" required placeholder="Create username">
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" id="password" name="password" required placeholder="Create password">
            </div>
            <div class="form-group">
                <label>Confirm Password</label>
                <input type="password" id="confirmPassword" required placeholder="Confirm your password">
            </div>
            <button type="submit" class="btn-submit">Register</button>
        </form>
        <a href="login.jsp" class="link-back">Back To Login</a>
    </div>
</body>
</html>