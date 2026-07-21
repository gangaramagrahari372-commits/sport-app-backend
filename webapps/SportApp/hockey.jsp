<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hockey Dashboard</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        body {
            /* Beautiful online hockey turf/stadium wallpaper */
           background: linear-gradient(rgba(0, 0, 0, 0.65), rgba(0, 0, 0, 0.75)), 
            url('image/hockey.png') no-repeat center center fixed;
background-size: cover;
            color: white;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        /* Dashboard Header */
        .title-container {
            text-align: center;
            margin: 40px 0;
        }
        .title-container h1 {
            font-size: 38px;
            text-transform: uppercase;
            letter-spacing: 2px;
            text-shadow: 2px 4px 10px rgba(0, 0, 0, 0.5);
            border-bottom: 4px solid #e67e22; /* Hockey Orange Theme */
            padding-bottom: 10px;
            display: inline-block;
        }
        /* Main Glassmorphism Card Box */
        .hockey-box {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            padding: 40px;
            border-radius: 16px;
            width: 90%;
            max-width: 600px;
            text-align: center;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.3);
        }
        .hockey-box p {
            font-size: 18px;
            margin-bottom: 30px;
            opacity: 0.9;
        }
        /* Action Buttons Area */
        .btn-group {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 15px;
            margin-bottom: 25px;
        }
        .btn {
            background: #e67e22;
            color: white;
            text-decoration: none;
            padding: 14px 20px;
            border-radius: 8px;
            font-weight: bold;
            font-size: 16px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(230, 126, 34, 0.3);
        }
        .btn:hover {
            background: #d35400;
            transform: translateY(-3px);
            box-shadow: 0 6px 20px rgba(211, 84, 0, 0.5);
        }
        /* Back Button Style */
        .back-btn {
            display: inline-block;
            background: rgba(255, 255, 255, 0.2);
            color: white;
            text-decoration: none;
            padding: 10px 25px;
            border-radius: 30px;
            font-size: 14px;
            transition: 0.3s;
            border: 1px solid rgba(255, 255, 255, 0.3);
        }
        .back-btn:hover {
            background: white;
            color: #333;
        }
    </style>
</head>
<body>

    <div class="title-container">
        <h1>🏑 Hockey Dashboard</h1>
    </div>

    <div class="hockey-box">
        <p>Manage hockey clubs, player positions, match fixtures, goals scored, and penalty statistics.</p>
        
        <!-- Action Buttons -->
        <div class="btn-group">
            <a href="team.jsp" class="btn">View Teams</a>
            <a href="player.jsp" class="btn">Manage Players</a>
        </div>

        <!-- Back Button jo dasbord.jsp par le jayega -->
        <a href="dasbord.jsp" class="back-btn">← Back to Main Dashboard</a>
    </div>

</body>
</html>