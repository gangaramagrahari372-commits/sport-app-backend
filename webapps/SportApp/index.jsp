<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sports App Management System</title>
    <!-- Google Fonts & Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Poppins', sans-serif; }
    </style>
</head>
<body class="bg-slate-900 text-white min-h-screen flex flex-col justify-between">

    <!-- Navbar -->
    <nav class="flex items-center justify-between px-8 py-5 border-b border-slate-800 bg-slate-900/80 backdrop-blur-md sticky top-0 z-50">
        <div class="flex items-center space-x-3">
            <div class="bg-emerald-500 p-2 rounded-lg">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-slate-900" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z" />
                </svg>
            </div>
            <span class="text-xl font-bold tracking-wider text-emerald-400">SportsManager</span>
        </div>
        <div>
            <a href="login.jsp" class="px-5 py-2.5 rounded-full bg-emerald-500 hover:bg-emerald-400 text-slate-950 font-semibold transition-all duration-300 shadow-lg shadow-emerald-500/20">
                Login
            </a>
        </div>
    </nav>

    <!-- Hero Section -->
    <main class="flex-grow flex flex-col items-center justify-center text-center px-4 py-16 relative overflow-hidden">
        <!-- Background Glow -->
        <div class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-96 h-96 bg-emerald-500/10 rounded-full blur-3xl -z-10"></div>

        <span class="px-4 py-1.5 rounded-full bg-emerald-500/10 border border-emerald-500/20 text-emerald-400 text-sm font-medium mb-6">
            🏆 All-in-One Sports Platform
        </span>

        <h1 class="text-4xl md:text-6xl font-extrabold tracking-tight mb-6 max-w-3xl leading-tight">
            Manage Teams, Matches & <span class="text-transparent bg-clip-text bg-gradient-to-r from-emerald-400 to-teal-200">Players Effortlessly</span>
        </h1>

        <p class="text-slate-400 text-lg max-w-2xl mb-10">
            Welcome to the Sports App Management System. Streamline schedule tracking, team rosters, scores, and tournament analytics in one place.
        </p>

        <!-- Direct Login & Dashboard Action Button -->
        <div class="flex flex-col sm:flex-row items-center gap-4">
            <a href="login.jsp" class="w-full sm:w-auto px-8 py-4 rounded-xl bg-gradient-to-r from-emerald-500 to-teal-500 hover:from-emerald-400 hover:to-teal-400 text-slate-950 font-bold text-lg shadow-xl shadow-emerald-500/25 transition-all duration-300 transform hover:-translate-y-1">
                Go to Login Page &rarr;
            </a>
            <a class="w-full sm:w-auto px-8 py-4 rounded-xl border border-slate-700 bg-slate-800/50 hover:bg-slate-800 text-slate-300 font-semibold text-lg transition-all duration-300">
                View Dashboard
            </a>
        </div>

        <!-- Quick Feature Cards -->
        <div class="grid grid-cols-1 md:grid-cols-3 gap-6 max-w-4xl mt-16 text-left">
            <div class="p-6 rounded-2xl bg-slate-800/40 border border-slate-800 hover:border-slate-700 transition">
                <div class="text-2xl mb-3">🏏</div>
                <h3 class="font-semibold text-emerald-400 mb-2">Cricket & Football</h3>
                <p class="text-slate-400 text-sm">Manage multi-sport matches and scores effortlessly.</p>
            </div>
            <div class="p-6 rounded-2xl bg-slate-800/40 border border-slate-800 hover:border-slate-700 transition">
                <div class="text-2xl mb-3">👥</div>
                <h3 class="font-semibold text-emerald-400 mb-2">Team & Players</h3>
                <p class="text-slate-400 text-sm">Keep player statistics and profiles organized.</p>
            </div>
            <div class="p-6 rounded-2xl bg-slate-800/40 border border-slate-800 hover:border-slate-700 transition">
                <div class="text-2xl mb-3">📊</div>
                <h3 class="font-semibold text-emerald-400 mb-2">Live Scores</h3>
                <p class="text-slate-400 text-sm">Real-time match updates and leaderboard tracking.</p>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="py-6 text-center border-t border-slate-800 text-slate-500 text-sm">
        &copy; 2026 Sports App Management System. All rights reserved.
    </footer>

</body>
</html>