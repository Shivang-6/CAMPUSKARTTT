# CampusKart Backend

## Environment Variables Required

Copy these to your deployment platform:

```
MONGO_URI=mongodb+srv://iamshivanggautam:iamshivanggautam@cluster0.jrnnlp4.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0
GOOGLE_CLIENT_ID=807473090069-f7obrffiql0ns8fj0mh7peu5fef67spi.apps.googleusercontent.com
GOOGLE_CLIENT_SECRET=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
SESSION_SECRET=your-super-secret-session-key-here
CLIENT_URL=https://your-frontend-domain.com
PORT=5000
CLOUDINARY_CLOUD_NAME=dutdjalxr
CLOUDINARY_API_KEY=497926614658833
CLOUDINARY_API_SECRET=pqzjsZ8fWQPkNqWDYER_kd0LQRc
RAZORPAY_SECRET_KEY=JHB0B9xx6mTn8IHeFMUfe3I5
NODE_ENV=production
```

## Deployment Instructions

### Option 1: Render (Recommended)
1. Go to [render.com](https://render.com)
2. Connect your GitHub repository
3. Create a new Web Service
4. Set build command: `npm install`
5. Set start command: `npm start`
6. Add all environment variables
7. Deploy

### Option 2: Railway
1. Go to [railway.app](https://railway.app)
2. Connect GitHub repository
3. Add environment variables
4. Deploy automatically

### Option 3: Heroku
1. Install Heroku CLI
2. Run: `heroku create campuskart-backend`
3. Add environment variables: `heroku config:set MONGO_URI=...`
4. Deploy: `git push heroku main`
