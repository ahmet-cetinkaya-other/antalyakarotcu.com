import { getCollection } from "astro:content";
import rss from "@astrojs/rss";
import { SITE_DESCRIPTION, SITE_TITLE } from "../consts";

export async function GET(context) {
  const projects = await getCollection("projects");
  return rss({
    title: `${SITE_TITLE} - Projeler`,
    description: SITE_DESCRIPTION,
    site: context.site,
    items: projects.map((project) => ({
      title: project.data.title,
      description:
        project.data.description || project.body.substring(0, 160) + "...",
      pubDate:
        project.data.pubDate ||
        new Date(project.data.completedDate || Date.now()),
      link: `/galeri/`, // Projects don't have individual pages yet based on previous file exploration
    })),
  });
}
