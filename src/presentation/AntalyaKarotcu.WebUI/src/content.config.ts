import { defineCollection, z } from "astro:content";
import { glob } from "astro/loaders";

const services = defineCollection({
  loader: glob({ base: "./src/content/services", pattern: "**/*.{md,mdx}" }),
  schema: ({ image }) =>
    z.object({
      title: z.string(),
      description: z.string(),
      icon: z.string(), // Material Symbol name
      image: image().optional(),
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

export const collections = { services };
