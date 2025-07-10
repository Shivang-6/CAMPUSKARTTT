# CampusKart Troubleshooting Guide

## Current Issues and Solutions

### 1. 403 Forbidden Error on /auth/login/success
**Issue**: Session/authentication not working properly
**Solution**:
- Ensure MongoDB is running locally or update MONGO_URI in backend/.env
- Check if session store is properly configured
- Verify cookies are being set correctly

### 2. 500 Internal Server Error on /products
**Issue**: Server error when fetching products
**Solution**:
- Check MongoDB connection
- Verify Product model and Review model are properly imported
- Check database has some products

### 3. Invalid Base64 URL Error
**Issue**: Malformed image URLs causing browser errors
**Solution**:
- Fixed ImageGallery component to filter out invalid images
- Added proper error handling for image loading
- Ensure Cloudinary URLs are properly formatted

## Steps to Fix:

### Step 1: Start MongoDB
```bash
# If using local MongoDB
mongod
```

### Step 2: Check Environment Variables
- Backend: `backend/.env` should have all required variables
- Frontend: `frontend/.env` should have VITE_API_URL=http://localhost:5000

### Step 3: Install Dependencies
```bash
# Backend
cd backend
npm install

# Frontend
cd frontend
npm install
```

### Step 4: Start Servers
```bash
# Backend (Terminal 1)
cd backend
node server.js

# Frontend (Terminal 2)
cd frontend
npm run dev
```

### Step 5: Test Endpoints
- Backend health: http://localhost:5000/health
- Backend test: http://localhost:5000/test
- Frontend: http://localhost:5173

## Common Problems:

1. **MongoDB Connection**: Ensure MongoDB is running and accessible
2. **CORS Issues**: Already configured in server.js
3. **Session Issues**: Using connect-mongo for session storage
4. **Image Loading**: Added proper error handling for images

## Debug Steps:

1. Check browser console for errors
2. Check backend server logs
3. Verify environment variables are loaded
4. Test individual API endpoints
5. Check network tab in browser dev tools
