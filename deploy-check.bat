@echo off
echo 🚀 CampusKart Deployment Helper
echo ================================

echo 1. Testing Backend...
cd backend
start /b npm start
timeout /t 5 /nobreak >nul
taskkill /f /im node.exe >nul 2>&1

echo 2. Testing Frontend Build...
cd ..\frontend
npm run build
if %errorlevel% neq 0 (
    echo ❌ Frontend build failed
    pause
    exit /b 1
)

echo 3. Checking Environment Variables...
if exist ".env" (
    echo ✅ Frontend .env file exists
) else (
    echo ❌ Frontend .env file missing
)

if exist ".env.production" (
    echo ✅ Frontend .env.production file exists
) else (
    echo ⚠️  Frontend .env.production file missing (optional)
)

cd ..\backend
if exist ".env" (
    echo ✅ Backend .env file exists
) else (
    echo ❌ Backend .env file missing
)

echo.
echo 🎉 Pre-deployment checks complete!
echo.
echo 📋 Next Steps:
echo 1. Push your code to GitHub
echo 2. Deploy backend to Render/Railway/Heroku
echo 3. Deploy frontend to Netlify/Vercel
echo 4. Update environment variables with production URLs
echo 5. Test your deployed application
echo.
echo 📖 See DEPLOYMENT_GUIDE.md for detailed instructions
pause
