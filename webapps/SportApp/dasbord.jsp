<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sports Management Dashboard</title>
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
            url('image/dasbord.png') no-repeat center center fixed;
            background-size: cover;
            color: white;
            min-height: 100vh;
            display: flex;
            flex-direction: column; /* Fixed: Dashboard top-to-bottom layout me rahega */
        }
        /* Header Navigation */
        .header {
            background: linear-gradient(135deg, #1e3c72 0%, #88b314 100%);
            color: white;
            padding: 15px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 15px rgba(0,0,0,0.3);
            width: 100%;
        }
        .header h1 {
            font-size: 24px;
            letter-spacing: 1px;
        }
        .logout-btn {
            background-color: #ff4757;
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-weight: bold;
            transition: 0.3s;
        }
        .logout-btn:hover {
            background-color: #ff6b81;
            box-shadow: 0 4px 10px rgba(255, 71, 87, 0.4);
        }
        /* Main Container */
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 40px auto;
            padding: 0 20px;
        }
        .welcome-text {
            text-align: center;
            margin-bottom: 40px;
            font-size: 32px;
            color: #ffffff; /* Improved contrast over dark bg */
            text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
        }
        /* Grid Layout for Cards (Left to Right) */
        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 25px;
        }
        /* Beautiful Dashboard Cards */
        .card {
            border-radius: 12px;
            padding: 25px 20px;
            text-align: center;
            text-decoration: none;
            color: white;
            box-shadow: 0 8px 20px rgba(0,0,0,0.3);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            display: flex;
            flex-direction: column; /* Fixed: Text and Subtext stack vertically */
            justify-content: center;
            align-items: center;
            min-height: 140px;
        }
        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 12px 25px rgba(0,0,0,0.4);
        }
        .card span {
            font-size: 22px;
            font-weight: bold;
            letter-spacing: 0.5px;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.2);
        }
        /* Different Colors for Different Sports/Modules */
        .cricket { background: linear-gradient(135deg, #3b7515, #c2831e); }
        .football { background: linear-gradient(135deg, #1b1747, #27ae60); }
        .hockey { background: linear-gradient(135deg, #abad26, #d35400); }
        .teams { background: linear-gradient(135deg, #ad7ac2, #8e44ad); }
        .players { background: linear-gradient(135deg, #8cb6d1, #2980b9); }
        .matches { background: linear-gradient(135deg, #86b1a8, #16a085); }
        .score { background: linear-gradient(135deg, #d18279, #c0392b); }
        
        .card-subtext {
            font-size: 13px;
            font-weight: 500;
            opacity: 0.9;
            margin-top: 8px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
    </style>
</head>
<body>

    <!-- Top Navigation Bar -->
    <div class="header">
        <h1>🏆 Sports Management System</h1>
        <a href="logout.jsp" class="logout-btn">Logout</a>
    </div>

    <!-- Main Content Area -->
    <div class="container">
        <h2 class="welcome-text">Welcome to Admin Dashboard</h2>
        
        <div class="grid">
            <!-- Cricket Card -->
            <a href="cricket.jsp" class="card cricket">
                <span>Cricket</span>
                <div class="card-subtext">Manage Cricket Data</div>
            </a>

            <!-- Football Card -->
            <a href="football.jsp" class="card football">
                <span>Football</span>
                <div class="card-subtext">Manage Football Data</div>
            </a>

            <!-- Hockey Card -->
            <a href="hockey.jsp" class="card hockey">
                <span>Hockey</span>
                <div class="card-subtext">Manage Hockey Data</div>
            </a>

            <!-- Teams Card -->
            <a href="team.jsp" class="card teams">
                <span>Teams</span>
                <div class="card-subtext">View & Edit Teams</div>
            </a>

            <!-- Players Card -->
            <a href="player.jsp" class="card players">
                <span>Players</span>
                <div class="card-subtext">Manage All Players</div>
            </a>

            <!-- Matches Card -->
            <a href="match.jsp" class="card matches">
                <span>Matches</span>
                <div class="card-subtext">Schedule Matches</div>
            </a>

            <!-- Score Card -->
            <a href="score.jsp" class="card score">
                <span>Score Board</span>
                <div class="card-subtext">Live Scores & Standings</div>
            </a>
        </div>
    </div>

</body>
</html>