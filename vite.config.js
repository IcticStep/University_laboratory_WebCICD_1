import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

export default defineConfig({
  base: process.env.GITHUB_PAGES ? '/University_laboratory_WebCICD_1/' : '/',
  plugins: [react()],
});