# CampusKart Frontend

## Build Commands

```bash
# Install dependencies
npm install

# Build for production
npm run build

# Preview production build
npm run preview
```

## Environment Variables

### Development (.env)
```
VITE_API_URL=http://localhost:5000
```

### Production (.env.production)
```
VITE_API_URL=https://your-backend-domain.com
```

## Deployment Instructions

### Option 1: Netlify (Recommended)
1. Build the project: `npm run build`
2. Go to [netlify.com](https://netlify.com)
3. Drag and drop the `dist` folder
4. Or connect GitHub repository
5. Set build command: `npm run build`
6. Set publish directory: `dist`
7. Add environment variable: `VITE_API_URL=https://your-backend-domain.com`

### Option 2: Vercel
1. Go to [vercel.com](https://vercel.com)
2. Connect GitHub repository
3. Set build command: `npm run build`
4. Set output directory: `dist`
5. Add environment variable: `VITE_API_URL=https://your-backend-domain.com`

### Option 3: GitHub Pages
1. Install: `npm install --save-dev gh-pages`
2. Add to package.json: `"homepage": "https://username.github.io/repository-name"`
3. Add scripts: `"predeploy": "npm run build", "deploy": "gh-pages -d dist"`
4. Run: `npm run deploy`

If you are developing a production application, we recommend using TypeScript with type-aware lint rules enabled. Check out the [TS template](https://github.com/vitejs/vite/tree/main/packages/create-vite/template-react-ts) for information on how to integrate TypeScript and [`typescript-eslint`](https://typescript-eslint.io) in your project.
