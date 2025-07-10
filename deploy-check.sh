#!/bin/bash

# CampusKart Deployment Script

echo "🚀 CampusKart Deployment Helper"
echo "================================"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}1. Testing Backend...${NC}"
cd backend
if npm start &
then
    echo -e "${GREEN}✅ Backend can start${NC}"
    # Kill the background process
    pkill -f "node server.js"
else
    echo -e "${RED}❌ Backend failed to start${NC}"
    exit 1
fi

echo -e "${YELLOW}2. Testing Frontend Build...${NC}"
cd ../frontend
if npm run build
then
    echo -e "${GREEN}✅ Frontend build successful${NC}"
else
    echo -e "${RED}❌ Frontend build failed${NC}"
    exit 1
fi

echo -e "${YELLOW}3. Checking Environment Variables...${NC}"
if [ -f ".env" ]; then
    echo -e "${GREEN}✅ Frontend .env file exists${NC}"
else
    echo -e "${RED}❌ Frontend .env file missing${NC}"
fi

if [ -f ".env.production" ]; then
    echo -e "${GREEN}✅ Frontend .env.production file exists${NC}"
else
    echo -e "${YELLOW}⚠️  Frontend .env.production file missing (optional)${NC}"
fi

cd ../backend
if [ -f ".env" ]; then
    echo -e "${GREEN}✅ Backend .env file exists${NC}"
else
    echo -e "${RED}❌ Backend .env file missing${NC}"
fi

echo -e "${GREEN}🎉 Pre-deployment checks complete!${NC}"
echo ""
echo "📋 Next Steps:"
echo "1. Push your code to GitHub"
echo "2. Deploy backend to Render/Railway/Heroku"
echo "3. Deploy frontend to Netlify/Vercel"
echo "4. Update environment variables with production URLs"
echo "5. Test your deployed application"
echo ""
echo "📖 See DEPLOYMENT_GUIDE.md for detailed instructions"
