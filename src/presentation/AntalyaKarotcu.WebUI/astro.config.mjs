// @ts-check

import mdx from "@astrojs/mdx";
import sitemap from "@astrojs/sitemap";
import { defineConfig } from "astro/config";

import tailwindcss from "@tailwindcss/vite";

// https://astro.build/config
export default defineConfig({
  site: "https://antalyakarotcu.com",
  integrations: [mdx(), sitemap()],
  redirects: {
    "/services": "/hizmetler",
    "/about": "/hakkimizda",
    "/contact": "/iletisim",
    "/gallery": "/galeri",
  },

  vite: {
    plugins: [
      tailwindcss(),
    ],
  },
});
