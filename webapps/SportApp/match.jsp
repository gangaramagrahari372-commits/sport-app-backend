<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.Match" %> <!-- Agar aapki model class ka naam alag hai toh change kar lena -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Match Details</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            /* Premium Dark Stadium/Sports theme overlay ke sath */
            background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.85)), 
                        url('image/match.png') no-repeat center center fixed;
            background-size: cover;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 40px 20px;
        }

        /* Glassmorphism Main Dashboard Wrapper */
        .dashboard-container {
            background: rgba(255, 255, 255, 0.07);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.15);
            padding: 35px;
            border-radius: 20px;
            width: 100%;
            max-width: 750px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.5);
            text-align: center;
        }

        h2 {
            color: #ffffff;
            font-size: 2.2rem;
            font-weight: 700;
            margin-bottom: 30px;
            text-transform: uppercase;
            letter-spacing: 2px;
            text-shadow: 0 4px 10px rgba(0,0,0,0.4);
            border-bottom: 2px solid #28a745; /* Green Accent for Match feeling */
            display: inline-block;
            padding-bottom: 6px;
        }

        /* Form Layout Style */
        .match-form {
            display: flex;
            flex-direction: column;
            gap: 18px;
            max-width: 480px;
            margin: 0 auto 40px auto;
            text-align: left;
        }

        .form-group {
            display: flex;
            align-items: center;
        }

        .form-group label {
            width: 110px;
            color: #ffffff;
            font-weight: 500;
            font-size: 1rem;
        }

        .form-group input {
            flex: 1;
            padding: 10px 15px;
            border-radius: 8px;
            border: 1px solid rgba(255, 255, 255, 0.2);
            background: rgba(255, 255, 255, 0.9);
            color: #111111;
            font-size: 1rem;
            font-weight: 500;
            outline: none;
            transition: border-color 0.3s ease;
        }

        .form-group input:focus {
            border-color: #28a745;
            box-shadow: 0 0 8px rgba(40, 167, 69, 0.4);
        }

        /* Premium Save Button */
        .btn-submit {
            padding: 12px;
            background: linear-gradient(135deg, #28a745, #1e7e34);
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 1.1rem;
            font-weight: 600;
            cursor: pointer;
            letter-spacing: 1px;
            text-transform: uppercase;
            transition: all 0.3s ease;
            box-shadow: 0 4px 10px rgba(40, 167, 69, 0.3);
            margin-top: 5px;
        }

        .btn-submit:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(40, 167, 69, 0.5);
        }

        /* Modern Table Design */
        .table-wrapper {
            width: 100%;
            overflow-x: auto;
            margin-top: 10px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: rgba(255, 255, 255, 0.03);
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 8px 16px rgba(0,0,0,0.3);
        }

        th, td {
            padding: 14px 16px;
            text-align: center;
        }

        th {
            background: linear-gradient(135deg, #212529, #343a40);
            color: #28a745;
            font-weight: 600;
            text-transform: uppercase;
            font-size: 0.9rem;
            letter-spacing: 1px;
            border-bottom: 2px solid rgba(255,255,255,0.1);
        }

        td {
            color: #e0e0e0;
            font-size: 1rem;
            font-weight: 500;
            border-bottom: 1px solid rgba(255, 255, 255, 0.08);
        }

        tr:hover td {
            background: rgba(255, 255, 255, 0.07);
            color: #ffffff;
        }

        tr:last-child td {
            border-bottom: none;
        }

        .no-data {
            color: #ffc107;
            font-style: italic;
            padding: 20px;
        }
    </style>
</head>
<body>

    <div class="dashboard-container">
        <h2>Match Details</h2>
        
        <!-- Form Section -->
        <!-- Sahi servlet url mapping check kar lena (jaise MatchServlet ya jo bhi aapka hai) -->
        <form action="MatchServlet" method="POST" class="match-form">
            <div class="form-group">
                <label for="team1">Team 1</label>
                <input type="text" id="team1" name="team1" placeholder="Enter Team 1 Name" required>
            </div>
            
            <div class="form-group">
                <label for="team2">Team 2</label>
                <input type="text" id="team2" name="team2" placeholder="Enter Team 2 Name" required>
            </div>
            
            <div class="form-group">
                <label for="matchDate">Date</label>
                <input type="date" id="matchDate" name="matchDate" required>
            </div>
            
            <button type="submit" class="btn-submit">Save Match</button>
        </form>

        <!-- Dynamic Table Section -->
        <div class="table-wrapper">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Team 1</th>
                        <th>Team 2</th>
                        <th>Date</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        // Controller/Servlet se aane waali list handle ki ja rahi hai
                        List<Match> matchList = (List<Match>) request.getAttribute("matchList");
                        
                        if (matchList != null && !matchList.isEmpty()) {
                            for (Match m : matchList) {
                    %>
                                <tr>
                                    <td><%= m.getId() %></td>
                                    <td><%= m.getTeam1() %></td>
                                    <td><%= m.getTeam2() %></td>
                                    <td><%= m.getMatchDate() %></td>
                                </tr>
                    <% 
                            }
                        } else { 
                    %>
                            <tr>
                                <td colspan="4" class="no-data">No matches scheduled yet!</td>
                            </tr>
                    <% 
                        } 
                    %>
                </tbody>
            </table>
                <a href="dasbord.jsp" class="back-btn">← Back to Main Dashboard</a>
        </div>
    </div>

</body>
</html>