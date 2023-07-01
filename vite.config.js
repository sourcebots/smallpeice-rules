import { defineConfig } from "vite";

export default defineConfig({
  plugins: [],
  root: "./src",
  base: "./",
  build: {
    outDir: "../dist",
    emptyOutDir: true,
    target: "es2015"
  }
});
