# 🚀 CampusKart Deployment Guide

## 📋 Pre-Deployment Checklist

### ✅ Backend Requirements
- [ ] MongoDB Atlas account (free tier available)
- [ ] All environment variables configured
- [ ] CORS settings updated for production
- [ ] Google OAuth credentials updated

### ✅ Frontend Requirements
- [ ] Build command working (`npm run build`)
- [ ] Environment variables configured
- [ ] Routing configured for SPA

## 🔧 Step-by-Step Deployment

### 1. Deploy Backend (Render - Recommended)

1. **Create Account**: Go to [render.com](https://render.com) and sign up
2. **Connect GitHub**: Connect your GitHub repository
3. **Create Web Service**:
   - Choose "Web Service"
   - Connect your repository
   - Select the `backend` folder or root (if backend is in root)
   - Set the following:
     - **Name**: `campuskart-backend`
     - **Branch**: `main`
     - **Build Command**: `npm install`
     - **Start Command**: `npm start`
     - **Instance Type**: Free

4. **Environment Variables** (Add these in Render dashboard):
   ```
   MONGO_URI=mongodb+srv://iamshivanggautam:iamshivanggautam@cluster0.jrnnlp4.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0
   GOOGLE_CLIENT_ID=807473090069-f7obrffiql0ns8fj0mh7peu5fef67spi.apps.googleusercontent.com
   GOOGLE_CLIENT_SECRET=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
   SESSION_SECRET=your-super-secret-session-key-12345
   CLIENT_URL=https://your-frontend-domain.netlify.app
   PORT=5000
   CLOUDINARY_CLOUD_NAME=dutdjalxr
   CLOUDINARY_API_KEY=497926614658833
   CLOUDINARY_API_SECRET=pqzjsZ8fWQPkNqWDYER_kd0LQRc
   RAZORPAY_SECRET_KEY=JHB0B9xx6mTn8IHeFMUfe3I5
   NODE_ENV=production
   ```

5. **Deploy**: Click "Create Web Service"
6. **Note the URL**: You'll get a URL like `https://campuskart-backend.onrender.com`

### 2. Deploy Frontend (Netlify - Recommended)

1. **Build Locally First** (Optional but recommended):
   ```bash
   cd frontend
   npm install
   npm run build
   ```

2. **Deploy to Netlify**:
   - Go to [netlify.com](https://netlify.com)
   - Sign up/login
   - Choose "Deploy manually" or "Connect Git repository"

3. **Manual Deploy**:
   - Drag and drop the `dist` folder to Netlify
   - Or use Git integration

4. **Git Integration**:
   - Connect your GitHub repository
   - Set build settings:
     - **Build command**: `npm run build`
     - **Publish directory**: `dist`
     - **Base directory**: `frontend` (if frontend is in a subfolder)

5. **Environment Variables** (Add in Netlify dashboard):
   ```
   VITE_API_URL=https://your-backend-domain.onrender.com
   ```

6. **Custom Domain** (Optional):
   - Go to Site settings > Domain management
   - Add your custom domain

### 3. Update Google OAuth Settings

1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Navigate to APIs & Services > Credentials
3. Edit your OAuth 2.0 Client ID
4. Add your production URLs:
   - **Authorized JavaScript origins**:
     - `https://your-frontend-domain.netlify.app`
   - **Authorized redirect URIs**:
     - `https://your-backend-domain.onrender.com/auth/google/callback`

## 🔄 Alternative Deployment Options

### Backend Alternatives:
1. **Railway**: Similar to Render, easy deployment
2. **Heroku**: Classic choice (no longer free)
3. **DigitalOcean App Platform**: Good performance
4. **AWS EC2**: More complex but powerful

### Frontend Alternatives:
1. **Vercel**: Great for React apps
2. **GitHub Pages**: Free for static sites
3. **Firebase Hosting**: Google's hosting service
4. **AWS S3 + CloudFront**: Scalable solution

## 🛠️ Post-Deployment Tasks

### 1. Test Your Application
- [ ] Backend health check: `https://your-backend.onrender.com/health`
- [ ] Frontend loads properly
- [ ] Authentication works
- [ ] API calls work
- [ ] Image uploads work
- [ ] Chat functionality works

### 2. Set Up Monitoring
- [ ] Set up error tracking (Sentry, LogRocket)
- [ ] Monitor performance
- [ ] Set up alerts for downtime

### 3. Security Checklist
- [ ] HTTPS enabled (automatic with Netlify/Render)
- [ ] Environment variables secured
- [ ] CORS properly configured
- [ ] Rate limiting enabled (if needed)

## 🚨 Common Issues & Solutions

### 1. CORS Errors
**Problem**: Frontend can't connect to backend
**Solution**: Update `CLIENT_URL` in backend environment variables

### 2. Environment Variables Not Working
**Problem**: `undefined` environment variables
**Solution**: Ensure variables are set in deployment platform, not just in `.env` files

### 3. Build Failures
**Problem**: Build fails during deployment
**Solution**: 
- Check Node.js version compatibility
- Ensure all dependencies are in `package.json`
- Test build locally first

### 4. 404 Errors on Page Refresh
**Problem**: React Router routes don't work
**Solution**: Ensure `_redirects` file is in `public` folder with content: `/*    /index.html   200`

## 📱 Mobile Optimization

Your app should work well on mobile devices. If you want to create a PWA:

1. **Add PWA capabilities**:
   ```bash
   npm install vite-plugin-pwa
   ```

2. **Update vite.config.js**:
   ```javascript
   import { VitePWA } from 'vite-plugin-pwa'
   
   export default defineConfig({
     plugins: [
       react(),
       tailwindcss(),
       VitePWA({
         registerType: 'autoUpdate',
         workbox: {
           globPatterns: ['**/*.{js,css,html,ico,png,svg}']
         }
       })
     ]
   })
   ```

## 🎯 Performance Optimization

1. **Image Optimization**: Your Cloudinary setup already handles this
2. **Code Splitting**: Already configured in vite.config.js
3. **Caching**: Handled by deployment platforms
4. **CDN**: Netlify/Vercel provide global CDN

## 🔐 Security Best Practices

1. **Keep secrets secret**: Never commit `.env` files
2. **Use HTTPS**: Enabled by default on modern platforms
3. **Input validation**: Already implemented in your backend
4. **Rate limiting**: Consider adding for production

## 📊 Monitoring & Analytics

Consider adding:
1. **Google Analytics**: For user tracking
2. **Error tracking**: Sentry or Bugsnag
3. **Performance monitoring**: Web Vitals
4. **Uptime monitoring**: Pingdom or UptimeRobot

---

## 🚀 Quick Start Commands

```bash
# Backend deployment preparation
cd backend
npm install
npm start  # Test locally first

# Frontend deployment preparation
cd frontend
npm install
npm run build  # Test build locally
npm run preview  # Preview production build
```

After deployment, your application will be available at:
- **Frontend**: `https://your-app-name.netlify.app`
- **Backend**: `https://your-backend-name.onrender.com`

Remember to update all environment variables with your actual deployed URLs!
