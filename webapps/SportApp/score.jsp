<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.Team" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Score Board</title>
    <style>
        /* Google Fonts se modern font load kiya */
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            /* Premium Dark Sports Background overlay ke sath */
            background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.85)), 
                        url('image/score.png') no-repeat center center fixed;
            background-size: cover;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        /* Glassmorphism Effect Container */
        .score-container {
            background: rgba(255, 255, 255, 0.08);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.15);
            padding: 40px;
            border-radius: 20px;
            width: 100%;
            max-width: 600px;
            text-align: center;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.6);
        }

        h2 {
            color: #ffffff;
            font-size: 2.2rem;
            font-weight: 700;
            margin-bottom: 30px;
            text-transform: uppercase;
            letter-spacing: 3px;
            text-shadow: 0 4px 10px rgba(0,0,0,0.5);
            border-bottom: 2px solid #007bff;
            display: inline-block;
            padding-bottom: 8px;
        }

        /* Responsive & Modern Table Design */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 35px;
            background: rgba(255, 255, 255, 0.03);
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
        }

        th, td {
            padding: 16px 20px;
            text-align: center;
        }

        th {
            background: linear-gradient(135deg, #007bff, #0056b3);
            color: white;
            font-weight: 600;
            text-transform: uppercase;
            font-size: 0.95rem;
            letter-spacing: 1px;
        }

        td {
            color: #e8e8e8;
            font-size: 1.1rem;
            border-bottom: 1px solid rgba(255, 255, 255, 0.08);
            font-weight: 500;
            transition: all 0.2s ease;
        }

        /* Hover effect rows par */
        tr:hover td {
            background: rgba(255, 255, 255, 0.08);
            color: #ffffff;
        }

        tr:last-child td {
            border-bottom: none;
        }

        /* No Data Message Styling */
        .no-data {
            color: #ffc107;
            font-style: italic;
            padding: 20px;
            font-size: 1.1rem;
        }

        /* Back Button Design */
        .btn-back {
            display: inline-block;
            padding: 12px 35px;
            background: transparent;
            color: #ffffff;
            border: 2px solid #ffffff;
            text-decoration: none;
            font-weight: 600;
            border-radius: 50px;
            transition: all 0.3s ease;
            text-transform: uppercase;
            font-size: 0.9rem;
            letter-spacing: 1px;
            cursor: pointer;
        }

        .btn-back:hover {
            background: #ffffff;
            color: #111111;
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(255, 255, 255, 0.4);
        }
    </style>
</head>
<body>

    <div class="score-container">
        <h2>Score Board</h2>
        
        <table>
            <thead>
                <tr>
                    <th>Team Name</th>
                    <th>Sport Type</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    // Servlet se bheji gayi list ko nikal rahe hain
                    List<Team> teamList = (List<Team>) request.getAttribute("teamList");
                    
                    if (teamList != null && !teamList.isEmpty()) {
                        // Loop chala kar saari teams ko display kar rahe hain
                        for (Team t : teamList) {
                %>
                            <tr>
                                <td><%= t.getTeamName() %></td>
                                <td><%= t.getSport() %></td> 
                            </tr>
                <% 
                        }
                    } else { 
                %>
                        <tr>
                            <td colspan="2" class="no-data">No teams registered yet!</td>
                        </tr>
                <% 
                    } 
                %>
            </tbody>
        </table>
        
        <a href="team.jsp" class="btn-back">Back</a>
    </div>

</body>
</html>