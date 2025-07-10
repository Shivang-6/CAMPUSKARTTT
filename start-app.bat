@echo off
echo Starting CampusKart Application...
echo.

echo Starting Backend Server...
cd "c:\Users\Kamakshi Pandoh\OneDrive\Desktop\shivang\Campuskart\backend"
start "Backend Server" cmd /k "node server.js"

timeout /t 3 /nobreak

echo Starting Frontend Server...
cd "c:\Users\Kamakshi Pandoh\OneDrive\Desktop\shivang\Campuskart\frontend"
start "Frontend Server" cmd /k "npm run dev"

echo.
echo Both servers are starting...
echo Backend: http://localhost:5000
echo Frontend: http://localhost:5173
echo.
pause
