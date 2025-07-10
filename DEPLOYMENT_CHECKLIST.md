# 📋 CampusKart Deployment Checklist

## ✅ Pre-Deployment (Complete these first)

### Backend Preparation
- [ ] Updated `package.json` with proper name and engine requirements
- [ ] Added production-ready server configuration
- [ ] Created `.env` file with all required variables
- [ ] Tested backend locally (`npm start`)
- [ ] MongoDB Atlas connection string ready
- [ ] Cloudinary credentials verified
- [ ] Google OAuth credentials ready

### Frontend Preparation
- [ ] Updated `package.json` with proper name and build scripts
- [ ] Enhanced `vite.config.js` with production optimizations
- [ ] Created `.env.production` file
- [ ] Tested build locally (`npm run build`)
- [ ] Verified `_redirects` file exists for SPA routing
- [ ] All dependencies installed and working

## 🚀 Deployment Steps

### Step 1: Deploy Backend (Render)
- [ ] Create Render account
- [ ] Connect GitHub repository
- [ ] Create Web Service
- [ ] Configure build/start commands
- [ ] Add all environment variables
- [ ] Deploy and test endpoints

### Step 2: Deploy Frontend (Netlify)
- [ ] Create Netlify account
- [ ] Connect GitHub repository or drag & drop dist folder
- [ ] Configure build settings
- [ ] Add `VITE_API_URL` environment variable
- [ ] Deploy and test

### Step 3: Update Configurations
- [ ] Update Google OAuth redirect URLs
- [ ] Update `CLIENT_URL` in backend env vars
- [ ] Update `VITE_API_URL` in frontend env vars
- [ ] Test authentication flow

## 🧪 Post-Deployment Testing

### Backend Tests
- [ ] Health check: `https://your-backend.onrender.com/health`
- [ ] Test endpoint: `https://your-backend.onrender.com/test`
- [ ] Products API: `https://your-backend.onrender.com/products`
- [ ] Auth endpoints working

### Frontend Tests
- [ ] Site loads properly
- [ ] All pages accessible
- [ ] Authentication works (Google OAuth)
- [ ] Product listing shows
- [ ] Image uploads work
- [ ] Chat functionality works
- [ ] Mobile responsive

### Integration Tests
- [ ] Frontend can connect to backend
- [ ] No CORS errors
- [ ] Database operations work
- [ ] File uploads to Cloudinary work
- [ ] Real-time chat works

## 🔧 Common Issues & Solutions

### Issue: CORS Errors
**Solution**: Update `CLIENT_URL` in backend environment variables

### Issue: Environment Variables Not Working
**Solution**: Ensure variables are set in deployment platform, restart services

### Issue: Build Failures
**Solution**: Check Node.js version, verify all dependencies in package.json

### Issue: 404 on Page Refresh
**Solution**: Ensure `_redirects` file is in place for SPA routing

### Issue: Images Not Loading
**Solution**: Verify Cloudinary credentials and test upload endpoints

## 📱 Performance Optimization

### Completed
- [ ] Code splitting configured
- [ ] Image optimization with Cloudinary
- [ ] Build optimizations in vite.config.js
- [ ] Error handling for failed requests

### Optional Enhancements
- [ ] Add PWA capabilities
- [ ] Set up error tracking (Sentry)
- [ ] Add performance monitoring
- [ ] Set up uptime monitoring
- [ ] Add Google Analytics

## 🎯 Your Deployment URLs

Fill these in after deployment:

**Backend URL**: `https://your-backend-name.onrender.com`
**Frontend URL**: `https://your-app-name.netlify.app`

## 📞 Support

If you encounter issues:
1. Check the deployment logs on your platform
2. Verify all environment variables are set
3. Test endpoints individually
4. Check browser console for errors
5. Review the detailed DEPLOYMENT_GUIDE.md

---

**🎉 Congratulations!** Once all items are checked, your CampusKart application will be live and ready for users!
