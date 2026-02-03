/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      colors: {
        "primary": "#ff6600",
        "background-light": "#f8f7f5",
        "background-dark": "#1a1a1a",
        "surface-dark": "#262626",
        "surface-darker": "#111111",
      },
      fontFamily: {
        "display": ["Space Grotesk", "sans-serif"]
      },
      backgroundImage: {
        'grid-pattern': "linear-gradient(to right, #333 1px, transparent 1px), linear-gradient(to bottom, #333 1px, transparent 1px)",
      }
    },
  },
  plugins: [],
};
