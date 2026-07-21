<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sports Manager Login</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Poppins', sans-serif; }
        body {
            background: linear-gradient(rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0.85)), url('image/login.png') no-repeat center center fixed;
            background-size: cover; min-height: 100vh; display: flex; justify-content: center; align-items: center; padding: 20px;
        }
        .form-container {
            background: rgba(255, 255, 255, 0.08); backdrop-filter: blur(12px); -webkit-backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.15); padding: 40px; border-radius: 20px; width: 100%; max-width: 420px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.5); text-align: center;
        }
        h2 { color: #ffffff; font-size: 2rem; font-weight: 700; margin-bottom: 30px; text-transform: uppercase; letter-spacing: 1px; }
        .form-group { display: flex; flex-direction: column; text-align: left; margin-bottom: 20px; }
        label { color: #ffffff; font-weight: 500; margin-bottom: 6px; font-size: 0.95rem; }
        input {
            padding: 12px 15px; border-radius: 8px; border: 1px solid rgba(255, 255, 255, 0.2);
            background: rgba(255, 255, 255, 0.9); color: #111111; font-size: 1rem; outline: none;
        }
        input:focus { border-color: #007bff; box-shadow: 0 0 8px rgba(0, 123, 255, 0.4); }
        .btn-submit {
            width: 100%; padding: 12px; background: linear-gradient(135deg, #007bff, #0056b3);
            color: white; border: none; border-radius: 8px; font-size: 1.1rem; font-weight: 600;
            cursor: pointer; letter-spacing: 1px; text-transform: uppercase; margin-top: 10px; transition: all 0.3s ease;
        }
        .btn-submit:hover { transform: translateY(-2px); box-shadow: 0 6px 15px rgba(0, 123, 255, 0.4); }
        .link-register { display: inline-block; margin-top: 20px; color: #a0a0a0; text-decoration: none; font-size: 0.95rem; }
        .link-register:hover { color: #ffffff; text-decoration: underline; }
        .error-msg { color: #ff6b6b; font-weight: 500; margin-bottom: 15px; font-size: 0.95rem; }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Sports Manager Login</h2>
        
        <%-- Agar login galat ho to backend se error message dikhane ke liye --%>
        <% if (request.getAttribute("error") != null) { %>
            <div class="error-msg" style="color: red; text-align: center: margin-bottom: 30px; font-weight: bold;"><%= request.getAttribute("error") %></div>
        <% } %>

        <form action="LoginServlet" method="POST">
            <div class="form-group">
                <label>Username</label>
                <input type="text" name="username" required placeholder="Enter username">
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" required placeholder="Enter password">
            </div>
            <button type="submit" class="btn-submit">Login</button>
        </form>
        <a href="register.jsp" class="link-register">Create New Account</a>
    </div>
</body>
</html>