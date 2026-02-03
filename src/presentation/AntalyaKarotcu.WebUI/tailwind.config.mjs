/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      colors: {
        primary: "#ff6600",
        "background-dark": "#1a1a1a",
      },
    },
  },
  plugins: [],
};
