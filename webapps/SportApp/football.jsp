<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Football Dashboard</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        body {
            /* Beautiful online football stadium wallpaper */
            background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.7)), 
            url('image/football.png') no-repeat center center fixed;
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
            border-bottom: 4px solid #2ecc71;
            padding-bottom: 10px;
            display: inline-block;
        }
        /* Main Glassmorphism Card Box */
        .football-box {
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
        .football-box p {
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
            background: #2ecc71;
            color: white;
            text-decoration: none;
            padding: 14px 20px;
            border-radius: 8px;
            font-weight: bold;
            font-size: 16px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(46, 204, 113, 0.3);
        }
        .btn:hover {
            background: #27ae60;
            transform: translateY(-3px);
            box-shadow: 0 6px 20px rgba(46, 204, 113, 0.5);
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
        <h1>⚽ Football Dashboard</h1>
    </div>

    <div class="football-box">
        <p>Manage football teams, players lineups, match results, and live tournament statistics.</p>
        
        <!-- Aapke features ke buttons -->
        <div class="btn-group">
            <a href="team.jsp" class="btn">View Teams</a>
            <a href="player.jsp" class="btn">Manage Players</a>
        </div>

        <!-- Back Button jo dasbord.jsp pr le jayega -->
        <a href="dasbord.jsp" class="back-btn">← Back to Main Dashboard</a>
    </div>

</body>
</html>
