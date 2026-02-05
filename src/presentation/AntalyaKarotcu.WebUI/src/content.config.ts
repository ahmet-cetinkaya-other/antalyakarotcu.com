import { defineCollection, z } from "astro:content";
import { glob } from "astro/loaders";


const services = defineCollection({
  loader: glob({ base: "./src/content/services", pattern: "**/*.{md,mdx}" }),
  schema: z.object({
    title: z.string(),
    description: z.string(),
    icon: z.string(), // Material Symbol name
    image: z.string().optional(),
    features: z.array(z.string()).optional(),
    technicalSpecs: z
      .array(
        z.object({
          label: z.string(),
          value: z.string(),
        }),
      )
      .optional(),
  }),
});

const projects = defineCollection({
  loader: glob({ base: "./src/content/projects", pattern: "**/*.{md,mdx}" }),
  schema: z.object({
    title: z.string(),
    category: z.string(),
    image: z.string(),
    stats: z
      .array(
        z.object({
          label: z.string(),
          value: z.string(),
        }),
      )
      .optional(),
    completedDate: z.string().optional(),
    pubDate: z.coerce.date().optional(),
  }),
});

export const collections = { services, projects };
