const { defineConfig } = require('vite');
const { resolve } = require('node:path');

module.exports = defineConfig({
  build: {
    rollupOptions: {
      input: {
        main: resolve(__dirname, 'index.html'),
        app: resolve(__dirname, 'app.html'),
        admin: resolve(__dirname, 'SurakshaProX-Admin-Panel.html')
      }
    }
  }
});
